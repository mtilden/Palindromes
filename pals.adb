with WordPkg;
with WordPkg.Palindromes;
WITH Ada.Text_IO; USE Ada.Text_IO;
WITH ada.Command_Line; USE ADA.Command_Line;

PROCEDURE Pals IS
   package wrdPkg is new WordPkg(80);
   PACKAGE Wordpkgpalin IS NEW WrdPkg.Palindromes;
   package cmdl renames ada.command_line;


      USE wrdpkg;
      USE Wordpkgpalin;
      use cmdl;

      w : word;

begin


      --reads in word from file
      --Get(W);
      --prints String: and then what is in w
      --exit when length(W) = 0;


          -- for command line argument
   IF Cmdl.Argument_Count > 0 THEN
      FOR I IN 1 .. Cmdl.Argument_Count LOOP
         W := New_Word(cl.arguent(i));
      end loop;


         get(W);

               --checks to see if its a palindrome as is
      IF Is_Pal(W) THEN
         put(w);
         Put(" is a palindrome.");
         NEW_LINE;


         -- checks to see if word is a palindrome when all non letters are removed
      ELSIF Is_Pal(Remove_NonLetter(W)) THEN
         put(w);
         Put(" Palindrome when non-letters are removed");
         NEW_LINE;


         -- checks to see if the word is a palindrome when
         -- the word is changed to upper
      ELSIF IS_Pal(To_Upper(W)) THEN
         put(w);
         Put(" Palindrome when converted to upper case");
         New_Line;


      -- checks to see if the word is a palindrome when
      -- changed to upper case and non letters are removed
      ELSIF IS_PAL(Remove_NonLetter(To_Upper(W))) THEN
         put(W);
         PUT(" Palindrome when non-letters are ");
         Put("removed and converted to upper case");
         New_Line;



      -- else this word will never be a palindrome
      ELSE
         Put(" is never a palindrome! :( ");
         NEW_LINE;

      END IF;
      NEW_LINE;


end loop;
         ---------------------------------------------------------------
         --  end for command line
         ---------------------------------------------------------------



   ELSE



      ---------------------------------------------------
      -- for a file
      ----------------------------------------------------
   WHILE NOT End_Of_File LOOP

      --reads in word from file
      Get(W);
      --prints String: and then what is in w
      --exit when length(W) = 0;
      Put("String: ");
      set_col(9);
      Put(W);
      New_Line;


      --checks to see if its a palindrome as is
      IF Is_Pal(W) THEN
         Put("Status: Panindrome as is.");
         NEW_LINE;


         -- checks to see if word is a palindrome when all non letters are removed
      ELSIF Is_Pal(Remove_NonLetter(W)) THEN
         Put("Status: Palindrome when non-letters are removed");
         NEW_LINE;
         Put("PalString: ");
         put(remove_nonletter(w));
         NEW_LINE;


         -- checks to see if the word is a palindrome when
         -- the word is changed to upper
      ELSIF IS_Pal(To_Upper(W)) THEN
         Put("Status: Palindrome when converted to upper case");
         New_Line;
         PUT("PalString: ");
         Put(To_Upper(W));
         NEW_LINE;



      -- checks to see if the word is a palindrome when
      -- changed to upper case and non letters are removed
      ELSIF IS_PAL(Remove_NonLetter(To_Upper(W))) THEN
         PUT("Status: Palindrome when non-letters are ");
         Put("removed and converted to upper case");
         New_Line;
         Put("PalString: ");
         Put(Remove_Nonletter(To_Upper(W)));
         New_Line;


      -- else this word will never be a palindrome
      ELSE
         Put("Status: Never a palindrome! :( ");
         NEW_LINE;

      END IF;
      NEW_LINE;


   END LOOP; -- end while not end of file

End if; -- end main if else


end pals;
