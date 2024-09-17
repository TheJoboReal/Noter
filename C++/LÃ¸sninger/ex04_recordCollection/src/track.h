#pragma once

#include <string>

class Track
{
public:
    Track();
    Track(std::string title, int length);
    std::string getTitle();
    int getLength();
private:
    std::string title;
    int length;
};
