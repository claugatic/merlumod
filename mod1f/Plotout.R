#-----------------------------
# Para mas informacion de r4ss
# https://github.com/r4ss/r4ss
# ?r4ss
#-----------------------------

library(r4ss)
rm(list=ls()) 
WD<- getwd() 
setwd(WD)     
repfile <- SS_output(dir=WD)

DoProjectPlots(dirn="c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/mod1f/", Plots=1:8,
Options=c(1,2,3,4,5,9), LegLoc="bottomleft")


TSCplot(repfile)

a=SS_readforecast(file = "forecast.ss", Nfleets, Nareas, nseas,
version = "3.30", readAll = FALSE, verbose = TRUE)

SS_ForeCatch(repfile, # object created by SS_output for low state
yrs=2021:2030, # forecast period after fixed ACL years
average=T) # use values forecast in SS, not historic catch


SS_plots(repfile)





SSMethod.TA1.8(repfile, "age", 3)

SS_tune_comps(repfile, fleets = "all", option = "Francis",
digits = 6, write = TRUE)





SS_plots(tmp, uncertainty=T,datplot = T, png=T, aalresids = T,btarg=0.4,
         minbthresh=0.2,  forecast=T)