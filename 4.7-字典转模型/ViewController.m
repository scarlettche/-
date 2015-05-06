

#import "ViewController.h"
#import "status.h"
#import "NSObject+SCExt.h"

@interface ViewController ()
@property (nonatomic, strong)NSArray *tmpStatus;
@end

@implementation ViewController

- (NSArray *)tmpStatus{
    if (!_tmpStatus) {
        _tmpStatus = [status statusList];
    }
    return _tmpStatus;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    NSLog(@"%lu",self.tmpStatus.count);
  
    
    
    
    //分类测试
//    [self printAttributeFromDictionaryPlist:@"status.plist"];
    [self loadPlist:@"status.plist" withType:@"NSDictionary"];

    
}





@end
