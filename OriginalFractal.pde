public void settings() {
    
  }
  public void setup(){
    size(400, 400);
  }
  public void draw(){
    int color1 = (int)(Math.random()*256);
    int color2 = (int)(Math.random()*256);
    int color3 = (int)(Math.random()*256);
    fill(color1, color2, color3,25);
    myFractal(200, 200, 200);
  }
  public void myFractal(int x, int y, int siz) {
    noStroke();
    ellipse(x, y, siz, siz);
    if(siz > 10)
    {
      myFractal(x-50,y-50,siz/2);
      myFractal(x-50,y+50,siz/2);
      myFractal(x+50,y+50,siz/2);
      myFractal(x+50,y+50,siz/2);
      myFractal(x+50,y-50,siz/2);
      myFractal(x+50,y-50,siz/2);
      myFractal(x-50,y-50,siz/2);
      myFractal(x-50,y-50,siz/2);
    }
  }
