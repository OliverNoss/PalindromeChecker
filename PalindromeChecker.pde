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
public boolean palindrome(String word)
{
  String charOnly = "";
  for (int i = 0; i<word.length(); i++)
  {
    char x = word.charAt(i);
    //alternate code:
    /*if (x != '!' && x != '.' && x != ',' && x != '?' && x != ' ' && x != '\'')
      charOnly += x;
    */
    if (Character.isLetter(x))
      charOnly += x;
  }

  String wordFinal = charOnly.toLowerCase();
  boolean retValue = true;
  for (int i = 0; i<wordFinal.length(); i++)
  {
    if (wordFinal.charAt(i) != wordFinal.charAt(wordFinal.length()-i-1))
    {
      retValue=false;
    }


  }
  return retValue;
}

