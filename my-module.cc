#include "my-module.h"

Koi::Koi( int i )
{
	i_=i;
}

void Koi::put() { std::cout << i_ << std::endl; }

int main(int,char**)
{}