import java.awt.*;

public class MyTree extends Frame {
    public MyTree() {
        super();
        this.init();
        this.start();
        this.setSize(500, 500);
        this.setVisible(true);
    }

    private void init() {
        this.setLayout(new BorderLayout());
        Panel p = new Panel(new FlowLayout());
    }

    private void start() {

    }

    public void paint(Graphics g) {
        g.setColor(Color.GREEN);

        int[] triangle1X = {250, 300, 200};
        int[] triangle1Y = {100, 200, 200};
        g.fillPolygon(triangle1X, triangle1Y, 3);

        int[] triangle2X = {250, 300, 200};
        int[] triangle2Y = {160, 260, 260};
        g.fillPolygon(triangle2X, triangle2Y, 3);

        g.setColor(new Color(0x80604D));
        g.fillRect(230, 260, 40, 60);

        g.setColor(Color.YELLOW);
        int[] starX = {250,235,200,220,220,250,280,270,300,265};
        int[] starY = {30,60,70,95,130,115,130,95,70,60};
        g.fillPolygon(starX, starY,10);

    }

    public static void main(String[] args) {
        MyTree myTree = new MyTree();
    }
}