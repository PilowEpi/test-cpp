#include "testCpp.hpp"

struct DataTest
{
    /* data */
    int data = 0;
};


int main(void)
{
    // Data filler
    DataTest *int1 = new DataTest;
    DataTest *int2 = new DataTest;
    DataTest *int3 = new DataTest;

    int1->data = 1;
    int2->data = 2;
    int3->data = 3;

    // Exo 1

    SystemQueue<DataTest> sq;

    sq.push_back(int1);
    sq.push_back(int2);
    sq.push_back(int3);

    std::cout << sq.get_size() << std::endl;
    std::cout << sq.pop_front()->data << std::endl;

    // Exo 2


    // Exo 3


    // Exo 4
}