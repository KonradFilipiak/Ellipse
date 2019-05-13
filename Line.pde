class Line {
  float ax;
  float ay;
  float bx;
  float by;

  private int red = 255;
  private int green = 255;
  private int blue = 255;
  private int alpha = 100;

  public Line(float ax, float ay, float bx, float by) {
    this.ax = ax;
    this.ay = ay;
    this.bx = bx;
    this.by = by;
  }
  
  //********************************************************************************************
 
  public void show() {
    colorMode(RGB);
    stroke(red, green, blue, alpha);
    line(ax, ay, bx, by);
  }

  public void rotateBy(float angle) {
    float middleX = (ax + bx) / 2;
    float middleY = (ay + by) / 2;

    float ax = (this.ax - middleX) * cos(angle) - (this.ay - middleY) * sin(angle) + middleX;
    float ay = (this.ax - middleX) * sin(angle) + (this.ay - middleY) * cos(angle) + middleY;
    float bx = (this.bx - middleX) * cos(angle) - (this.by - middleY) * sin(angle) + middleX;
    float by = (this.bx - middleX) * sin(angle) + (this.by - middleY) * cos(angle) + middleY;

    this.ax = ax;
    this.ay = ay;
    this.bx = bx;
    this.by = by;
  }
  
//********************************************************************************************

  public void setRGB(int red, int green, int blue) {
    setRed(red);
    setGreen(green);
    setBlue(blue);
  }

  public void setRed(int red) {
    if (red > 255) {
      red = 255;
    } else if (red < 0) {
      red = 0;
    }

    this.red = red;
  }

  public void setGreen(int green) {
    if (green > 255) {
      green = 255;
    } else if (green < 0) {
      green = 0;
    }

    this.green = green;
  }

  public void setBlue(int blue) {
    if (blue > 255) {
      blue = 255;
    } else if (blue < 0) {
      blue = 0;
    }

    this.blue = blue;
  }

//********************************************************************************************

  public void setAplha(int alpha) {
    if (alpha > 255) {
      alpha = 255;
    } else if (alpha < 0) {
      alpha = 0;
    }

    this.alpha = alpha;
  }
}
