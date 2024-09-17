#include <iostream>
#include "artist.h"
#include "track.h"
#include "album.h"
#include "recordCollection.h"

using namespace std;

int main(int argc, char** argv)
{
    cout << "Exercise 4 - Record Collection" << endl << endl;

    RecordCollection rc;
    Artist db("David Bowie");
    Album as("Aladdin Sane", db);
    Track wtm("Watch that man", 425);
    as.addTrack(wtm);
    Track als("Aladdin Sane", 506);
    as.addTrack(als);
    Track dis("Drive-in Saturday", 429);
    as.addTrack(dis);
    Track pid("Panic in Detroit", 425);
    as.addTrack(pid);
    Track ca("Cracked Actor", 256);
    as.addTrack(ca);
    Track time("Time", 509);
    as.addTrack(time);
    Track tps("The prettiest star", 326);
    as.addTrack(tps);
    Track lstnt("Let's spend the night together", 303);
    as.addTrack(lstnt);
    Track tjg("The Jean Genie", 402);
    as.addTrack(tjg);
    Track lgs("Lady grinning soul", 346);
    as.addTrack(lgs);

    rc.addAlbum(as);
    Artist pf("Pink Floyd");
    Album m("Meddle",pf);
    Track ootd("One of these days", 557);
    m.addTrack(ootd);
    Track apow("A pillow of winds", 513);
    m.addTrack(apow);
    Track f("Fearless", 608);
    m.addTrack(f);
    Track st("San Tropez", 343);
    m.addTrack(st);
    Track s("Seamus", 216);
    m.addTrack(s);
    Track e("Echoes", 2331);
    m.addTrack(e);
    rc.addAlbum(m);
    cout << as.getTitle() << ": " << as.getTotalLength() << endl; //4047
    cout << m.getTitle() << ": " << m.getTotalLength() << endl; //4648
    cout << "Tracks in collection: " << rc.tracksInCollection() << endl; //16
    return 0;
}
