//单例宏

#define kSingletonInterface(className) +(className *) shared##className;

#define kSingletonImplements(className) \
static className * instance;\
+(className *)shared##className\
{\
    if (instance == nil) {\
        instance = [[self alloc] init];\
    }\
    return instance;\
}\
+(id)allocWithZone:(struct _NSZone *)zone\
{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        instance = [super allocWithZone:zone];\
    });\
    return instance;\
}