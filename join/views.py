from django.shortcuts import redirect, render
from offer.models import offer_ride
import requests,math
from .models import p_rides
from signup.models import users 
from django.contrib import messages
from datetime import datetime


# Create your views here.


def join(request):
    return render(request,'join-ride.html')

def find(request):
    try:            #check if cookies are present
        t_locs=(request.COOKIES['loc'])[1:-1].split(', ') ####Storing cookies
        t_ava=(request.COOKIES['ava'])[2:-2].split(", '")                 #### temorarily in variable as list before conversion into integers
        final,locs,ava=[],[],[]
        for x in t_locs:locs.append(int(x))     #### Converting all contents of cookies
        for x in t_ava:ava.append(int(x))                                        #### into integers
        if request.user.pk in locs:
            del ava[locs.index(request.user.pk)]
            locs.remove(request.user.pk)
        for i,loc in enumerate(locs):
            final.append((users.objects.get(pk=loc),ava[i]))
        response=render(request,'location2.html',{'result':final})
        response.delete_cookie('loc')
        response.delete_cookie('ava')
        return response
    except:    
        now=datetime.now()
        req=datetime.strptime(request.POST['date']+' '+request.POST['time'],r'%Y-%m-%d %H:%M')
        if ((req-now).total_seconds()/3600)>2:
            
            new=offer_ride()                #input by user requesting ride
            new.source=request.POST['from']
            new.dest=request.POST['to']
            new.time=request.POST['time']
            new.date=request.POST['date']
            new.cap=request.POST['capacity']
            new.slon=float(request.POST['slon'])
            new.slat=float(request.POST['slat'])
            new.dlon=float(request.POST['dlon'])
            new.dlat=float(request.POST['dlat'])
            if request.user.is_authenticated:
                required=offer_ride.objects.filter(time__lt=new.time,date=new.date,cap__gte=new.cap).exclude(offer_maker=request.user.pk) #primary filter for date, time and capacity 
            else:
                required=offer_ride.objects.filter(time__lt=new.time,date=new.date,cap__gte=new.cap)
            loc=[] #final required list containing primary id of ride owners
            ava=[] #ids of rides available
            if required.exists():
                bound1=boundingBox(new.slat,new.slon,5) #bound for source
                bound2=boundingBox(new.dlat,new.dlon,5) #bound for destination
                
                for x in required: #checking for each output from primary filter
                    if ((x.slon-x.dlon)*(new.slon-new.dlon))>0:  #confirm if the ride is in direction of requested one
                        headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safari/537.36', "Upgrade-Insecure-Requests": "1","DNT": "1","Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8","Accept-Language": "en-US,en;q=0.5","Accept-Encoding": "gzip, deflate"}
                        para={'point':[str(x.slat)+','+str(x.slon),
                        str(x.dlat)+','+str(x.dlon)],
                        'vehicle':'car',
                        'locale':'en',
                        'key':'1a400bad-3811-4e34-b8e1-459a0b9fc5cb',
                        'points_encoded':'false'}
                        
                        r=requests.get('https://graphhopper.com/api/1/route',params=para,headers=headers,timeout=10)
                        r=r.json()['paths'][0]['points']['coordinates']
                        ns=''
                        nd=''
                        for e in r: #checking bound for source
                            if e[0]<=bound1[3] and e[0]>=bound1[1] and e[1]<=bound1[2] and e[1]>=bound1[0]:
                                ns=e #new closest source
                                break
                        
                        
                        if ns:  #check if source is pick point
                            for e in r: #checking bound for destination
                                if e[0]<=bound2[3] and e[0]>=bound2[1] and e[1]<=bound2[2] and e[1]>=bound2[0]:
                                    nd=e #new closest destination
                                    break
                                
                        if nd:        
                            old_rides=p_rides.objects.filter(ride_num=x.pk)

                            

                            if old_rides.exists():
                                status=1    #check if selected ride is already shared
                                for t in old_rides:
                                    sub_start=r.index([t.slon,t.slat])+1 #subarray for sub routes in ride
                                    sub_end=r.index([t.dlon,t.dlat])-1
                                    sub_arr=r[sub_start:sub_end+1]
                                    in_cap=int(new.cap)
                                    
                                    if (ns in sub_arr and (x.cap-t.cap)<in_cap) or (nd in sub_arr and (x.cap-t.cap)<in_cap): #check for capacity
                                        status=0
                                        break
                                    else:  #check if t ride is between source and destination of ride and exceeding capacity
                                        t_index1=r.index(ns) 
                                        t_index2=r.index(nd)
                                        if r[sub_start] in r[t_index1:t_index2+1] and r[sub_end] in r[t_index1:t_index2+1] and (x.cap-t.cap)<in_cap:
                                            status=0
                                            break   

                                        
                                if status: 
                                    loc.append(x.offer_maker)
                                    ava.append(str(x.pk))
                            else:
                                
                                    loc.append(x.offer_maker) 
                                    ava.append(str(x.pk)) 
                                
            final=[]      
                            
            for i,locs in enumerate(loc):
                final.append((users.objects.get(pk=locs),ava[i]))

            
            
            if loc:
                request.session['temp']=new.source+'%'+new.dest+'%'+new.cap+'%'+str(ns[0])+'%'+str(ns[1])+'%'+str(nd[0])+'%'+str(nd[1])
                request.session['ava_rides']=','.join(ava)

            response=render(request,'location2.html',{'result':final})    
            if not request.user.is_authenticated:     #if user is not logged in store cookies for available rides
                response.set_cookie('loc',loc)
                response.set_cookie('ava',ava)        
                
            return response
        
        else:
            messages.success(request,'Rides can only be booked before two hours')
            return render(request,'join-ride.html')    

