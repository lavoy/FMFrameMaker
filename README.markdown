# FrameMaker

FrameMaker is an Objective-C library for simplifying, encapsulating, and optimizing view layout logic into a single block for each view.

`CGRect` frames are based upon the top left corner (`origin`) and the width and height (`size`). If you want to layout from the right, you have to do math. If you want to center, you have to do math. If you want to inset from the edges, you have to do math. With FrameMaker, you can forget about the math. You just specify the pieces you want to anchor, and FrameMaker figures out the rest.

- Layout a view using its right or (gasp) bottom edges
- Set edge insets for a view and let it size automatically
- Center vertically and/or horizontally with no math
- A single call to `-setFrame:` to minimize laying out the view hierarchy

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