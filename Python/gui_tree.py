import turtle


def main():
    window = turtle.Screen()
    my_turtle = turtle.Turtle()
    screen = my_turtle.getscreen()
    screen.title("Merry Christmas")
    screen.bgcolor("#E731CE ")

    # drawing the tree
    my_turtle.color("green")
    my_turtle.pensize(5)
    my_turtle.begin_fill()

    # this is the  right half of the tree
    my_turtle.forward(100)
    my_turtle.left(150)
    my_turtle.forward(90)
    my_turtle.right(150)
    my_turtle.forward(60)
    my_turtle.left(150)
    my_turtle.forward(60)
    my_turtle.right(150)
    my_turtle.forward(40)
    my_turtle.left(150)
    my_turtle.forward(100)

    # this is the left half of the tree
    my_turtle.left(60)
    my_turtle.forward(100)
    my_turtle.left(150)
    my_turtle.forward(40)
    my_turtle.right(150)
    my_turtle.forward(60)
    my_turtle.left(150)
    my_turtle.forward(60)
    my_turtle.right(150)
    my_turtle.forward(90)
    my_turtle.left(150)
    my_turtle.forward(133)
    my_turtle.end_fill()

    # create the trunk of the tree
    my_turtle.color("red")
    my_turtle.pensize(1)
    my_turtle.begin_fill()
    my_turtle.right(90)
    my_turtle.forward(70)
    my_turtle.right(90)
    my_turtle.forward(33)
    my_turtle.right(90)
    my_turtle.forward(70)
    my_turtle.end_fill()

    # create star at the top of tree
    my_turtle.speed(1)
    my_turtle.penup()
    my_turtle.color('yellow')
    my_turtle.goto(-28, 110)
    my_turtle.begin_fill()
    my_turtle.pendown()
    for i in range(5):
        my_turtle.forward(40)
        my_turtle.right(144)
    my_turtle.end_fill()


    # create different color balls
    def ball(trt, x, y, size=10, colour="red"):
        trt.penup()
        trt.setpos(x, y)
        trt.color(colour)
        trt.begin_fill()
        trt.pendown()
        trt.circle(size)
        trt.end_fill()

    ball(my_turtle, 95, -5)
    ball(my_turtle, -110, -5)
    ball(my_turtle, 80, 40, size=7, colour="yellow")
    ball(my_turtle, -98, 40, size=7, colour="yellow")
    ball(my_turtle, 70, 70, size=5)
    ball(my_turtle, -93, 70, size=5)


    def create_circle(turtle, x, y, radius, color):
        my_turtle.penup()
        my_turtle.color(color)
        my_turtle.fillcolor(color)
        my_turtle.goto(x, y)
        my_turtle.pendown()
        my_turtle.begin_fill()
        my_turtle.circle(radius)
        my_turtle.end_fill()

    # create moon in sky
    create_circle(my_turtle, 230, 180, 60, "white")

    # overlap with full circle of BG color
    create_circle(my_turtle, 210, 180, 60, "#E731CE")


    # print greeting message
    my_turtle.speed(1)
    my_turtle.penup()
    msg = "Merry Christmas, 메리크리스마스!"
    my_turtle.goto(0, -200)  # y is in minus because tree trunk was below x axis
    my_turtle.color("white")
    my_turtle.pendown()
    my_turtle.write(msg, move=False, align="center", font=("Arial", 20, "bold"))

    my_turtle.hideturtle()
    window.mainloop()


if __name__ == "__main__":
    main()
