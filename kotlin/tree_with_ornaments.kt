const val space = " "
const val leaf = "*"
const val ornament = "o"
const val star = "★"
const val trunk = "|"

fun main() {
    merryChristmas()
}

fun merryChristmas(){
    for (i in 1..7) {
        for (k in 1..6 - i + 1) {
            print(space)
        }
        for (j in 1..i) {
            when {
                i == 1 -> print(star)
                i%2==0 -> print("$ornament$space")
                else -> print("$leaf$space")
            }
        }
        println()
    }
    for (i in 1..4) {
        for (k in 1..5) {
            print(space)
        }
        for (j in 1..2) {
            print("$trunk$space")
        }
        println()
    }
    println()
    println("Merry Christmas")
}