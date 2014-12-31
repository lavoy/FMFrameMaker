# FrameMaker

FrameMaker is an Objective-C library for simplifying, encapsulating, and optimizing view layout logic into a single block for each view.

- Layout a view using its right or (gasp) bottom edges
- Center vertically and/or horizontally without any math
- Set edge insets or offset for a view and let it size itself
- Set just the left and right and don't worry about the width
- A single call to -setFrame: to minimize laying out the view hierarchy
- Of course you can still set left, top, width, and height manually

This library was inspired by [Masonry] (https://github.com/Masonry/Masonry), but without the AutoLayout.

#### A Few Examples

```objc
#import "FMFrameMaker.h"
```
Center a sized view
```objc
[view fm_makeFrame:^(FMFrameMaker *frameMaker) {
	frameMaker.size = CGSizeMake(100, 100);
	frameMaker.centered = YES;
}];
```
Show a sized view 10 points from the bottom right corner
```objc
[view fm_makeFrame:^(FMFrameMaker *frameMaker) {
	frameMaker.size = CGSizeMake(100, 100);
	frameMaker.bottom = 10;
	frameMaker.right = 10;
}];
```
Show a view sized correctly inside the edges of (40, 20, 20, 20)
```objc
[view fm_makeFrame:^(FMFrameMaker *frameMaker) {
	frameMaker.edgeInsets = UIEdgeInsetsMake(40, 20, 20, 20);
}];
```
Show a view offset 40 vertically and 20 horizontally
```objc
[view fm_makeFrame:^(FMFrameMaker *frameMaker) {
	frameMaker.offset = UIOffsetMake(40, 20);
}];
```

*Check out the demo project for more examples.*


#### Requirements

FrameMaker uses simple APIs and is compatable all the way back to iOS 2.0.

### ARC

Yuuuup!

### Creator

[Andy LaVoy](http://github.com/lavoy)  
[@lavoy](https://twitter.com/lavoy)

### License

FrameMaker is available under the [MIT] (http://opensource.org/licenses/MIT) license.