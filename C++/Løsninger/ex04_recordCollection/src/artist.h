#pragma once
#include <string>

class Artist{
private:
    std::string _name;
public:
//    Artist():_name("Default"){}
    Artist(std::string name):_name(name){}
    std::string getName(){
        return _name;
    }
};
