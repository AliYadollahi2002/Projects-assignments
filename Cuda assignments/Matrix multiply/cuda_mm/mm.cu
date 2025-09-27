//ONLY MODIFY THIS FILE

#include "mm.h"

#define tx threadIdx.x
#define ty threadIdx.y
#define tz threadIdx.z

#define bx blockIdx.x
#define by blockIdx.y
#define bz blockIdx.z

// you may change the following values
#define TILEX 32
#define TILEY 32

// you may define other parameters here!
// you may define other macros here!
// you may define other functions here!

dim3 getDimGrid(const int m, const int n) {
	dim3 dimGrid(n/TILEX,n/TILEY);
	return dimGrid;
}
dim3 getDimBlock(const int m, const int n) {
	dim3 dimBlock(TILEX,TILEY);
	return dimBlock;
}

//-----------------------------------------------------------------------------
__global__ void kernelFunc(float* ad, float* bd, float* cd, const int m,const int n) {
	int row = by * TILEY + ty;
	int col = bx * TILEX + tx;
	float s = 0;
	for (int k = 0; k < n; ++k)
	{
		s += ad[row*n + k] * bd[k*n + col];
	}
	cd[row*n + col] = s;
	
}
