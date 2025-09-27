#include "convolution.h"

#define tx threadIdx.x
#define ty threadIdx.y
#define tz threadIdx.z

#define bx blockIdx.x
#define by blockIdx.y
#define bz blockIdx.z

// you may define other parameters here!
#define bdx blockDim.x
#define bdy blockDim.y
#define bdz blockDim.z
// you may define other macros here!
// you may define other functions here!


//-----------------------------------------------------------------------------
__global__ void kernelFunc(const float *f, const float *g, float *result, int n) {
    
    int row = by * bdy + ty;
    int col = bx * bdx + tx;
    int resultSize = n + n - 1;

    if (row < resultSize && col < resultSize) {
        float sum = 0.0;

        for (int i = 0; i < n; ++i) {
            for (int j = 0; j < n; ++j) {
                int fRow = row - i;
                int fCol = col - j;

                // Check boundaries of the input signal f
                if (fRow >= 0 && fRow < n && fCol >= 0 && fCol < n) {
                    sum += f[fRow * n + fCol] * g[i * n + j];
                }
            }
        }

        result[row * resultSize + col] = sum;
    }
}

