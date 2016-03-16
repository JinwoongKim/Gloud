#include <iostream>
#include <future>

__global__
void global_is_prime(int x, bool* result) {
  for (int i=2; i<x; ++i) {
    if (x%i==0) {
      *result = false;
      break;
    }
  }
  *result = true;
}

// a non-optimized way of checking for prime numbers:
bool is_prime (int x) {
  std::cout << "Calculating. Please, wait...\n";
  for (int i=2; i<x; ++i) {
    if (x%i==0) {
      return false;
    }
  }
  return true;
}

int main(int argc, char *argv[]) { 

  const int LargeNumber = 313222313;
  const int SmallNumber = 3;
  bool *devResult, hostResult; 

  /* Allocate memory on device */ 
  cudaMalloc((void **)&devResult, sizeof(bool)); 

  global_is_prime<<<1,1>>>(LargeNumber, devResult);
  std::future<bool> future = std::async(std::launch::async, is_prime, SmallNumber);
  std::cout << "Execute is_prime function" << std::endl;

  /* Copy device memory to host */ 
  cudaMemcpy(&hostResult, devResult, sizeof(bool), cudaMemcpyDeviceToHost); 
  std::cout << "After Memcpy" << std::endl;

  std::future_status status;

  std::cout << "waiting...\n";
  do {
    status = future.wait_for(std::chrono::milliseconds(1));
  }while (status != std::future_status::ready); 

  bool result = future.get();
  std::cout << "Result : " << result << std::endl;

  /* Cleanup */ 
  cudaFree(devResult); 

  return 0;
}
