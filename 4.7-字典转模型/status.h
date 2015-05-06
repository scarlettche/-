

#import <Foundation/Foundation.h>

@interface status : NSObject
@property (nonatomic, assign)NSInteger attitudes_count;
@property (nonatomic, assign)NSInteger comments_count;
@property (nonatomic, copy) NSString *created_at;
@property (nonatomic, copy) NSString *idstr;
@property (nonatomic, copy) NSString *source;
@property (nonatomic, copy) NSString *text;


+ (NSArray *)statusList;

@end
