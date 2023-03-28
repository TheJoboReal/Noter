#pragma once

#include "artist.h"
#include "track.h"
#include <vector>

class Album
{
public:
    Album();
    Album(std::string title , Artist artist);
    std::string getTitle();
    int getCount();
    Artist getArtist();
    void addTrack(Track track);
    int getTotalLength();
private:
    std::string title;
    Artist artist;
    std::vector<Track> tracks;
    int count;
};
