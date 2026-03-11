// James Stacey | 2/25/26 | Timeline 
void setup() {
  size(950,400);
}
void draw() {
  background(#4D5C50);

  drawRef();
  histEvent(106, 200, "Aug. 2001", true, "Born in Innichen, Italy, Sinner was a national junior skiing champion before choosing to focus entirely on tennis.");   
  histEvent(322, 300, "2008", false, "Sinner starts playing tennis, making it his priority over skiing.");       
  histEvent(543, 200, "Jun. 2014", true, "At just 13 years old, he left his family \n to move to Bordighera and train full-time at the prestigious Piatti Tennis Centre.");  
  histEvent(727, 200, "Nov. 2019", true, "Sinner announced his arrival on the world stage by winning \n the Next Gen ATP Finals in Milan as the tournament's youngest player.");  
  histEvent(761, 300, "Nov. 2020", false, "By winning the Sofia Open, he became the youngest Italian player in the Open Era to capture an ATP Tour title.");  
  histEvent(650, 300, "Aug. 2018", false, "Sinner is offically recognized as a professional tennis player by the ATP");  
  histEvent(866, 300, "Jan. 2024", false, "Sinner won his maiden Grand Slam title at the Australian Open, \n coming back from two sets down in a historic final.");  
  histEvent(883, 200, "Jun. 2024", true, "Following a stellar season, Sinner made history as the first Italian player ever to be ranked World No. 1 in singles.");  
  
}
void drawRef() {
  textAlign(CENTER);
  stroke(#000000);
  fill(0);
  textSize(36);
  text("Jannik Sinner: Timeline",width/2,70);
  textSize(20);
  text("by James Stacey", width/2, 95);
  strokeWeight(3);
  line(50,250,900,250);
  strokeWeight(2);
  text("2000",50,280);
  text("2025",900,280);
  line(50,235,50,265);
  line(900,235,900,265);
  line(475,235,475,265);
  text("2013",475,280);

  
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
  line(x,y,x-15,y+50);
  } else {
  line(x,y,x-15,y-50);
}
  stroke(#4BDC63);
  rectMode(CENTER);
  fill(#28332A);
  rect(x,y,100,30,10);
  fill(#4BDC63);
  text(title,x,y+5);
  stroke(#000000);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
   text(detail, width/2,350);
  }

}
