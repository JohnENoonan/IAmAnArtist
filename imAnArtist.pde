Artist artist = new Artist();

public void setup(){
  size(800,800);
  artist.becomeCreative(); 
}

public void draw(){
  Idea idea = artist.comeUpWithSomething();
  if (idea.beenDoneBefore){
    idea.reproduce();
    artist.profit();
    artist.congratulations();
  }
  else {
    artist.reconsiderAndTryAgain();
  }
}