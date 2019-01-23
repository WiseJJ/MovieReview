public class Sentences{
  
private int rate;
private String line;

public Sentences (String s){

  
  //rate = Integer.parseInt(s.substring(0,1));
  line=s;
}

public String getLine(){
  return line;
}
public int getRate(){
  return 0;
}

public int count(String s){
  //lowercase isnt working
  String q=s.toLowerCase();
  int counter=0;
  //negative regex
  String [] ar = line.split("[^A-Za-z0-9]");
  for(String x: ar){
    String w =x.toLowerCase();
    if(q.equals(w))
    counter++;
  }
  return counter;
}

}