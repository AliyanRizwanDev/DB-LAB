#include<iostream>
#include<string>
#include<fstream>
using namespace std;

int main()
{
	char regnumber;
	const int size = 500;
	char arr[size];
	ifstream fin;
	
	fin.open("data.txt");
	if (!fin.is_open())
	{
		cout << "File not Found" << endl;
	}
	else
	{
		
		while (!fin.eof())
		{
			fin.getline(arr,size);
			cout << arr<<endl;
		}
		cout << "Enter registration #";
		cin >> regnumber;
		for (int i = 0; i < 5; i++)
		{
			if (regnumber==arr[i])
			{
				cout << arr << endl;
				break;
			}
			else
			{
				cout << "ENTER VALID REGISTRATION NUMBER" << endl;
			}
		}
	}
	
	return 0;
}