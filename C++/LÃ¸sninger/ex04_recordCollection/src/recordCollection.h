#pragma once
#include "album.h"

class RecordCollection{
private:
    std::vector<Album> albums;
public:
    void addAlbum(Album album){
        albums.push_back(album);
    }

    int tracksInCollection(){
        int numberOfTracks = 0;
        for(Album a: albums){
            numberOfTracks += a.getCount();
        }

        return numberOfTracks;
    }
};
