PatchesPlots
============

A set of basic mathmatica plotting wrappers. These are not nearly as customizable as the native plotting function,
but they are significantly more user friendly and they will work 9 times out of 10

Use
---

###patchesPlot

patchesPlot is designed to plot any piecewise continuous function.
It is called:

    patchesPlot[function,{var,lowerBound,upperBound},plotTitle,{xLabel,yLabel}]
    
###patchesListPlot

patchesListPlot is designed to plot descrete data.
it is called via:

    patchesListPlot[data,plotTitle,{xLabel,yLabel}]
    
This function expects data in the form of a list of points for example:

    {{1,3},{2,0}}

would draw two points one at (1,3) and another at (2,0)
    
###patchesErrorPlot

Arguably the most useful of the ploting utilities in this package it terms of time saved, this method will generate 
a plot of descrete points with associated error bars, it is called via:

    patchesListPlot[data,plotTitle,{xLabel,yLabel}]
    
The data in this case is now the list of either the 3-tuples or 4-tuples of (x,y,yError[,xError]) (with the xError being
optional) 

####IMPORTANT NOTE: 
if you wish to use an xError you must privide a 4-tuple for every value in data 
