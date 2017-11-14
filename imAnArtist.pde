Artist artist = new Artist();

public void setup(){
  size(1280,720);
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