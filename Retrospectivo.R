library(r4ss)

mydir <- "c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/mod1/"

SS_doRetro(masterdir=mydir, oldsubdir="", newsubdir="retrospectives", years=0:-5)



retroModels <- SSgetoutput(dirvec=file.path(mydir, "retrospectives",paste("retro",0:-5,sep="")))

retroSummary <- SSsummarize(retroModels)
endyrvec <- retroSummary$endyrs + 0:-5

dc='c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/mod1/comparador/'
SSplotComparisons(retroSummary, endyrvec=endyrvec, legendlabels=paste("Data",0:-5,"years"),plot = TRUE,
print = TRUE, png = TRUE, models = "all",plotdir = dc)





# retrospective analyses
#SS_doRetro(masterdir=mydir, oldsubdir="", newsubdir="retrospectives", years=0:-5)



#SSplotComparisons(retroSummary, endyrvec=endyrvec, legendlabels=paste("Data",0:-5,"years"))

