#include<iostream>
#include<fstream>
#include<string>
using namespace std;
int main()
{
	char regno[13];
	char first_name[5];
	char last_name[4];
	char Program[2];
	float CGPA = 0;
	char ContactNumber[10];
	ifstream fin("student data.csv");
	if (fin.is_open())
	{
		fin >> ContactNumber >> Program >> last_name >> first_name >> regno;
	}
	else cout << "Unable to open file";

	for (int i = 0; i < 7; i++)
	{
		fin >> regno >> first_name >> last_name >> Program >> ContactNumber;
		if (CGPA >= 3.5)
		{
			cout << regno << ",";
			cout << first_name << ",";
			cout << last_name << ",";
			cout << Program << ",";
			cout << CGPA << ",";
			cout << ContactNumber << "," << endl;

		}
	}
	fin.close();


	return 0;
}