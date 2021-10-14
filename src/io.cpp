#include "io.hpp"

using namespace std;

void parseArgs(map<string, string> &args, int argc, const char *argv[])
{
    args = {{"--detector", "SHITOMASI"},    // SHITOMASI, HARRIS, FAST, BRISK, ORB, AKAZE, SIFT
            {"--descriptor", "BRISK"},      // BRISK, BRIEF, ORB, FREAK, AKAZE, SIFT
            {"--matcher", "MAT_BF"},        // MAT_BF, MAT_FLANN
            {"--matchDesc", "DES_BINARY"},  // DES_BINARY, DES_HOG
            {"--selector", "SEL_NN"},       // SEL_NN, SEL_KNN
            {"--bVisDetector", "false"},    // true, false
            {"--bVisMatcher", "true"}};     // true, false

    for (int i = 1; i < argc; i++)
    {
        if (args.find(argv[i]) != args.end())
        {
            args[argv[i]] = argv[i+1];
        }
    }
}