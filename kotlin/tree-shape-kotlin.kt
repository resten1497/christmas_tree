                   //★\\           
                   class
                 XmasTree (
               val width: Int,
             val height: Int) {
           fun Triangle(w: Int, h
          : Int): String {val left
         = "/";val right = "\\";val
        sharp = "#"; val space = " ";
     var res = ""; for (i in 1..h) { //
    res +="${space.repeat(h-i)}$left${sharp
   .repeat(2*i+1)}$right\n" }; return res} //
             fun printTree() { val
          space=" ".repeat(width);var
         res = "$space★\n$space/#\\\n"
       val root = "${space}III\n".repeat(
       2) ; for (i in 1..height) { val a = 
     (if (i==1) 1 else 0); res += Triangle(
    width, height-a) .split("\n").filter { v 
   -> v != "" }.map { v -> " ".repeat(a) + v }
 .joinToString("\n")+"\n" }; println(res+root)}}
                  fun main(){
                  val xmas :
                  XmasTree =
                  XmasTree(3,
                  3); xmas .
                  printTree(
                  )}/*Steve28
                  2020 Happy-
                  Xmas :)  */
