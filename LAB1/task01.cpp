#include<iostream>
#include<fstream>
#include<string>
using namespace std;
int main()
{
	string ROLLNO[5]={"L1F20BSCS0010","L1F20BSCS0015","L1F20BSCS0014","L1F20BSCS0013","L1F20BSCS0012"},
	FIRST[5]={"SAYYAM","SUBHAN","SALMAN","HAMZA","ALI"}, 
	LAST[5]={"SHAHID","ALI","KHALID","ABBAS","AHMAD"}, PROGRAM[5]={"BSCS","BSCS","BSCS","BSCS","BSCS"}, 
	CONTACT[5]={"030078965","123456987","15987426","786521432","12036486655"};
	double CGPA[5]={3.14,3.33,3.15,3.50,3.8};
	
	ofstream fout;
	fout.open("DATA.TXT");
	if (!fout.is_open())
	{
		cout << "FILE NOT FOUND." << endl;
	}
	else
	{
		fout << "REGISTRATION NUMBER , FIRST NAME, LAST NAME, PROGRAM , CGPA, CONTACTNUMBER" << endl;
		int COUNT = 0;
		for (int I = 0; I < 5; I++)
		{
			COUNT++;
			fout <<COUNT<<"  "<< ROLLNO[I] << "," << FIRST[I] << "," << LAST[I] << "," << PROGRAM[I] << "," << CGPA[I] << "," << CONTACT[I] << endl;
		}
	}
	fout.close();
	return 0;
}