//
//  main.m
//  WordEffects
//
//  Created by KevinT on 2018-02-12.
//  Copyright © 2018 Kevin T., Chris E, Tyson P. All rights reserved.
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
      inputString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
        NSLog(@"You entered the string %s.", inputChars);
      if (inputNumber[0] == '1') {
        inputString = [inputString uppercaseString];
      NSLog(@"the string is %@",inputString);
      
      } else if (inputNumber[0] == '2') {
        inputString = [inputString lowercaseString];
      NSLog(@"The string is %@",inputString);
      
      } else if (inputNumber[0] == '3') {
      NSLog(@"The string is %lu",(unsigned long)[inputString integerValue]);

      } else if (inputNumber[0] == '4') {
      NSLog(@"The string is %@",inputString);
        inputString = [inputString stringByAppendingString:@", eh?"];
        

      } else if (inputNumber[0] == '5') {
        NSLog(@"The string is %@",inputString);

          if([inputString hasSuffix:@"?"]){

          NSLog(@"I don't know.");
          }
        else if([inputString hasSuffix:@"!"]){
          NSLog(@"Whoa, calm down!");
        }

        }
      else if (inputNumber[0] == '6') {
        inputString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
      NSLog(@"The string is %@",inputString);
      
      } else {
        NSLog(@"enter a number 1-6");
      }
      
      // Log the memory address of inputString

      NSLog(@"The string address is %p",inputString);
      NSLog(@"Your string has been changed to %@",inputString);

      
      // print as a c string
      //printf("Your string is %s\n", inputChars);
      
      // convert char array to an NSString object
      //NSString *inputString = [NSString stringWithUTF8String:inputChars];
      

    }
    
  }
  return 0;
}



