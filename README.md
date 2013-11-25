PatchesPlots
============

A set of basic Mathematica plotting wrappers. These are not nearly as customizable as the native plotting function,
but they are significantly more user friendly and they will work 9 times out of 10

Importing
---------

patchesPlots is a Mathematica module it is imported by putting the following line at the beginning of the file:
       
     <<"(*full path to patchesPlots.m*)"

Use
---

###patchesPlot

patchesPlot is designed to plot any piecewise continuous function.
It is called via:

    patchesPlot[function,{var,lowerBound,upperBound},plotTitle,{xLabel,yLabel}]
    
for example

    patchesPlot[x^2,{x,-1,1},"Basic parabola",{"x","y"}]

will produce a plot of x^2 from -1 to 1 with the title "Basic parabola" and labels on the x and y axes of "x" and "y" respectively  

    
###patchesListPlot

patchesListPlot is designed to plot discrete data.
it is called via:

    patchesListPlot[data,plotTitle,{xLabel,yLabel}]
    
This function expects data in the form of a list of points for example passing:

    {{1,3},{2,0}}

into data would draw two points: one at (1,3) and another at (2,0)
    
###patchesErrorPlot

Arguably the most useful of the piloting utilities in this package it terms of time saved, this method will generate 
a plot of discrete points with associated error bars, it is called via:

    patchesListPlot[data,plotTitle,{xLabel,yLabel}]
    
The data in this case is now the list of either the 3-tuples or 4-tuples of (x,y,yError[,xError]) (with the xError being
optional) for example

    {{1,2,3,4}}
    
would put a point at (1,2), with a plus or minus error of 3 in the y direction,
and a plus or minus 4 error in the x direction.
Currently there is no support for drawing asymmetric error bars.

####IMPORTANT NOTE: 
if you wish to use an xError you must provide a 4-tuple for every value in data 
