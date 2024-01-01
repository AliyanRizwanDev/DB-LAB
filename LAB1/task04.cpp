#include<iostream>
#include<fstream>
#include<string>
using namespace std;
int main()
{
	string id[5]={"0010","0015","0014","0013","0012"},
	name[5]={"SAYYAM","SUBHAN","SALMAN","HAMZA","ALI"}, 
	dateofjoin[5]={"15/01/2015","15/10/2016","10/05/2018","15/01/2012","15/01/2021"}, 
	CONTACT[5]={"030078965","123456987","15987426","786521432","12036486655"};
	double salary[5]={150000,120000,180000,200000,100000};
	
	ofstream fout;
	fout.open("DATA.TXT");
	if (!fout.is_open())
	{
		cout << "FILE NOT FOUND." << endl;
	}
	else
	{
		fout << "EMPLOYEE ID , NAME, DATE OF JOIN , SALARY, CONTACTNUMBER" << endl;
		
		for (int I = 0; I < 5; I++)
		{
			
			fout << id[I] << "," << name[I] << "," << dateofjoin[I] << "," << salary[I] << "," << CONTACT[I] << endl;
		if(salary[I]>150000) {
		cout<<name[I]<<"  "<<salary[I]<<endl;
		    
		}
	}
	}
	fout.close();
	return 0;
}