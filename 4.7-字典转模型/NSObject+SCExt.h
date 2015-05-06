

#import <Foundation/Foundation.h>

@interface NSObject (SCExt)

/**
 *方法名：- loadPlist:(NSString *) withType:(NSString *)
 *参数：plist文件名,plist文件根类型
 *功能：读取plist文件，并打印属性字符串
 *返回值：无
 *
 **/

- (void)loadPlist:(NSString *)plistName withType:(NSString *)type;

@end
