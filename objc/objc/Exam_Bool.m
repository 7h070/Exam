#import <Foundation/Foundation.h>
//숫자 비교
BOOL compareNumbers(int number1, int number2){
    if(number1 == number2){
        return(YES);
    }
    else{
        return(NO);
    }
}

NSString *boolToString(BOOL yesOrNo){
    if(yesOrNo == YES){
        return(@"YES");
    }
    else{
        return(@"NO");
    }
}

void Exam_Bool (){
    BOOL areNumbersDifferent;
    
    areNumbersDifferent = compareNumbers (5, 5);              //YES
    NSLog (@"are %d and %d same? %@", 5, 5, boolToString(areNumbersDifferent));
    
    areNumbersDifferent = compareNumbers (23, 42);              //NO
    NSLog (@"are %d and %d same? %@", 33, 42, boolToString(areNumbersDifferent));
    
    //return (0);
} // main