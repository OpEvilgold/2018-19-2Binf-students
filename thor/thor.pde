PShape thor, ground, giant, thunderHammer;
Actor Thor;
Actor Giant;
Actor Ground;
void setup() {
  fullScreen(P3D); 
  background(0);
  Ground = new Actor();
  Thor = new Actor();
  Giant = new Actor();
  Ground.SetModel_Color("Terrain", #FF0000);
  Thor.SetModel_Color("P_0", #F0F0FF);
  Giant.SetModel_Color("P_1", #FFC000);
  thor.scale(1.5);
  giant.scale(2);
  giant.rotateX(135);
  giant.rotateY(radians(90));
  thor.rotateX(135);
  thor.rotateY(radians(270));
}
void draw() {
  background(0);
  lights();
  fill(255);
  textSize(80);
  text(frameRate, width/2, height*0.3);
  Thor.SetName("Thor", mouseX, height * .55, #00FF00);
  Giant.SetName("Giant", width*0.75, height*0.5, #FF0000);
  Thor.SpawnActor(0);
  Giant.SpawnActor(1);
  Ground.SpawnActor(2);
}
class setModel
{

  void SetModel() {
  };
  void SetName() {
  };
  void SpawnActor() {
  };
}

class Actor extends Model
{

  void SetName ( String actorName, float offsetX, float txtHeight, int textColor)
  { 
    fill(color(textColor));
    textSize(40);
    text(actorName, offsetX, txtHeight);
  }
  void SetModel_Color ( String ModelName, int colorModel) 
  {
    if ( ModelName == "P_0") {

      thor = loadShape("Thor.obj");
      thor.setFill(color(colorModel));
    } 
    if ( ModelName == "P_1")
    {  
      giant =loadShape("giant.obj");
      giant.setFill(color(colorModel));
    }
    if ( ModelName == "Terrain")
    {
      ground = createShape(RECT, 0, 0, width, height * .08);
      ground.setFill(color(colorModel));
    }
  }
  void SpawnActor(int ActorToSpawn) {
    if (ActorToSpawn == 0)
    {
      shape(thor, mouseX + 50, height* 0.65);
    }
    if (ActorToSpawn == 1)
    {

      shape(giant, width*0.8, height*0.55);
    }
    if (ActorToSpawn == 2)
    {

      shape(ground, 0, height*0.66);
    }
  }
}
