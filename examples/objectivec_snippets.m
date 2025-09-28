// Objective-C: used for macOS and iOS development
#import <Foundation/Foundation.h>
int main() {
  @autoreleasepool {
    double x = 2.0, v = 3.0, m = 5.0, dm_dt = 0.1;
    double p = m * v;
    double NKTg1 = x * p;
    double NKTg2 = dm_dt * p;
    NSLog(@"p=%.2f NKTg1=%.2f NKTg2=%.2f", p, NKTg1, NKTg2);
  }
  return 0;
}
