(* ::Package:: *)

CreateDeployedNotebook[expr_,title_:None,description_:None,status_:None]:=

Module[{dockedCell=If[description===None,None,Cell[BoxData[ToBoxes[description]],"DockedCell"]]},
	CreateDocument[{expr},
	WindowElements->{"VerticalScrollBar", "HorizontalScrollBar", "StatusArea", "MagnificationPopUp"},
	WindowSize->Small,
	WindowTitle->ToString[title],
	Editable->False,
	Selectable->True,
	CellOpen->True,
	ShowCellBracket->False,
	Background->White,
	DockedCells->If[description===None,None,Cell[BoxData[ToBoxes[description]],"DockedCell"]],
	Saveable->False,
	WindowStatusArea->status,
	Deployed->True
]

]
