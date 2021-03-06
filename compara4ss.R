#-----------------------------
# Para mas informacion de r4ss
# https://github.com/r4ss/r4ss
# ?r4ss
#-----------------------------

library(r4ss)
rm(list=ls()) 
WD<- getwd() 
setwd(WD)     


# directories where models were run need to be defined

caso1 <- 'c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/caso1/'
caso2 <- 'c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/caso2/'
caso3 <- 'c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/caso3/'
caso4 <- 'c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/caso4/'
caso5 <- 'c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/caso5/'
caso6 <- 'c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/caso6/'
caso7 <- 'c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/base/'
dc='c:/CEGM/ACTIVIDADES 2020/SS3uw/materialcurso/merlumod/compara/'

# read two models
mod1 <- SS_output(dir=caso1)
mod2 <- SS_output(dir=caso2)
mod3 <- SS_output(dir=caso3)
mod4 <- SS_output(dir=caso4)
mod5 <- SS_output(dir=caso5)
mod6 <- SS_output(dir=caso6)
mod7 <- SS_output(dir=caso7)



# create list summarizing model results
mod.sum <- SSsummarize(list(mod1))


SSplotPars(replist, xlab = "Parameter value", ylab = "Density",
showmle = TRUE, showpost = TRUE, showprior = TRUE,
showinit = TRUE, showdev = FALSE, showlegend = TRUE,
fitrange = FALSE, xaxs = "i", xlim = NULL, ylim = NULL,
verbose = TRUE, nrows = 3, ncols = 3, ltyvec = c(1, 1, 3, 4),
colvec = c("blue", "red", "black", "gray60", rgb(0, 0, 0, 0.5)),
new = TRUE, add = FALSE, pdf = FALSE, pwidth = 6.5,
pheight = 5, punits = "in", ptsize = 10, returntable = FALSE,
strings = c(), exact = FALSE, newheaders = NULL)


# Tablas de likelihood
SStableComparisons(mod.sum)

# Hacer figuras de comparaciones
#SSplotComparisons(mod.sum)

SSplotComparisons(mod.sum, subplots = 1:20, plot = TRUE,
print = TRUE, png = TRUE, models = "all",
endyrvec = "default", indexfleets = NULL, indexUncertainty = FALSE,
indexQlabel = TRUE, indexQdigits = 4, indexSEvec = "default",
indexPlotEach = FALSE, labels = c("Year", "Spawning biomass (t)",
"Fraction of unfished", "Age-0 recruits (1,000s)",
"Recruitment deviations", "Index", "Log index", "1 - SPR", "Density",
"Management target", "Minimum stock size threshold", "Spawning output",
"Harvest rate"), col = NULL, shadecol = NULL, pch = NULL,
lty = 1, lwd = 2, spacepoints = 10, staggerpoints = 1,
initpoint = 0, tickEndYr = TRUE, shadeForecast = TRUE,
xlim = "default", ylimAdj = 1.05, xaxs = "i", yaxs = "i",
type = "o", uncertainty = TRUE, shadealpha = 0.1, legend = TRUE,
legendlabels = "default", legendloc = "topright",
legendorder = "default", legendncol = 1, sprtarg = NULL,
btarg = NULL, minbthresh = NULL, pwidth = 6.5, pheight = 5,
punits = "in", res = 300, ptsize = 10, cex.main = 1,
plotdir = dc, filenameprefix = "", densitynames = c("SSB_Virgin",
"R0"), densityxlabs = "default", rescale = TRUE, densityscalex = 1,
densityscaley = 1, densityadjust = 1, densitysymbols = TRUE,
densitytails = TRUE, densitymiddle = FALSE, densitylwd = 1,
fix0 = TRUE, new = TRUE, add = FALSE, par = list(mar = c(5, 4, 1,
1) + 0.1), verbose = TRUE, mcmcVec = FALSE,
show_equilibrium = TRUE)