-- Name: Madison Tilden
-- Date: TBA
-- Course: ITEC 320 Principles of Procedural Programming

-- Purpose:
-- This Ada package specification adds palindrome checking,
-- removal of non-letters, and transforming to upper and lower case
-- to the word package.

with Ada.Text_IO; use Ada.Text_IO;
with wordpkg;

GENERIC
 -- no generic functions ?

package WordPkg.Palindromes is
    function is_Pal(w: Word) return Boolean;

    function to_Upper(w: Word) return Word;
    function remove_NonLetter(w: Word) return Word;

    procedure to_Upper(w: in out Word);
    procedure remove_Nonletter(w: in out Word);
end WordPkg.Palindromes;
