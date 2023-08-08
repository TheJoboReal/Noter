
```cpp
#include <iostream>
#include <string>
#include <vector>
#include <fstream>

using namespace std;

void clearTerminal() {
    cout << "\033[2J\033[1;1H";   //Clear terminalen.
}

int main() {
    int readOrWrite;
    string input;
    vector<string> foods;

    while (true) {
        cout << "What do you want to do?" << endl;
        cout << "1: Read" << endl << "2: Write" << endl << "3: Clear" << endl;
        cout << ": ";

        cin >> readOrWrite;

        switch (readOrWrite) {
        case 1: {

            clearTerminal();

            ifstream inputFile("foods.txt"); // Open the file for reading

            if (inputFile.is_open()) {
                string line;

                while (getline(inputFile, line)) {
                    cout << line << endl; // Print each line from the file
                }

                inputFile.close(); // Close the file
                cout << "File read successfully." << endl;
            } else {
                cout << "Unable to open the file." << endl;
            }
            break;
        }

        case 2: {
            clearTerminal();
            ofstream file("foods.txt", ios::app); // Open the file for writing (append mode)

            if (file.is_open()) {
                cout << "Write 'Quit' when finished" << endl;

                while (true) {
                    cout << "What did you eat?: ";
                    cin >> input;

                    if (input == "Quit") {
                        break;
                    }
                    file << input << endl; // Write each input to the file
                }

                file.close(); // Close the file
                cout << "File written successfully." << endl;
            } else {
                cout << "Unable to open the file." << endl;
            }
            break;
        }

        case 3: {
            clearTerminal();
            ofstream file("foods.txt", ios::trunc); // Open the file and truncate (clear) its content

            if (file.is_open()) {
                file.close(); // Close the file
                cout << "File cleared successfully." << endl;
            } else {
                cout << "Unable to open the file." << endl;
            }
            break;
        }

        default:
            cout << "Invalid choice. Please try again." << endl;
            continue; // Continue to the next iteration of the loop
        }

        // Optionally, provide an exit condition for the loop
        string choice;
            clearTerminal();
        cout << "Do you want to continue? (yes/no): ";
        cin >> choice;
        if (choice == "no" || choice == "n") {
            break;
        }
    }

    return 0;
}

```