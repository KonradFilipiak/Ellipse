float r = 300;

float pointX;
float pointY;

ArrayList<Line> lines = new ArrayList<Line>();

int iterator = 0;

//********************************************************************************************

void setup() {
  size(800, 800);
  do {
    pointX = random(-r, r);
    pointY = random(-r, r);
  } while (sqrt(pointX * pointX + pointY * pointY) >= r);

  for (float i = 0; i <= 2; i += 0.005) {
    lines.add(new Line(pointX, pointY, r * cos(i * PI), r * sin(i * PI)));
  }
}

void draw() {
  background(0);
  translate(height / 2, width / 2);

  drawCircle();
  drawPoints();
  showLines();
  if (iterator < lines.size()) {
    rotateAndColorLine(iterator);
    iterator++;
  } else {
    noLoop();
  }
}

//********************************************************************************************

void drawCircle() {
  stroke(255);
  noFill();
  circle(0, 0, r * 2 );
}

void drawPoints() {
  fill(255);
  circle(pointX, pointY, 5);
  circle(0, 0, 5);
}

void showLines() {
  for (Line l : lines) {
    l.show();
  }
}

void rotateAndColorLine(int iterator) {
  Line line = lines.get(iterator);
  line.rotateBy(PI / 2);
  line.setRGB(iterator % 255, iterator * 4 % 255, iterator * 5 % 255);
}
