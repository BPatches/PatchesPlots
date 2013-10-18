(* ::Package:: *)

Needs["ErrorBarPlots`"]


patchesPlot[function_,bound_,plotTitle_,axisTitles_]:=Plot[function,bound,
PlotLabel->Style[plotTitle,FontSize->19,FontSlant->"Italic"],
Axes->False,
Frame->{{True,False},{True,False}},
FrameLabel->{Style[axisTitles[[1]],FontSize->17],Style[axisTitles[[2]],FontSize->17]},
ImageSize->Large,
BaseStyle->{FontSize->12}]


patchesListPlot[data_,plotTitle_,axisTitles_]:=Module[{sizeOfPoint},
sizeOfPoint=If[Length[data]>7,If[Length[data]>14,Tiny,Small],Medium];
ListPlot[data,
PlotLabel->Style[plotTitle,FontSize->19,FontSlant->"Italic"],
Axes->False,
Frame->{{True,False},{True,False}},
FrameLabel->{Style[axisTitles[[1]],FontSize->17],Style[axisTitles[[2]],FontSize->17]},
ImageSize->Large,
PlotMarkers->{Automatic,sizeOfPoint},
BaseStyle->{FontSize->12}]
]


patchesErrorPlot[data_,plotTitle_,axisTitles_]:=Module[{},
	If[Length[data[[1]]]==3,
		ErrorListPlot[Thread[{Thread[{data[[All,1]],data[[All,2]]}],ErrorBar/@data[[All,3]]}],
			PlotLabel->Style[plotTitle,FontSize->19,FontSlant->"Italic"],
			Axes->False,
			Frame->{{True,False},{True,False}},
			FrameLabel->{Style[axisTitles[[1]],FontSize->17],Style[axisTitles[[2]],FontSize->17]},
			ImageSize->Large,
			BaseStyle->{FontSize->12},PlotRange->All]
		,(*Else*)
		ErrorListPlot[Thread[{Thread[{data[[All,1]],data[[All,2]]}],ErrorBar[#[[2]],#[[1]]]&/@Thread[{data[[All,3]],data[[All,4]]}]}],
			PlotLabel->Style[plotTitle,FontSize->19,FontSlant->"Italic"],
			Axes->False,
			Frame->{{True,False},{True,False}},
			FrameLabel->{Style[axisTitles[[1]],FontSize->17],Style[axisTitles[[2]],FontSize->17]},
			ImageSize->Large,
			BaseStyle->{FontSize->12},PlotRange->All
		]
	]
]
