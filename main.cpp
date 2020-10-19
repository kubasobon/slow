#include <iostream>
#include <chrono>
#include <thread>
using namespace std;

const string USAGE = "Usage:\n\t<source> | slow [delay-milliseconds]";

int main(int argc, char *argv[]) {
    if (argc > 2) {
        cout << USAGE << endl;
        return 1;
    }

    int delay_milliseconds = 250;
    if (argc == 2) {
         delay_milliseconds = stoi(argv[1]);
    }

    string pipeInput;
    while(getline(cin, pipeInput)) {
        cout << pipeInput << endl;
        this_thread::sleep_for(chrono::milliseconds(delay_milliseconds));
    }

    return 0;
}
