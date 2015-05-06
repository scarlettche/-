

#import "status.h"
#import <objc/runtime.h>

@interface status ()
//@property (nonatomic, strong )NSArray *statusArray;
@end

@implementation status : NSObject

+ (NSArray *)statusList{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"status.plist" ofType:nil];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *dicArray = dict[@"statuses"];
    NSMutableArray *statusArray = [NSMutableArray array];
    status *tmpStatus ;
    
    for (NSDictionary *dic in dicArray) {
        tmpStatus = [status objectWithDic:dic];
        
        [statusArray addObject:tmpStatus];
    }
    return statusArray;
}

+ (instancetype)objectWithDic:(NSDictionary *)dic{
    
    status *tmpStatus = [[status alloc] init];
    
    int count = 0;
    
    //遍历模型的所有成员属性
    Ivar *ivars = class_copyIvarList(self, &count);
    
    for (int i = 0; i < count; i++) {
        //取出成员变量名，处理后（去掉下划线）即为字典的key
        
        NSString *ivarName = @(ivar_getName(ivars[i]));
        //上一步的效果带一根下划线
        NSString *key = [ivarName substringFromIndex:1];
//        NSLog(@"%@",key);
        

//        NSLog(@"%@",@(ivar_getTypeEncoding(ivars[i])));
        
        //根据key找到字典中相应的value
        NSString *value = dic[key];
//        NSLog(@"%@",value);
        
        
        //取出变量成员属性
        NSString *ivarType = @(ivar_getTypeEncoding(ivars[i]));
        
        
//        [status setValue:value forKey:key];
        [tmpStatus setValue:value forKeyPath:key];
        
    }
    return tmpStatus;
    
}


@end
