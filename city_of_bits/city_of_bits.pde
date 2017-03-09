int c, i, t, y;
void setup() {
  size(900, 500, P3D);
  frameRate(10);
}
void draw() {
  lights();
  background(0);
  for (i = 1; i<4096; i++) {
    y = i % 64;
    translate(y<1?-504:8, y<1?8:0);
    c=int(255*noise(t+y))&int(255*noise(t+i/64));
    fill(c);
    box(5, 5, c);
  }
  t++;
}