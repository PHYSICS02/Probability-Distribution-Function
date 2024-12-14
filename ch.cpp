#include <iostream>
#include <fstream>
#include <cmath>

using namespace std;

int main() {
    const int Nt = 1000;     // Number of rows
    const int Nx = 101;      // Number of columns
    ofstream Outfile("Array.dat");
    double matrix[Nt][Nx] = {0};   // Matrix initialization with zeros

    for (int i = 0; i < Nt; ++i) 
    {
        for (int j = 0; j < Nx; ++j) 
        {
            double x = -5 + 0.1 * j;  // current x value        .. x+dx, x+2dx, x+3dx..
            if (i == 0) 
            {             
                matrix[i][j] = (1.0 / (sqrt(2.0 * 3.14 * 0.1))) * exp(-x * x / (2.0 * 0.1));   // First row formula
                matrix[0][0] = 0;     // making first row first column entry zero
                matrix[0][Nx-1] = 0;   // making last column first row zero
            } 
            else 
            {             
                double term1 = 0.5 * 0.01 / (0.1 * 0.1);
                double term2 = matrix[i - 1][j + 1] - 2 * matrix[i - 1][j] + matrix[i - 1][j - 1];
                matrix[i][j] = term1 * term2 + matrix[i - 1][j];
                matrix[i][0] = 0;         // entry of first column zero
                matrix[i][Nx-1] = 0;    // entry of last column zero
            }
               Outfile << matrix[i][j] << "\t" ;
       }
        Outfile<<endl;
    }
    Outfile.close();      // addition;
    
    

    int Store; 

    cout << "Which row to store in dat file (0-999) : ";
    cin >> Store/0.01;
      

    ofstream outfile("Row.dat");
    for (int j = 0; j < Nx; ++j)
    {
        double X = -5 + 0.1 * j;
        double x = matrix[Store][j];
        //double f = (1.0 / (sqrt(2.0 * 3.14 * 0.1))) * exp(-x * x / (2.0 * 0.1));
        outfile << X << "      " << x << endl;
    }
    outfile.close();

    return 0;
}

