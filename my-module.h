#ifndef MYMODULE_INCLUDED
#define MYMODULE_INCLUDED
template <class T>
struct Hui {
	Hui( T i );
	T i_;
	void put();
};
#include <iostream>
template <class T>
Hui<T>::Hui( T i )
{
	i_=i;
}
template <class T>
void Hui<T>::put() { std::cout << i_ << std::endl; }

struct Koi {
	Koi( int i );
	int i_;
	void put();
};
#endif
