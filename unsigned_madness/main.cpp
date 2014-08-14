#include <iostream>
int main(int argc, char const *argv[])
{
    unsigned int index = 0;
    // we do some update to the index here
    // e.g. computing a table position for discretizing smth.
    // for now let's just use some arbitrary number

    index = 2; // chosen by a fair dice roll

    // the fun part
    if (index > -1)
    {
        std::cout<<"all ok"<<std::endl;
    }
    else
    {
        std::cerr<<"I don't want to live in such world"<<std::endl;
    }
    std::cout<<"reason: (unsigned int) -1 == " << (unsigned int) -1<<std::endl;
    return 0;
}