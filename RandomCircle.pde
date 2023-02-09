class RandomCircle {
    float xPos, yPos, w, h;

    RandomCircle(float screenW, float screenH) {
        w = random(10, 200);
        h = w;
        xPos = random(w, screenW-w);
        yPos = random(h, screenH-h);
    }

    void display() {
        fill(255,155,50);
        ellipse(xPos, yPos, w, h);
    }
}