def deg2rad(degrees):
    return math.pi*degrees/180.0
# radians to degrees
def rad2deg(radians):
    return 180.0*radians/math.pi

# Semi-axes of WGS-84 geoidal reference
WGS84_a = 6378137.0  # Major semiaxis [m]
WGS84_b = 6356752.3  # Minor semiaxis [m]

# Earth radius at a given latitude, according to the WGS-84 ellipsoid [m]
def WGS84EarthRadius(lat):
    # http://en.wikipedia.org/wiki/Earth_radius
    An = WGS84_a*WGS84_a * math.cos(lat)
    Bn = WGS84_b*WGS84_b * math.sin(lat)
    Ad = WGS84_a * math.cos(lat)
    Bd = WGS84_b * math.sin(lat)
    return math.sqrt( (An*An + Bn*Bn)/(Ad*Ad + Bd*Bd) )

# Bounding box surrounding the point at given coordinates,
# assuming local approximation of Earth surface as a sphere
# of radius given by WGS84
def boundingBox(latitudeInDegrees, longitudeInDegrees, halfSideInKm):
    lat = deg2rad(latitudeInDegrees)
    lon = deg2rad(longitudeInDegrees)
    halfSide = 1000*halfSideInKm

    # Radius of Earth at given latitude
    radius = WGS84EarthRadius(lat)
    # Radius of the parallel at given latitude
    pradius = radius*math.cos(lat)

    latMin = lat - halfSide/radius
    latMax = lat + halfSide/radius
    lonMin = lon - halfSide/pradius
    lonMax = lon + halfSide/pradius

    return [rad2deg(latMin), rad2deg(lonMin), rad2deg(latMax), rad2deg(lonMax)]
             

def join_ride(request,ride_id): #saving a new ride by taker
    if not request.user.is_authenticated:    #if user is not logged in redirect them to login page
        return redirect('/login.html/join-ride/find')
    else:
        new=p_rides()
        if ride_id in request.session['ava_rides'].split(','):
            new.ride_num= int(ride_id)
        temp=request.session['temp'].split('%')   
        new.source=temp[0]
        new.dest=temp[1]
        new.cap=temp[2]
        new.slon=float(temp[3])
        new.slat=float(temp[4])
        new.dlon=float(temp[5])
        new.dlat=float(temp[6])
        
        new.ride_taker=request.user.pk
        new.save()
        messages.success(request,'Your ride is waiting for approval')
        del request.session['temp']
        del request.session['ava_rides']
        return redirect('/')



    

    