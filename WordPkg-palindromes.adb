-- Name: Madison Tilden
-- Date: TBA
-- Course: ITEC 320 Principles of Procedural Programming

-- Purpose:
-- This Ada package specification adds palindrome checking,
-- removal of non-letters, and transforming to upper and lower case
-- to the word package.

with Ada.Text_IO; use Ada.Text_IO;
with wordpkg;
WITH Ada.Characters.Handling;  USE ADA.Characters.Handling;
WITH Ada.Strings.unbounded; use ada.strings.unbounded;

package body WordPkg.Palindromes is

    function is_Pal(w: Word) return Boolean is
       Middle: Natural;
       is_a_pal : Boolean := True;


    BEGIN
       -- see's if it is a palin on its own

        -- gets the middle of w
        Middle := W.Length / 2;

        FOR R IN 0 .. Middle LOOP
           IF W.Letters(R + 1) /= W.Letters(W.Length-R) THEN
              is_a_pal := False;
           END IF;
        END LOOP;

		return is_a_pal;
	end is_pal;

      --------------------------

    FUNCTION To_Upper(W: Word) RETURN Word IS
       N : Word;

    BEGIN

       N := New_Word(W.Letters(1 .. W.Length));
       To_Upper(N);
       RETURN N;

    END To_Upper;

      ---------------------------

    FUNCTION Remove_NonLetter(W: Word) RETURN Word IS
       Unstr : Unbounded_String;

       toReturn : word;


    BEGIN

       FOR I IN 1 ..W.Length LOOP
          IF Is_Letter(W.Letters(I)) THEN

             Append(Unstr, W.Letters(I));

          END IF;
       END LOOP;
       ToReturn := New_Word(To_STring(Unstr));
       return toReturn;

    END Remove_NonLetter;


    ---------------------------

    PROCEDURE To_Upper(W: IN OUT Word) IS


    BEGIN

       FOR M IN 1 .. W.Length LOOP
        W.Letters(M) := To_Upper(W.Letters(M));
       END LOOP;

    END To_Upper;


       ------------------------------

    PROCEDURE Remove_Nonletter(W: IN OUT Word) IS

       Unstr : Unbounded_String;

       toReturn : word;


    BEGIN

       FOR I IN 1 ..W.Length LOOP
          IF Is_Letter(W.Letters(I)) THEN

             Append(Unstr, W.Letters(I));

          END IF;
       END LOOP;
       ToReturn := New_Word(To_STring(Unstr));


   END Remove_NonLetter;

   ------------------------------------------

end WordPkg.Palindromes;
