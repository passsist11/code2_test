String word[];
float x[];

void setup(){
  
  background(255);
  size(600,600);
  
  word=new String[4];
  x=new float[4];
  
  for(int i=0;i<4;i++){
    
    word[0]="inspirational";
    word[1]="so inspirational";
    word[2]="don't you feel so inspired";
    word[3]="motivating quots are so motivating";
    x[i]=width/4*(i+.5);
    
  }
}

void draw(){
  background(255);
  for(int i=0;i<4;i++){
    if(x[i]-100<mouseX && mouseX<x[i]+100 && 100<mouseY && mouseY<300 && mousePressed){
      displayText(word[i]);
      fill(255);
    } else {
      fill(0);
    }
    ellipse(x[i],200,100,100);
  }
}

void displayText(String a){
  textSize(40);
  textAlign(CENTER,CENTER);
  fill(0);
  text(a,width/2,height/2);
}
