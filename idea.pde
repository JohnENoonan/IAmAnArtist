public class Idea{
  public boolean beenDoneBefore;
  private int x = (int)random(width);
  private int y = (int) random(height);
  Idea(){
    beenDoneBefore = true;
    loadPixels();
    for (int x = 0; x < width; ++x){
      for (int y = 0; y < height; ++y){
        if (random(1) > .995){
          pixels[x + y*width] = color((int)random(255));
          //pixels[x + y*width] = pixels[x + y*width] | (int)random(4);
        }
      }
    }
    updatePixels();
  }
  
  public void reproduce(){
    pushMatrix();
      translate(random(width), random(height));
      fill(random(255), random(255), random(255), 50); 
      rect(0, 0, random(25,50), random(25,50)); 
    popMatrix();
    //rect(x,y,2*x,2*y);
  }
}