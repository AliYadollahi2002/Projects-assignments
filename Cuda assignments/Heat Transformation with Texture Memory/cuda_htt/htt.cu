#include "htt.h"

#define tx threadIdx.x
#define bx blockIdx.x
#define ty threadIdx.y
#define by blockIdx.y
#define K 1

// Define a texture memory
texture<float> texIn;
texture<float> texOut;

//The kernel function that runs on the GPU
__global__ void kernelFunc(float* newtemperature, const float* oldtemperature, const unsigned int N)
{   
    int x = tx + bx * 32;
    int y = ty + by * 32;
    int i = x + (y * N);

    int left = i - 1;
    int right = i + 1;
    if (x == 0) left++;
    if (x == N-1) right--;

    int top = offset - N;
    int bottom = offset + N;
    if (y == 0) top += N;
    if (y == N-1) bottom -= N;

    float t, l, c, r, b;
    t = tex1Dfetch(texIn,top);
    l = tex1Dfetch(texIn,left);
    c = tex1Dfetch(texIn,offset);
    r = tex1Dfetch(texIn,right);
    b = tex1Dfetch(texIn,bottom);

    newtemperature[i] = c + K * (t + b + r + l - 4 * c);

}


void gpuKernel(float* ad, float* cd, const unsigned int N, const unsigned int M)
{

    // Define block size and grid size
    dim3 blockSize(32,32);  // Adjust block size as needed
    dim3 gridSize(N/32,N/32);

    // Bind the texture to the input data on GPU memory
    HANDLE_ERROR( cudaBindTexture( NULL,texIn,ad,n * n * sizeof(float) ) );
    HANDLE_ERROR( cudaBindTexture( NULL,texOut,cd,n * n * sizeof(float) ) );
    
    // Launch the CUDA kernel function
    kernelFunc<<<gridSize,blockSize>>>(cd, ad, N);

    // Unbind the texture after kernel execution
    cudaUnbindTexture( texIn );
    cudaUnbindTexture( texOut );


}
