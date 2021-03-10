package test;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Scanner;
public class Lab1a {
	/* Name: Joshua Mccrary    
	 * Class/section: CSCI1302 T/TH 8:30-10:20
	 * Lab#: 1.1
	 * Professor: Mohan Naidu
	 * Description: Q1: Design a solution that requests and receives student names and an exam score for each. Use one-dimensional arrays to solve this.
	The program should continue to accept names and scores until the user inputs a student whose name is “alldone”.
	After the inputs are complete determine which student has the highest score and display that student’s name and score.
	Finally sort the list of names and corresponding scores in ascending order.
	When you are done, printout the Code and, also the corresponding output produced. Upload both the txt file and the console output showing that your program run correctly.
		 Sample Input:
	 * John   69
	 * Alex  89
	 * Billy  72
	 * Sam   59
	 * Serena 96
	 * Alldone
	 * 
	 * Sample Output:
	 * The student with the highest score is Serena with a 
	 * score of 96
	 * 
	 * Sorted list
	 * Serena 96
	 * Alex  89
	 * Billy  72
	 * John   69
	 * Sam   59
	 * 
	 */

	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		String[] names = new String[50];
		int[] scores = new int[50];


		String name = "";
		int i = 0;
		while (!name.equals("alldone")) {

			System.out.print("Enter name of student: ");
			name = input.next();
			if(name.equals("alldone"))
				break;
			System.out.print("Enter grade of student: ");
			int score = input.nextInt();
			if (name != "alldone") {
				names[i] = name;
				scores[i] = score;
				i++;
			}

		}

		bubbleSort(scores, names);
	}

	public static void bubbleSort(int[] arr,String[] names) 
	{ 
		int n = arr.length; 
		for (int i = 0; i < n-1; i++) { 
			for (int j = 0; j < n-i-1; j++) {
				if (arr[j] > arr[j+1]) 
				{ 

					int temp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = temp; 

					String temp2 = names[j];
					names[j] = names[j+1];
					names[j+1] = temp2; 
					
				}
			}
		}
		System.out.println();
		System.out.println("The student with the highest score is " + names[names.length - 1] + " with a score of " + arr[arr.length - 1] );
		System.out.println();
		for(int z = arr.length-1; z >= 0; z--) {
			if(names[z] != null) {
			System.out.println(names[z] + " " + arr[z]);
			};
		}
	} 
}

	

	































	