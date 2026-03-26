#import <UIKit/UIKit.h>

%hook UnityAppController
- (void)applicationDidBecomeActive:(id)application {
    %orig;
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hara Store" 
            message:@"بەخێربێیت بۆ گەورەترین ستۆری کوردی!\nئەم ئەپە مۆد کراوە لە لایەن هاریاد" 
            preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction *visitAction = [UIAlertAction actionWithTitle:@"سەردانی ستۆر" 
            style:UIAlertActionStyleDefault 
            handler:^(UIAlertAction * action) {
                [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/v_kurd_channel"]];
            }];

        [alert addAction:visitAction];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    });
}
%end
