public void setup()
{
  String lines[] = {"test", "rotator", "rewriter", "nurses run", "Madam, I'm Adam!", "A Man! A Plan! A Canal! Panama!"};
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++)
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word= onlyLetters(word);
  word= noSpaces(word);
  word= noCapitals(word);
  String backwards = reverse(word);
  if(word.equals(backwards))
  return true;
  else
  return false;
}
public String reverse(String str)
{
  String x = "";
  for (int i= str.length(); i>0; i--)
    x = x+ str.substring(i-1, i);
  return x;
}
public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
}
public String noSpaces(String sWord){
  String result = new String();
  for(int i = 0; i < sWord.length(); i++)
     if(!sWord.substring(i,i+1).equals(" "))
       result=result + sWord.substring(i,i+1);
  return result;
}
public String noCapitals(String sWord){
  return(sWord.toLowerCase());
}


