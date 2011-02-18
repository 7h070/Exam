#import <Foundation/Foundation.h>

// --------------------------------------------------

typedef enum {
	kRedColor,
	kGreenColor,
	kBlueColor
} ShapeColor;


// --------------------------------------------------


typedef struct {
	int x, y, width, height;
} ShapeRect;


// --------------------------------------------------

NSString *colorName (ShapeColor color)
{
	NSString *colorName;
	
	switch (color) {
		case kRedColor:
			colorName = @"red";
			break;
		case kGreenColor:
			colorName = @"green";
			break;
		case kBlueColor:
			colorName = @"blue";
			break;
		default:
			colorName = @"oops! Unexpected color";
			break;
	}
	
	return (colorName);
	
} // colorName


// --------------------------------------------------
// NSObject is created by Apple
// Shape is created by us
// Shape inherits NSObject

@interface Shape : NSObject
{
    // the data used to compose other data are called as instance variables (iVars).
	ShapeColor  fillColor;
	ShapeRect   bounds;
}
// (nouns) + verb + (nouns)
- (void) setFillColor: (ShapeColor) fillColor;
- (void) setBounds: (ShapeRect) bounds;
- (void) draw;

@end // Shape


@implementation Shape

- (void) setFillColor: (ShapeColor) c
{
    // S      V C
	fillColor = c;
} // setFillColor

- (void) setBounds: (ShapeRect) b
{
	bounds = b;
} // setBounds



@end // Shape




// --------------------------------------------------

@interface Triangle : Shape
@end // Triangle


@implementation Triangle

- (void) draw
{
	NSLog (@"drawing a star at (%d %d %d %d) in %@",
		   bounds.x, bounds.y, 
		   bounds.width, bounds.height,
		   colorName(fillColor));
} // draw

@end // Triangle




// --------------------------------------------------

@interface Circle : Shape

@end // Circle


@implementation Circle




- (void) draw
{
	NSLog (@"drawing a circle at (%d %d %d %d) in %@",
		   bounds.x, bounds.y, 
		   bounds.width, bounds.height,
		   colorName(fillColor));
} // draw

@end // Circle




// --------------------------------------------------

@interface Rectangle : Shape

@end // Rectangle


@implementation Rectangle

- (void) draw
{
	NSLog (@"drawing a rectangle at (%d %d %d %d) in %@",
		   bounds.x, bounds.y, 
		   bounds.width, bounds.height,
		   colorName(fillColor));
} // draw

@end // Rectangle


// --------------------------------------------------

@interface Star : Shape

@end // Star


@implementation Star



@end // Star



// --------------------------------------------------

// noun (return value) + verb (operation) + noun (argument or parameter)
// output + verb + input
// after + verb + before
// complete + verb + start
// product or finished goods + verb + raw material or resource

// work in process ==> return values other than void
// finished good ==> void
void drawShapes (id shapes[], int count)
{
	int i;
	
	for (i = 0; i < count; i++) {
		id shape = shapes[i];
        
        // every verb can adopt only specific nouns as its subject. The specific nouns are instances of the class in which the verb is declared and defined.
        // S    V
        // noun + verb
		[shape draw];
	}
	
} // drawShapes



// --------------------------------------------------
// The main function.  Make the shapes and draw them

int ShapeDrow (int argc, const char * argv[]) 
{
    // what is a data type? 
    // primitive (general) type: from C language. ex) int, float, char..
    // custom type: class + instance ==> object
    
    // Section 1: the location of data ==> variable, file, database, web
    // Section 2: the origin of data ==> class (mother) and instance (child) ==> object
	
    // the types of data
    // 1. primitive
    // 2. class
    // 2-1. classes created by apple
    // 2-2. classes created by us
    
    // what is data?
    // data = word = noun
    
    
    // declare a noun
    id shapes[4]; 
	
	ShapeRect rect0 = { 10, 20, 10, 30 };
	
    //  S     V       C
    //             S     V               
    shapes[0] = [Circle new];
    
    // class and instance ==> object
    // object = nouns = S or C
    
    // words = noun + verb
    // A noun is an object
    // object is either class or instance
    // then, what is a verb?
    // a verb also is from a class
    
    
    // classes are created by apple or us.
    // we define two kinds of words ==> noun, verb
    
    
    //   S         V         C
	[shapes[0] setBounds: rect0];
    
    // S  V      C
    // I like an apple
    
    //   S          V           C
	[shapes[0] setFillColor: kRedColor];
	
	ShapeRect rect1 = { 30, 40, 50, 60 };
	shapes[1] = [Rectangle new];
	[shapes[1] setBounds: rect1];
	[shapes[1] setFillColor: kGreenColor];
	
	ShapeRect rect2 = { 50, 60, 37, 29 };
	shapes[2] = [Star new];
	[shapes[2] setBounds: rect2];
	[shapes[2] setFillColor: kBlueColor];
	
	ShapeRect rect3 = { 70, 80, 80, 50 };	
	shapes[3] = [Triangle new];
	[shapes[3] setBounds: rect3];
	[shapes[3] setFillColor: kRedColor];
	
	//   V          C 
    drawShapes (shapes, 4); 
    
    // objective-c and C
    // web browser and extention
    // Text and GUI
    
	
	return (0);
	
} // main


//draw()를 Shape 클래스에 포함시킨 코드.

