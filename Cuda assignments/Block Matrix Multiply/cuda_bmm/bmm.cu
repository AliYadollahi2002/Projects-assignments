//ONLY MODIFY THIS FILE!
//YOU CAN MODIFY EVERYTHING IN THIS FILE!

#include "bmm.h"

#define tx threadIdx.x
#define ty threadIdx.y
#define tz threadIdx.z

#define bx blockIdx.x
#define by blockIdx.y
#define bz blockIdx.z

// TILEX and TILEY are used to set the number of threads in a CUDA block 
#define TILEX 32
#define TILEY 32
#define WIDTH 32

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
__global__ void kernelFunc(float* ad, float* bd, float* cd, const int m, const int n) {

	__shared__ float ads[TILEY][WIDTH];
	__shared__ float bds[WIDTH][TILEX];

	int row = by * TILEY + ty;
	int col = bx * TILEX + tx;
	float sum = 0;
	for (int m = 0; m < n/WIDTH; ++m)
	{
		//ads[ty][tx] = ad[row * n + (m * WIDTH + tx)];
		//bds[ty][tx] = bd[(m * WIDTH + ty)*n + col];
		for (int k = 0; k < WIDTH; ++k)
		{
		ads[ty][k] = ad[row * n + (m * WIDTH + k)];
		bds[k][tx] = bd[(m * WIDTH + k)*n + col];
		}
		__syncthreads();
		for (int k = 0; k < WIDTH; ++k)
		{
			sum += ads[ty][k] * bds[k][tx];
		}
		__syncthreads();
		cd[row * n + col] = sum;
		
	}
	


}
