#include "my-module.h"
#include <iostream>

Hui::Hui( int i )
{
	i_=i;
}
void Hui::put() { std::cout << i_ << std::endl; }


int main(int,char**)
{}