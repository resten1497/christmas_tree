open System;
open System.Numerics

let rec genString (cha:String) (g:int) (c:int) (s:String)=
    if c = g then s
    else genString cha g (c+1) (s + cha)

let renderline ((space,leaf):int*int)= 
    ""
    |>genString " " space 0
    |>genString "*" leaf 0
    |>printfn "%s"

let treeLeafChunk g c =
    renderline (g-c,c)
    renderline (g-c-1,c+2)
    renderline (g-c-2,c+4)

let rec genTreeTrunks g l c =
    if c = l then ()
    else
        renderline (g/2,2)
        genTreeTrunks g l (c+1)

let rec genTree g c =
    if c+2 = g then genTreeTrunks g 5 0
    else 
        treeLeafChunk g c
        genTree (g+1) (c+2)

[<EntryPoint>]
let main argv = 
    genTree 9 2
    0