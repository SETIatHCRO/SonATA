# sonata-start-exoplanets-2beams-6567-6767-obs.tcl
#
# SSE seeker commands to start observing

# send out "taking the array" email
#sh echo "SonATA taking array. Observing with 3 beams" | mailx -s 'SonATA taking array for Kepler.' -r jrichards@seti.org ata-staff@seti.org

exec setAlarm ARM,sonata,Exoplanets

# connect to the backend server
tscope setup

# allow some setup time
sh sleep 20

act set candarch {confirmed} current 
act set comparedxs {off} current 
act set cwcohdonetimeoutfactor 0.700000000 current 
act set datacolltimeoutoffset 10 current 
act set delay 15 current 
act set diskfullerror 99.000000000 current 
act set diskfullwarn 95.000000000 current 
act set dut -0.359341000 current 
act set earthephem {earth.xyz} current 
act set emailactstat {off} current 
act set emailaddr {observing@seti.org} current 
act set freqinvert {never} current 
act set multitargetnulls {on} current 
act set nulldepth 7.000000000 current 
act set offactnulls {projection} current 
act set pointprimary {on} current 
act set prevactid 0 current 
act set primarybeampos {targetid} current 
act set primarydecdeg 0.000000000 current 
act set primaryrahours 0.000000000 current 
act set readytimeout 60 current 
act set rfiagelimit 7.000000000 current 
act set sigdetwait 2 current 
act set site {ATA} current 
act set targetbeam1 1 current 
act set targetbeam2 1 current 
act set targetbeam3 1 current 
act set targetbeam4 1 current 
act set targetbeam5 1 current 
act set targetbeam6 1 current 
act set targetprimary 1 current 
act set tscopetimeout 300 current 
act set type {target} current 
act set varerrorlower 1.000000000 current 
act set varerror {on} current 
act set varerrorupper 20000.000000000 current 
act set varwarnlower 8.000000000 current 
act set varwarn {on} current 
act set varwarnupper 100.000000000 current 
act set watchdogs {on} current 
db set host {sse100} current 
db set name {exoplanets6667mhz} current 
db set passwd {} current 
db set port 0 current 
db set usedb {on} current 
db set user {} current 
dx set badbandcwpathlim 250.000000000 current 
dx set badbandpulselim 300.000000000 current 
dx set badbandpulsetriplim 5000.000000000 current 
dx set bandwidth 1536 current 
dx set basedecay 0.899999976 current 
dx set baseerrormeanlower 300.000000000 current 
dx set baseerrormeanupper 15000.000000000 current 
dx set baseerror on current 
dx set baseerrorrange 15000.000000000 current 
dx set baseerrorstddev 100.000000000 current 
dx set baseinitaccum 20 current 
dx set baselines {on} current 
dx set baserep 20 current 
dx set basestats {on} current 
dx set basesubave 1 current 
dx set basewarnmeanlower 300.000000000 current 
dx set basewarnmeanupper 15000.000000000 current 
dx set basewarn on current 
dx set basewarnrange 10000.000000000 current 
dx set basewarnstddev 75.000000000 current 
dx set clustfreqtol 339.000000000 current 
dx set coherentdetlim 0.000000000 current 
dx set compamps {on} current 
dx set cwclustdeltafreq 2 current 
dx set cwthresh 0.000000000 current 
dx set daddres 4 current 
dx set daddthresh 6.5 current 
dx set datareqfreq 1420.800100000 current 
dx set datareqmaxcompampsubchan 12 max
dx set datareqmaxcompampsubchan 12
dx set datareqsubchan 1536 max
dx set datareqsubchan 975 current 
dx set datareqtype {subchan} current 
dx set length 94 current 
dx set manualbw {off} current 
dx set maxcand 8 current 
dx set maxdrifttol 1.000000000 current 
dx set maxpulsesperhf 1000 current 
dx set maxpulsespersubperhf 10 current 
dx set pulseclustdeltafreq 25 current 
dx set pulsedetect {on} current 
dx set pulsethresh 12.000000000 current 
dx set recentrfienable {on} current 
dx set recentrfimaskelemwidmin 1000.000000000 current 
dx set recentrfimasksizemax 4096 current 
dx set secondarycwthresh -18.000000000 current 
dx set secondarypfamargin 3.000000000 current 
dx set secondarytrainsignifthresh -17.000000000 current 
dx set singletthresh 100.000000000 current 
dx set trainsignifthresh -40.000000000 current 
dx set tripletthresh 48.000000000 current 
dx set zerodrifttol 0.007000000 current 
sched set autorisecutoff 10.000000000 current 
sched set beam1 {on} current 
sched set beam2 {on} current 
sched set beam3 {on} current 
sched set beam4 {off} current 
sched set beam5 {off} current 
sched set beam6 {off} current 
sched set beambandwidth 30.000000000 current 
#ADD NEW FREQ sched set beginfreq 6567.00 current 
sched set beginfreq 6567.00 current 
sched set catshigh {exoplanets,keplerHZ,exokepler} current 
sched set catshighmaxcounts 20000 current 
sched set catslow {habcat,tycho2subset,tycho2remainder} current 
sched set checktargets {off} current 
sched set comcalinterval 60.000000000 current 
sched set comcallength 2.000000000 current 
sched set comcal {off} current 
sched set declowerlimit -90.000000000 current 
sched set decupperlimit 90.000000000 current 
sched set emailaddr {observing@seti.org} current 
sched set emailstratfail {on} current 
# ADD NEW FREQ sched set endfreq 6767.000000000 current 
sched set endfreq 6767.000000000 current 
sched set followupmode {auto} current 
sched set followup {on} current 
sched set geosatavoid 5.000000000 current 
sched set maxdistly 225.000000000 current 
sched set maxfailures 3 current 
sched set minfollowups 12 current 
sched set mindxbw 20.000000000 current 
sched set mintargetsep 2.500000000 current 
#sched set moonavoid 10.000000000 current 
sched set moonavoid 2.500000000 current 
sched set multitarget {on} current 
sched set dxoverlap 0.001000000 current 
sched set dxround 0.100000000 current 
sched set dxtune {range} current 
sched set dxtunetol 0.010000000 current 
sched set pipe {on} current 
sched set primaryidcutoff 120 current 
sched set repeatstrat 1 current 
sched set restartpause 30 current 
sched set rftune {auto} current 
sched set rotateidsinterval 60.000000000 current 
sched set rotateids {off} current 
sched set stopstratfail {off} current 
sched set sunavoid 55.000000000 current 
sched set target {auto} current 
sched set targetavailactsetup 60 current 
sched set targetmerit {catalog,meridian,completelyobs,timeleft} current 
sched set targetwait {on} current 
#sched set tasks {autoselectants,prepants,bfreset,bfautoatten,bfinit,caldelay,calphase,calfreq,obs} current 
sched set tasks {prepants,bfreset,bfautoatten,bfinit,caldelay,calphase,calfreq,obs} current 
sched set tscopemaxfailures 10 current 
sched set tscopereadypause 120 current 
sched set zenithavoid 5.000000000 current 
tscope set antsmaxsefd 20000 current 

tscope set antlistsource param
#tscope set antlistsource {antgroup} current 
#tscope set antsprimary {antgroup} current 
#tscope set antsxpol {antgroup} current 
#tscope set antsypol {antgroup} current 
tscope set beamsize 348.000000000 current 
tscope set calcycles 2 current 
tscope set caltime 90 current 
tscope set caltype {delay} current 
tscope set centertuneoffset 0.000000000 current 
tscope set primaryfov 3.500000000 current 
tscope set sitehoriz 16.5 current 
tscope set sitelat 40.817361111 current 
tscope set sitelong 121.471802778 current 
tscope set sitename {ATA} current 
tscope set tuneoffset 0.000000000 current 
tscope set tuninga 1420.000000000 current 
tscope set tuningb 1420.000000000 current 
tscope set tuningc 1420.000000000 current 
tscope set tuningd 1420.000000000 current 


source antenna-list.tcl

# begin observing

start tasks
