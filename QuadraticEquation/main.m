//
//  main.m
//  QuadraticEquation
//
//  Created by Daniil Rassadin on 20/12/23.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double a;
        
        NSLog(@"Enter the first coefficient:");
        scanf("%lf", &a);

        if (a == 0) {
            NSLog(@"This is not a quadratic equation. The first coefficient should not be zero.");
            return 0;
        }
        
        double b, c;
        
        NSLog(@"Enter the second coefficient:");
        scanf("%lf", &b);
        NSLog(@"Enter the third coefficient:");
        scanf("%lf", &c);
        
        double discriminant = b * b - 4 * a * c;
        
        if (discriminant < 0) {
            NSLog(@"The equation does not have any roots.");
            return 0;
        }
        
        if (discriminant == 0) {
            double root = -b / (2 * a);
            NSLog(@"The equation has one root: %f.", root);
            return 0;
        }
        
        double firstRoot = (-b + sqrt(discriminant)) / 2 * a;
        double secondRoot = (-b - sqrt(discriminant)) / 2 * a;
        NSLog(@"The equation has two roots: %f and %f.", firstRoot, secondRoot);
    }
    return 0;
}
