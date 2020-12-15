def christmasTree: Unit = {
  val height = 10
  def draw(i: Int): Unit = {
    if(i < height) {
      val stars = Range(0, i+1).map(_ => "*").mkString(" ") 
      println((" " * (height - i)) +stars)       
      draw(i + 1)
    }
  }
  draw(0)
  println("-" * (2 * height + 1))
  println(" " * (height - 7) + "MERRY CHRISTMAS")
  println("-" * (2 * height + 1))
  Range(0, height / 4).foreach(_ => println(" " * (height - 1) + "| |"))
  println(" " * (height - 1) + "---")
}

christmasTree
