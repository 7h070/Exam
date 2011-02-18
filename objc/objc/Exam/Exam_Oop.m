#import <Foundation/Foundation.h>

//Indiretion
//ex1)
indiretion1()
{
    NSLog (@"The numbers from 1 to 10:");
    
    int i;
    for (i = 1; i <= 10; i++) {
        NSLog (@"%d\n", i);
    }   
    
} // main

//ex2) More effective ways to..
indiretion2()
{
    int count = 10; //<-- Changed portion
    
    NSLog (@"The numbers from 1 to %d:", count);
    int i;
    for (i = 1; i <= count; i++) {
        NSLog (@"%d\n", i);
    } 
    
} // main

//ex3)
indiretion3()
{                           // &adress value
    const char *words[4] = { "jejudo", "do young min", "samyang", "ramyon" };
    
    int wordCount = 4;
    int i;
    
    for (i = 0; i < wordCount; i++) {
        NSLog (@"%s is %d characters long", words[i], strlen(words[i]));
    }
    //return (0);
} // main

//ex4)
indiretion4()
{
    
    FILE *wordFile = fopen ("/tmp/words.txt", "r");
    
    char word[100];
    while (fgets(word, 200, wordFile)) {
        NSLog (@"%s is %d characters long", word, strlen(word));
    }
    fclose (wordFile);
    return (0);
} // main