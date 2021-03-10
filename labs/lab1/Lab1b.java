package test;
import java.util.Scanner;
public class Lab1b {	
	/* Name: Joshua Mccrary    
	 * Class/section: CSCI1302 T/TH 8:30-10:20
	 * Lab#: 1.2
	 * Professor: Mohan Naidu
	 * Description:Q2. 7.1 (Assign Grades) Write a program that reads student scores, gets the best score,
and then assigns grades based on the following scheme:
Grade is A if score is >= best - 10
Grade is B if score is >= best - 20;
Grade is C if score is >= best - 30;
Grade is D if score is >= best - 40;
Grade is F otherwise.
The program prompts the user to enter the total number of students, then prompts
the user to enter all of the scores, and concludes by displaying the grades.
	 */

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
        
		System.out.print("Enter the number of students: ");
        int numberOfStudents = in.nextInt();
        int[] scores = new int[4];

        System.out.print("Enter " + numberOfStudents + " scores: ");
        scores[0] = in.nextInt();
        scores[1] = in.nextInt();
        scores[2] = in.nextInt();
        scores[3] = in.nextInt();

        displayGrades(scores);
    }

    public static void displayGrades(int[] grades) {
        int highScore = bestGrade(grades);
        
        for (int i = 0; i < grades.length; i++) {
            System.out.printf("Student %d score is %d and grade is %s%n",
                i, grades[i], assignLetterGrade(grades[i], highScore));
        }
    }

    public static char assignLetterGrade(int grade, int best) {
//    	Grade is A if score is >= best - 10
//    	Grade is B if score is >= best - 20;
//    	Grade is C if score is >= best - 30;
//    	Grade is D if score is >= best - 40;
    	// else F
    	if(grade >= best - 10) {
    		return 'A';
    	} else if (grade >= best - 20) {
    		return 'B';
    	} else if (grade >= best - 30) {
    		return 'C';
    	} else if (grade >= best - 40) {
    		return 'D';
    	} else {
    		return 'F';
    	}
    }

    public static int bestGrade(int[] grades) {
        int highScore = grades[0];

        for (int grade : grades) {
            if (grade > highScore)
                highScore = grade;
        }

        return highScore;
    }
}
	

