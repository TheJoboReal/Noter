#include "album.h"
#include "track.h"

Album::Album():artist("Default"){}

Album::Album(std::string title, Artist artist):
    title(title), artist(artist), count(0){}

std::string Album::getTitle(){
    return title;
}

Artist Album::getArtist(){
    return artist;
}

void Album::addTrack(Track track){
    tracks.push_back(track);
    count++;
}

int Album::getCount(){
    return count;
}

int Album::getTotalLength(){
    int sum =0;
    for(Track t : tracks){
        int sek = (t.getLength()/100)*60 + t.getLength()%100;
        sum += sek;
    }

    return (sum/60)*100 + sum%60;
}

