//
//  ViewController.m
//  Lesson3
//
//  Created by Andrey on 06/02/2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//    Создать структуру Human. Со свойствами “Name” (NSString), “Age”(NSInterger), “Gander”(NS_Enum).

typedef NS_ENUM(NSInteger, Gender) {
    male = 0,
    female = 1
};

struct Human {
    NSString *name;
    NSInteger age;
    Gender gender;
};


enum Operation {
    Sum,
    Subtract,
    Multiply,
    Divide
};

typedef enum Operation Operation;


typedef struct Human Human;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Создать массив строк и вывести его в консоль используя цикл.
    
    NSArray *numbers = @[@"Peter", @"Steve", @"Galina"];
    for (NSNumber *number in numbers) {
        NSLog(@"%@", number);
    }
    
    // Создать несколько экземпляров структуры и вывести их в консоль.
    
    Human peter;
    peter.name = @"Peter";
    peter.gender = 0;
    peter.age = 6;
    
    Human steve;
    steve.name = @"Steve";
    steve.gender = 0;
    steve.age = 96;
    
    Human galina = {@"Galina", 30, 1};
    
    NSLog(@"Human: \n name %@, \n gender %ld, \n age %ld", peter.name, (long)peter.gender, (long)peter.age);
    NSLog(@"Human: \n name %@, \n gender %ld, \n age %ld", steve.name, (long)steve.gender, (long)steve.age);
    NSLog(@"Human: \n name %@, \n gender %ld, \n age %ld", galina.name, (long)galina.gender, (long)galina.age);
    
    
    CGFloat result = calculate(1, 3, Divide);
    NSLog(@"the result is: %f", result);
    
}

//Улучшить калькулятор с помощью перечислений, чтобы все возможные методы (сложение, вычитание, деление, умножение) передавались в виде состояния;

CGFloat calculate(CGFloat a, CGFloat b, Operation operation) {
    
    switch (operation) {
        case Sum:
            return a + b;
            break;
        case Subtract:
            return a - b;
            break;
        case Divide:
            return a / b;
            break;
        case Multiply:
            return a * b;
            break;
            
    }
}

@end
