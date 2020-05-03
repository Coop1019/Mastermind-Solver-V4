#include <iostream>
#include <vector>

void createGuesses(int allVals[1296][4]);
int getReds(int allVals[1296][4], int answer[4], int guess);
int getWhites(int allVals[1296][4], int answer[4], int guess);

int main()
{
    int answer[4] = {};//{ 4, 5, 3, 3};

    printf("Your Guess: ");
    scanf("%d %d %d %d", &answer[0], &answer[1], &answer[2], &answer[3]);

    srand(time(nullptr));

    int possibleGuesses[1296][4] = {};
    int isGuessWrong[1296] = {};

    int guesses[1296][3]; // guess index, reds, whites

    createGuesses(possibleGuesses);

    int curGuess = 0;

    guesses[curGuess][0] = 7;
    guesses[curGuess][1] = getReds(possibleGuesses, answer, 7);
    guesses[curGuess][2] = getWhites(possibleGuesses, answer, 7);

    printf("Guess %d ( %d %d %d %d) %d Red, %d White\n", curGuess + 1, possibleGuesses[guesses[curGuess][0]][0], possibleGuesses[guesses[curGuess][0]][1],
           possibleGuesses[guesses[curGuess][0]][2], possibleGuesses[guesses[curGuess][0]][3], guesses[curGuess][1], guesses[curGuess][2]);



    while (guesses[curGuess][1] != 4)
    {
        curGuess++;
        int invalid = 0;
        int guess;
        do
        {
            invalid = 0;
            guess = rand() % 1296;
            for (int i = curGuess - 1; i >= 0; i--)
            {

                if (getReds(possibleGuesses, possibleGuesses[guesses[i][0]], guess) != guesses[i][1])
                    invalid = 1;
                if (getWhites(possibleGuesses, possibleGuesses[guesses[i][0]], guess) != guesses[i][2])
                    invalid = 1;
            }
        } while (invalid);

        guesses[curGuess][0] = guess;
        guesses[curGuess][1] = getReds(possibleGuesses, answer, guess);
        guesses[curGuess][2] = getWhites(possibleGuesses, answer, guess);
        printf("Guess %d ( %d %d %d %d) %d Red, %d White\n", curGuess + 1, possibleGuesses[guesses[curGuess][0]][0], possibleGuesses[guesses[curGuess][0]][1],
            possibleGuesses[guesses[curGuess][0]][2], possibleGuesses[guesses[curGuess][0]][3], guesses[curGuess][1], guesses[curGuess][2]);
    }

    //for (int i = 0; i < 1296; i++)
    //{
    //
    //
    //    guesses[i][0] = i;
    //    guesses[i][1] = getReds(possibleGuesses, answer, i);
    //    guesses[i][2] = getWhites(possibleGuesses, answer, i);
//
    //    printf("Guess %d ( %d %d %d %d) %d Red, %d White\n", i, possibleGuesses[i][0], possibleGuesses[i][1], possibleGuesses[i][2], possibleGuesses[i][3], guesses[i][1], guesses[i][2]);
    //}

    return 0;
}

void createGuesses(int allVals[1296][4])
{
    for (int i = 0; i < 1296; i++)
    {
        allVals[i][3] = i % 6 + 1;
        allVals[i][2] = (i / 6) % 6 + 1;
        allVals[i][1] = (i / 36) % 6 + 1;
        allVals[i][0] = (i / 216) % 6 + 1;

        //printf("%d %d %d %d\n", allVals[i][0], allVals[i][1], allVals[i][2], allVals[i][3]);
    }
}

int getReds(int allVals[1296][4], int answer[4], int guess)
{
    int reds = 0;
    for (int i = 0; i < 4; i++)
    {
        if (allVals[guess][i] == answer[i])
            reds++;
    }
    return reds;
}
int getWhites(int allVals[1296][4], int answer[4], int guess)
{
    int takenAns[4] = {};
    int takenGuess[4] = {};
    int whites = 0;

    if (allVals[guess][0] == answer[0])
    {
        takenAns[0] = 1;
        takenGuess[0] = 1;
    }
    if (allVals[guess][1] == answer[1])
    {
        takenAns[1] = 1;
        takenGuess[1] = 1;
    }
    if (allVals[guess][2] == answer[2])
    {
        takenAns[2] = 1;
        takenGuess[2] = 1;
    }
    if (allVals[guess][3] == answer[3])
    {
        takenAns[3] = 1;
        takenGuess[3] = 1;
    }


    if (!takenGuess[0])
    {
        if (allVals[guess][0] == answer[1] && !takenAns[1])
        {
            takenAns[1] = 1;
            whites++;
        }
        else if (allVals[guess][0] == answer[2] && !takenAns[2])
        {
            takenAns[2] = 1;
            whites++;
        }
        else if (allVals[guess][0] == answer[3] && !takenAns[3])
        {
            takenAns[3] = 1;
            whites++;
        }
    }

    if (!takenGuess[1])
    {
        if (allVals[guess][1] == answer[0] && !takenAns[0])
        {
            takenAns[0] = 1;
            whites++;
        }
        else if (allVals[guess][1] == answer[2] && !takenAns[2])
        {
            takenAns[2] = 1;
            whites++;
        }
        else if (allVals[guess][1] == answer[3] && !takenAns[3])
        {
            takenAns[3] = 1;
            whites++;
        }
    }

    if (!takenGuess[2])
    {
        if (allVals[guess][2] == answer[0] && !takenAns[0])
        {
            takenAns[0] = 1;
            whites++;
        }
        else if (allVals[guess][2] == answer[1] && !takenAns[1])
        {
            takenAns[1] = 1;
            whites++;
        }
        else if (allVals[guess][2] == answer[3] && !takenAns[3])
        {
            takenAns[3] = 1;
            whites++;
        }
    }

    if (!takenGuess[3])
    {
        if (allVals[guess][3] == answer[0] && !takenAns[0])
        {
            takenAns[0] = 1;
            whites++;
        }
        else if (allVals[guess][3] == answer[1] && !takenAns[1])
        {
            takenAns[1] = 1;
            whites++;
        }
        else if (allVals[guess][3] == answer[2] && !takenAns[2])
        {
            takenAns[2] = 1;
            whites++;
        }
    }
    return whites;
}