public class Artist{
  private JSONArray self;
  private int thoughts;
  private ArrayList<PFont> expressions = new ArrayList<PFont>();;
  public double worldValue;
  Artist(){
    worldValue = 0;
  }
  
  public void becomeCreative(){
    frameRate(24);
    noStroke();
    JSONObject mind = loadJSONObject("mind/thoughts.json");
    self = mind.getJSONArray("congrats");
    thoughts = self.size();
    JSONArray means = mind.getJSONArray("means");
    for (int i = 0; i < mind.size(); ++i){
      expressions.add(loadFont(means.getString(i))); 
    }
  }
  
  public Idea comeUpWithSomething(){
    return new Idea();
  }
  
  public void profit(){
    worldValue += .000000000001;
  }
  
  public void congratulations(){
    fill(255);
    //textFont(loadFont(expressions[(int)random(expressions.length - 1)]));
    pushMatrix();
      textSize(31);
      textFont(expressions.get((int)random(expressions.size()-1)));
      fill(color((random(1) > .5) ? random(30) : random(240, 255)));
      translate(random(-50,width), random(height));
      rotate(random(radians(-10), radians(10)));
      text(self.getString((int)random(thoughts)), 0, 0);
    popMatrix();
  }
  
  public void reconsiderAndTryAgain(){
    return;
  }
}