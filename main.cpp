#include <cmath>
#include <iostream>
#include <string>
#include "config.h"

int main(int argc, char* argv[])
{
  if (argc < 2) {
    std::cout << argv[0] << " Version " << X0_CMAKE_VERSION_MAJOR 
            << "." << X0_CMAKE_VERSION_MINOR
            << "." << X0_CMAKE_VERSION_PATCH
            << "." << X0_CMAKE_VERSION_TWEAK  << std::endl;
    std::cout << "Usage: " << argv[0] << " number" << std::endl;
    return 1;
  }

  const double inputValue = std::stod(argv[1]);

  const double outputValue = sqrt(inputValue);
  std::cout << "The square root of " << inputValue << " is " << outputValue
            << std::endl;
  return 0;
}
