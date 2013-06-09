//#define ARROW_WIDTH 12
//#define ARROW_HEIGHT 8

#define ARROW_WIDTH 0
#define ARROW_HEIGHT 0

@interface BackgroundView : NSView
{
    NSInteger _arrowX;
}

@property (nonatomic, assign) NSInteger arrowX;

@end
