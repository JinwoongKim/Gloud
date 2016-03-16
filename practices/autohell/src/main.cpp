#include <iostream>
#include "helper.h"
#include "../inc/add.h"

int main(){
  Add add_obj;
  std::cout << "Result : " << add_obj.add(1, 2) << std::endl;
  return 0;
}

