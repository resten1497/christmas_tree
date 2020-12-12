var Bbissung = "+"
var Bbasung = "*"

fun main(args: Array<String>){
    var UpTreeString = ""
    var DownTreeString = ""
    var Stem = ""
    var TreeStem = "  " + Bbissung + Bbasung + Bbissung +  "\n"
    for(i in 0..3){
        var Space = ""
        var Start = Bbasung

        for(j in 0 until 3-i)
            Space += " "
        for(j in 0 until i)
            Start += Bbasung + Bbasung 

            UpTreeString += Space + Start + "\n"
        if(i < 2)
            Stem += TreeStem
        else
            DownTreeString += Space + Start + "\n"

    }   

    println(UpTreeString + DownTreeString + Stem)
}
