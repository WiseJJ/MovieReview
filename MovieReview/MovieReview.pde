import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;
import java.io.FileNotFoundException;
import java.util.ArrayList;
Sentences s;
String fileName= "Documents/Processing/MovieReview/review.dat";
ArrayList<Sentences> rList = new ArrayList <Sentences>();
void setup(){
  background(0);
 size(500,500);
  try{
    
  Scanner file= new Scanner( new File(fileName));
  for(int i=0; i<8529; i++){
    String m =file.nextLine();
    rList.add(new Sentences(m));
  }
  int counter1 =0;
  for(Sentences s : rList){
    //variable typed enter here
    counter1+= s.count("angelique");
  }
  println(counter1);
  file.close();
  
 }
  catch(FileNotFoundException e){
   print(e);
  }
  finally{
   println("This will always print");
  }
}
void draw(){
  background(0);
  fill(#808080);
  rect(100,100,100,30);
 
 
}
 
/*void setup(){
s = new Sentences("5 sam! j likes? his ham, bao bao");
println(s.getRate());
println(s.getLine());
println(s.count("bao"));
}*/