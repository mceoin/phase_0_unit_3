
// U3.W8-9: Gradebook from Names and Scores

// You will work with the following two variables.  The first, students, holds the names of four students.  
// The second, scores, holds groups of test scores.  The relative positions of elements within the two 
// variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

// Do not alter the students and scores code.

// I worked on this challenge [by myself, with: Sebastian]


// __________________________________________
// Write your code below.


var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]

  var average = function(array){

    var sum = 0

    for(i = 0; i < array.length; i++){
      sum = sum + array[i];
        }  
      return sum / array.length
  }

  var gradebook = {
    Joseph:{testScores:scores[0]},
    Susan:{testScores:scores[1]},
    William:{testScores:scores[2]},
    Elizabeth:{testScores:scores[3]},

      addScore:function(student, addGrade){
        gradebook[student].testScores.push(addGrade)
      },

      getAverage:function(student){
        return average(gradebook[student].testScores)
      }

  }



// gradebook.addScore("Susan", 12)
// console.log(gradebook.Susan)

// console.log(gradebook)
// console.log(gradebook.Joseph)
// console.log(gradebook.Joseph.testScores)
// console.log(gradebook.Joseph.testScores[3])





// __________________________________________
// Refactored Solution








// __________________________________________
// Reflect


// Ok, this was really hard. Not going to lie. I need to do this a few more times to understand what's going on.
// Using the ":" in such a way was intense, because you're remembering what it refers to, sometimes at 4 nests deep.
// ":", in my mind, is like the equivalent of var = whatever, execpt your var hasn't yet been defined, and neither has your whatever. They're all conditional upon each other, the whole way up the stack to the original input.
// when adding multiple functions to a variable, {whatever}, {whatever}, - it's REALLY important to remember the comma after the }
// an increment loop on an array is i < whatever, not i<= whatever, because the array decrements by 1.






// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)