main() {
 uniquesort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]);
 sumOfEvens([
   [42, 9],
   [16, 8]
 ]);
  print(unmix("hTsii  s aimex dpus rtni.g"));
}

// Challenge 1 - Purge and Organize
// Given a list of numbers, write a function that returns an list that...
// 1. Has all duplicate elements removed .
// 2. Is sorted from least to greatest value.
// Examples
// uniqueSort([1, 2, 4, 3]) ➞ [1, 2, 3, 4]
// uniqueSort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]) ➞ [1, 2, 3, 4]
// uniqueSort([6, 7, 3, 2, 1]) ➞ [1, 2, 3, 6, 7]

uniquesort(List values) {
  List uniq = Set.of(values).toList();
  uniq.sort();
  print(uniq);
}

// Challenge 2 - Sum of all Even Numbers in a Matrix
// Create a function that returns the sum of all even elements in a 2D matrix.
// Examples
// sumOfEvens([
//   [1, 0, 2],
//   [5, 5, 7],
//   [9, 4, 3]
// ]) ➞ 6
//
// 2 + 4 = 6
//
// sumOfEvens([
//   [1, 1],
//   [1, 1]
// ]) ➞ 0
//
// sumOfEvens([
//   [42, 9],
//   [16, 8]
// ]) ➞ 66
//
// sumOfEvens([
//   [],
//   [],
//   []
// ]) ➞ 0
sumOfEvens(List<List<int>> value) {
  int evensum = 0;
  for (int i = 0; i < value.length; i++) {
    for (int j = 0; j < value[i].length; j++) {
      if (value[i][j] % 2 == 0) {
        evensum = evensum + value[i][j];
      }
    }
  }
  print(evensum);
}

// Challenge 3 - Unmix My Strings
// 'lPaeesh le pemu mnxit ehess rtnisg!' Oh, sorry, that was supposed to say: Please help me unmix these strings!
// Somehow my strings have all become mixed up; every pair of characters has been swapped.
// Help me undo this so I can understand my strings again.
// Example:
// unmix("123456") ➞ "214365"
//
// unmix("hTsii  s aimex dpus rtni.g") ➞ "This is a mixed up string."
//
// unmix("badce") ➞ "abcde"
String unmix(String oldstrng) {
  String newstrng='';
  for(int i=0;i<oldstrng.length-1;i=i+2) {
    newstrng =newstrng + oldstrng[i+1] + oldstrng[i];
  }
  if(oldstrng.length % 2 !=0){
    newstrng += oldstrng[oldstrng.length-1];
  }
return newstrng;
}
