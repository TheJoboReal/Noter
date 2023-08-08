#include <iostream>
#include "track.h"

Track::Track():title("Default"), length(0){}

Track::Track(std::string title, int length):title(title), length(length){}

int Track::getLength(){
    return length;
}

std::string Track::getTitle(){
    return title;
}
