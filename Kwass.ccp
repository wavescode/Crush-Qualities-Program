#include <iostream>
#include <string>

const int MAX_CRUSH_QUALITIES = 5; // Maximum number of qualities to mention

class Crush {
private:
    std::string name;
    std::string qualities[MAX_CRUSH_QUALITIES];
    int numQualities;

public:
    Crush(const std::string& n) : name(n), numQualities(0) {}

    void addQuality(const std::string& quality) {
        if (numQualities < MAX_CRUSH_QUALITIES) {
            qualities[numQualities] = quality;
            numQualities++;
        }
    }

    void displayQualities() {
        std::cout << "Qualities I like about you, " << name << ":" << std::endl;
        for (int i = 0; i < numQualities; ++i) {
            std::cout << "- " << qualities[i] << std::endl;
        }
    }
};

int main() {
    Crush myCrush("Name"); // Replace with your crush's name

    myCrush.addQuality("Your beautiful smile");
    myCrush.addQuality("Your intelligence");
    myCrush.addQuality("Your sense of humor");

    myCrush.displayQualities();

    return 0;
}
