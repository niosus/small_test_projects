#include <functional>
#include <iostream>
#include <chrono>
using namespace std;

class EventHandler
{
private:
    std::function<void(int)> _func;

public:
    inline void process(int i) const
    {
        // event occured
        _func(i);
    }

    void addHandler(std::function<void(int)> callback)
    {
        cout << "Handler added..." << endl;
        _func = callback;
    }
};

class MyClass
{
public:
    MyClass();
    void Callback(int x);
private:
    int private_x;
};

MyClass::MyClass()
{
    private_x = 5;
}

void MyClass::Callback(int x)
{
    // Does not need an explicit `instance` argument,
    // as `this` is set up properly
    private_x++;
}

int main(int argc, char const *argv[])
{
    using namespace std::placeholders; // for `_1`
    MyClass obj;
    EventHandler *handler = new EventHandler();
    handler->addHandler(std::bind(&MyClass::Callback, &obj, _1));
    int iterations = 1000000;


    auto start = std::chrono::system_clock::now();
    for (int i = 0; i < iterations; ++i)
    {
        handler->process(i);
    }
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds> 
                            (std::chrono::system_clock::now() - start);

    cout<<"elapsed time = " << duration.count() << " milliseconds" << endl;
    delete handler;
    return 0;
}