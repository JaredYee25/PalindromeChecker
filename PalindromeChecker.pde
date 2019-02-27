public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public String noSpaceCapitalsPunctuation(String str) {
  String notCapital = new String(str.toLowerCase());
  String bat = new String("");
  for(int i = 0; i < notCapital.length(); i++) {
    char c = notCapital.charAt(i);
    String s = notCapital.substring(i, i+1);
    if(Character.isLetter(c) == true)
      bat = bat + s;
    }
  return bat;
}

public boolean palindrome(String word)
{
  String newWord = new String(noSpaceCapitalsPunctuation(word));
  String rNewWord = new String(reverse(newWord));
  if(rNewWord.equals(newWord))
    return true;
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--)
      sNew = sNew + str.substring(i - 1, i);
    return sNew;
}


