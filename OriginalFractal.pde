public void setup(){
 background(0); 
 size(500,500);
 rectMode(CENTER);
}

public void draw(){
    Fractal(250,250,150);
    
}

public void Fractal(int x, int y, int size){
  if (size <= 1){
     return;
  }else{
    rect(x,y,size,size);
    // top left
    Fractal(x - size, y - size, size/3);
    // top middle
    Fractal(x, y - size, size/3);
    // top right
    Fractal(x + size, y - size, size/3);
    // middle right
    Fractal(x + size, y, size/3);
    // bottom right
    Fractal(x + size, y + size, size/3);
    // middle bottom
    Fractal(x, y + size, size/3);
    // bottom left
    Fractal(x - size, y + size, size/3);
    // middle left
    Fractal(x - size, y, size/3);

  }
}
