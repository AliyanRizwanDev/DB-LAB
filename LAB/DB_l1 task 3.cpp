#include<iostream>
#include<fstream>
#include<string>
using namespace std;
int main() {


	string fname, lname, regno, program, contactNumber;
	double CGPA;
	char ch;

	ofstream myfile;
	myfile.open("department.csv");
	if (myfile.is_open())
	{
		myfile << "RegistratoionNumber , FirstName , LastName , Program , CGPA , ContactNumber \n";
	}

	else {
		cout << "your file is not opening!!!!!" << endl;
	}
	int i = 0;
	while (i < 1) {
		cout << "if you want to enter data enter Y or y\n";
		cout << "if you don't want to enter data enter N or n\n";
		cout << "enter your choice: ";
		cin >> ch;
		if (ch == 'Y' || ch == 'y')
		{
			cout << "enter Your regestration number :";
			cin >> regno;
			myfile << regno << ",";
			cout << "enter Your first_name :";
			cin >> fname;
			myfile << fname << ",";
			cout << "enter Your last_name :";
			cin >> lname;
			myfile << lname << ",";
			cout << "enter Your Program :";
			cin >> program;
			myfile << program << ",";
			cout << "enter Your CGPA :";
			cin >> CGPA;
			myfile << CGPA << ",";
			cout << "enter Your ContactNumber :";
			cin >> contactNumber;
			myfile << contactNumber << "," << endl;
		}
		else if (ch == 'N' || ch == 'n')
		{
			break;
		}
		else
		{
			cout << "pls enter correct input \n" << endl;
		}
	}
	myfile.close();

	return 0;
}