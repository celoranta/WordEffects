//
//  main.m
//  WordEffects
//
//  Created by KevinT on 2018-02-12.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    while (TRUE) {
      
      char inputNumber[255];
      
      printf("Input a number 1-6: ");
      
      fgets(inputNumber, 255, stdin);
      
      char inputChars[255];
      
      printf("Input a string: ");
      // limit input to max 255 characters
      fgets(inputChars, 255, stdin);
      
      NSString *inputString = [[NSString alloc] initWithCString:inputChars encoding:NSUTF8StringEncoding];
      
      if (inputNumber[0] == '1') {
        NSLog(@"You entered the number 1 and string %s.", inputChars);
      } else if (inputNumber[0] == '2') {
        NSLog(@"You entered the number 2 and string %s.", inputChars);
      } else if (inputNumber[0] == '3') {
        NSLog(@"You entered the number 3 and string %s.", inputChars);
      } else if (inputNumber[0] == '4') {
        NSLog(@"You entered the number 4 and string %s.", inputChars);
      } else if (inputNumber[0] == '5') {
        NSLog(@"You entered the number 5 and string %s.", inputChars);
      } else if (inputNumber[0] == '6') {
        NSLog(@"You entered the number 6 and string %s.", inputChars);
      } else {
        NSLog(@"enter a number 1-6");
      }
      
      
      // print as a c string
      //printf("Your string is %s\n", inputChars);
      
      // convert char array to an NSString object
      //NSString *inputString = [NSString stringWithUTF8String:inputChars];
      
      // print NSString object
      NSLog(@"Input was: %@", inputString);
    }
    
  }
  return 0;
}
