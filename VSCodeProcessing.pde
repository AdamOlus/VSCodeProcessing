float x;
ArrayList<RandomCircle> circles;
void setup() {
    size(600,600);
    x =-  50;
    circles = new ArrayList<RandomCircle>();
}

void draw() {
    background(0);
    fill(0,255,0);
    ellipse(x,300,100,100);
    x += 10;
    if (x >= width + 50) {
        x = -50;
    }
    
    for (int i = circles.size() - 1;i>= 0;i--) {
        circles.get(i).display();
    }
}

void mouseReleased() {
    if (mouseButton == LEFT) {
        circles.add(new RandomCircle(width, height));
    }
    if (mouseButton == RIGHT) {
        if (circles.size() > 0) {
            circles.remove(0);
        }
    }
}