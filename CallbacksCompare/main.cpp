#include <iostream>
#include <functional>
#include <chrono>
#include "c11callback.h"
#include "event_handler_abstract.h"
#include "event_handler_impl.h"
#include "java_style_callback.h"
using namespace std;

int runJavaStyle(const int iterations)
{
    EventHandlerAbstract* eventHandler = new EventHandlerImpl;
    JavaStyleCallbackTester tester(eventHandler);
    auto start = std::chrono::system_clock::now();
    for (int i = 0; i < iterations; ++i)
    {
        tester.sum(i);
    }
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>
                            (std::chrono::system_clock::now() - start);
    delete eventHandler;
    return duration.count();
}

int runC11Style(const int iterations)
{
    using namespace std::placeholders; // for `_1`
    C11CallbackTester obj;
    EventHandler *handler = new EventHandler();
    handler->addHandler(std::bind(&C11CallbackTester::Callback, &obj, _1));

    auto start = std::chrono::system_clock::now();
    for (int i = 0; i < iterations; ++i)
    {
        handler->process(i);
    }
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>
                            (std::chrono::system_clock::now() - start);
    delete handler;
    return duration.count();
}

int main(int argc, char const *argv[])
{
    int iter = 1000000;
    int repeat = 10;
    auto duration = runJavaStyle(iter);
    for (int i = 0; i < repeat - 1 ; ++i)
    {
        duration+=runJavaStyle(iter);
    }
    cout<<"java style callbacks elapsed time = " << duration / repeat << " milliseconds" << endl;
    duration = runC11Style(iter);
    for (int i = 0; i < repeat - 1 ; ++i)
    {
        duration+=runC11Style(iter);
    }
    cout<<"c++11 style callbacks elapsed time = " << duration / repeat << " milliseconds" << endl;
    return 0;
}
