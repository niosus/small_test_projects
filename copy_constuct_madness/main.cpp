#include <vector>
#include <iostream>
using namespace std;

struct A
{
    A() {}
    ~A() {}
    A(const A& a)
    {
        this->sourceOfEvil = new double[1];
        this->sourceOfEvil[0] = a.sourceOfEvil[0];
        this->num = a.num;
    }
    int num;
    double *sourceOfEvil;
};


int main(int argc, char const *argv[])
{
    A a;
    a.sourceOfEvil = new double[1];
    a.sourceOfEvil[0] = 1;
    a.num = 0;
    cout << "sourceOfEvil is " << a.sourceOfEvil[0] << " while num is " << a.num<< endl;

    // now add this object to the vector (just for example)
    vector<A> vect;
    vect.push_back(a);
    cout << "sourceOfEvil in vector is " << vect[0].sourceOfEvil[0]<< " while num is " << vect[0].num << endl;

    // and change the contents of the vector
    vect[0].sourceOfEvil[0] = 3;
    vect[0].num = 3;

    // now let's check the old a object
    cout << "sourceOfEvil is not changed: " << a.sourceOfEvil[0] << " and num too: " << a.num<< endl;

    // clean up (ugly)
    delete[] a.sourceOfEvil;
    delete[] vect[0].sourceOfEvil;
    return 0;
}