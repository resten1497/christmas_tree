Imports System

Public Class ChristmasTree
	Public Shared Sub Main()
	
		Dim TopMaxCount, TopMaxHeight, BottomMaxWidth, BottomMaxHeight As Integer
		
		TopMaxCount	= 5
		TopMaxHeight	= 3
		BottomMaxWidth 	= 5
		BottomMaxHeight	= 4
		
		For TopCount As Integer = 1 To TopMaxCount
			For TopHeight As Integer = 1 To TopMaxHeight
				Dim TopLeftMargin = StrDup((TopMaxCount - TopCount) + TopMaxHeight - TopHeight, " ")
				Dim TopLine = TopLeftMargin + StrDup((TopCount + TopHeight - 1) * 2 - 1, "*")
				
				Console.WriteLine(TopLine)
			Next
		Next
		
		Dim BottomLeftMargin = StrDup(TopMaxCount + TopMaxHeight - CInt(Int(((BottomMaxWidth - 1) / 2))) - 2, " ")
		Dim BottomLine = BottomLeftMargin + StrDup(BottomMaxWidth, "#")
		
		For BottomHeight As Integer = 1 To BottomMaxHeight
			Console.WriteLine(BottomLine)
		Next
		
	End Sub
End Class
