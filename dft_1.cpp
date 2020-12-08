#include <iostream>
#include <complex>

using namespace std;

#define PI 3.14159265

main(){
	int len = 0;
	cout << "Input number of elements in sequence" << endl;
	cin >> len;
	double x_t[len];
	double len_d = double(len);
	cout <<"Enter the values one by one: "<< endl;
	for(int i = 0; i<len; i++){
		cin >> x_t[i];
	}

	complex<double> x_k[len];

	complex<double> j(0.0, 1.0);

	for(int k = 0; k<len-1; k++){
		double k_d = double(k);
		complex<double> sum(0.0,0.0);
		for(int n = 0; n<len-1; n++){
			double n_d = double(n);
			sum+= x_t[n]*exp((-2*PI*j*n_d*k_d)/len_d);
		}
		x_k[k] = sum;
	}


	cout << "Your input : " << endl;
	for(int i = 0; i<len; i++){
		cout << x_t[i] << " ";
	}
	cout << endl;

	cout << "Calculated DFT : " << endl;
	for(int i = 0; i<len; i++){
		cout << x_k[i] << " ";
	}
	cout << endl;

}