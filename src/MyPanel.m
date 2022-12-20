#import "MyPanel.h"

@implementation MyPanel
- (void)setStateTo:(id)theState
{
	if(nekoState == theState)
		return;
	//printf("state %d\n", theState);
	tickCount = 0;
	stateCount = 0;
	nekoState = theState;
}

- (id)initWithContentRect:(NSRect)contentRect styleMask:(NSWindowStyleMask)styleMask backing:(NSBackingStoreType)bufferingType defer:(BOOL)deferCreation
{
	self = [super initWithContentRect:contentRect styleMask:NSWindowStyleMaskBorderless backing:bufferingType defer:deferCreation];
	[self setBecomesKeyOnlyIfNeeded:YES];
	[self setLevel:NSStatusWindowLevel];
	[self setOpaque:NO];
	[self setCanHide:NO];
	[self setIgnoresMouseEvents:YES];
	[self setMovableByWindowBackground:NO];
	[self setFrame:NSMakeRect(0.0f, 0.0f, 32.0f, 32.0f) display:0];
	[self center];
	[self setBackgroundColor:[NSColor clearColor]];
	NSBundle *bundle = [NSBundle mainBundle];
	
	NSArray *arguments = [[NSProcessInfo processInfo] arguments];
	NSString *folder = @"neko";
	
	if (arguments.count > 1) {
		if ([arguments[1] isEqual: @"-dog"]){
			folder = @"dog";
		}
		else if ([arguments[1] isEqual: @"-tomoyo"]){
			folder = @"tomoyo";
		}
		else if ([arguments[1] isEqual: @"-bsd"]){
			folder = @"bsd";
		}
		else if ([arguments[1] isEqual: @"-tora"]){
			folder = @"tora";
		}
		else if ([arguments[1] isEqual: @"-buddy"]){
			folder = @"buddy";
		}
		else if ([arguments[1] isEqual: @"-h"]){
			printf("%s\n\n", "Usage: neko [<options>]");
			printf("%s\n", "Option are:");
			printf("%s\n", "-neko Use neko gif");
			printf("%s\n", "-dog Use dog gif");
			printf("%s\n", "-tomoyo Use tomoyo gif");
			printf("%s\n", "-bsd Use bsd gif");
			printf("%s\n", "-tora Use tora gif");
			printf("%s\n", "-buddy Use buddy gif");
			[[NSApplication sharedApplication] terminate:nil];
		}
		else {
			printf("Error: Invalid option\n");
			printf("%s\n\n", "Usage: neko [<options>]");
			printf("%s\n", "Option are:");
			printf("%s\n", "-neko Use neko gif");
			printf("%s\n", "-dog Use dog gif");
			printf("%s\n", "-tomoyo Use tomoyo gif");
			printf("%s\n", "-bsd Use bsd gif");
			printf("%s\n", "-tora Use tora gif");
			printf("%s\n", "-buddy Use buddy gif");
			[[NSApplication sharedApplication] terminate:nil];
		}
	}
	
	stop = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/mati2"] ofType:@"gif"]], nil];
	[stop retain];
	jare = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/jare2"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/mati2"] ofType:@"gif"]], nil];
	[jare retain];
	kaki = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/kaki1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/kaki2"] ofType:@"gif"]], nil];
	[kaki retain];
	akubi = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/mati3"] ofType:@"gif"]], nil];
	[akubi retain];
	sleep = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/sleep1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/sleep2"] ofType:@"gif"]], nil];
	[sleep retain];
	awake = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/awake"] ofType:@"gif"]], nil];
	[awake retain];
	u_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/up1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/up2"] ofType:@"gif"]], nil];
	[u_move retain];
	d_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/down1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/down2"] ofType:@"gif"]], nil];
	[d_move retain];
	l_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/left1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/left2"] ofType:@"gif"]], nil];
	[l_move retain];
	r_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/right1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/right2"] ofType:@"gif"]], nil];
	[r_move retain];
	ul_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/upleft1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/upleft2"] ofType:@"gif"]], nil];
	[ul_move retain];
	ur_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/upright1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/upright2"] ofType:@"gif"]], nil];
	[ur_move retain];
	dl_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/dwleft1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/dwleft2"] ofType:@"gif"]], nil];
	[dl_move retain];
	dr_move = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/dwright1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/dwright2"] ofType:@"gif"]], nil];
	[dr_move retain];
	u_togi = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/utogi1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/utogi2"] ofType:@"gif"]], nil];
	[u_togi retain];
	d_togi = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/dtogi1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/dtogi2"] ofType:@"gif"]], nil];
	[d_togi retain];
	l_togi = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/ltogi1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/ltogi2"] ofType:@"gif"]], nil];
	[l_togi retain];
	r_togi = [NSArray arrayWithObjects:
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/rtogi1"] ofType:@"gif"]],
		[[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:[NSString stringWithFormat:@"%@%@", folder, @"_gif/rtogi2"] ofType:@"gif"]], nil];
	[r_togi retain];
	
	[self setStateTo:stop];
	
	[NSTimer scheduledTimerWithTimeInterval:0.125f target:self selector:@selector(handleTimer:) userInfo:nil repeats:YES];
	return self;
}

- (void)calcDxDyForX:(float)x Y:(float)y
{
	float		MouseX, MouseY;
	float		DeltaX, DeltaY;
	float		Length;
	
	NSPoint p = [NSEvent mouseLocation];
	MouseX = p.x;
	MouseY = p.y;
	
	DeltaX = floor(MouseX - x - 16.0f);
	DeltaY = floor(MouseY - y);
	
	Length = hypotf(DeltaX, DeltaY);
	
	if (Length != 0.0f) {
		if (Length <= 13.0f) {
			moveDx = DeltaX;
			moveDy = DeltaY;
		} else {
			moveDx = (13.0f * DeltaX) / Length;
			moveDy = (13.0f * DeltaY) / Length;
		}
	} else {
		moveDx = moveDy = 0.0f;
	}
}

- (BOOL)isnekoMoveStart
{
	return moveDx > 6 || moveDx < -6 || moveDy > 6 || moveDy < -6;
}

- (void)advanceClock
{
	if (++tickCount >= 255) {
		tickCount = 0;
    }
	
    if (tickCount % 2 == 0) {
		if (stateCount < 255) {
			stateCount++;
		}
    }
}

- (void)nekoDirection
{
    id			NewState;
    double		LargeX, LargeY;
    double		Length;
    double		SinTheta;
	
    if (moveDx == 0.0f && moveDy == 0.0f) {
		NewState = stop;
    } else {
		LargeX = (double)moveDx;
		LargeY = (double)moveDy;
		Length = sqrt(LargeX * LargeX + LargeY * LargeY);
		SinTheta = LargeY / Length;
		//printf("SinTheta = %f\n", SinTheta);
		
		if (moveDx > 0) {
			if (SinTheta > 0.9239) {
				NewState = u_move;
			} else if (SinTheta > 0.3827) {
				NewState = ur_move;
			} else if (SinTheta > -0.3827) {
				NewState = r_move;
			} else if (SinTheta > -0.9239) {
				NewState = dr_move;
			} else {
				NewState = d_move;
			}
		} else {
			if (SinTheta > 0.9239) {
				NewState = u_move;
			} else if (SinTheta > 0.3827) {
				NewState = ul_move;
			} else if (SinTheta > -0.3827) {
				NewState = l_move;
			} else if (SinTheta > -0.9239) {
				NewState = dl_move;
			} else {
				NewState = d_move;
			}
		}
    }
	
    [self setStateTo:NewState];
}

- (void)handleTimer:(NSTimer*)timer
{
	float x = [self frame].origin.x;
	float y = [self frame].origin.y;
	//printf("paint %d %d\n", time(NULL), tickCount % [nekoState count]);
	
	[self calcDxDyForX:x Y:y];
	BOOL isnekoMoveStart = [self isnekoMoveStart];
	
    if(nekoState != sleep) {
		[view setImageTo:(NSImage*)[nekoState objectAtIndex:tickCount % [nekoState count]]];
    } else {
		[view setImageTo:(NSImage*)[nekoState objectAtIndex:(tickCount>>2) % [nekoState count]]];
    }
	
	[self advanceClock];
	
    if(nekoState == stop) {
		if (isnekoMoveStart) {
			[self setStateTo:awake];
			goto breakout;
		}
		if (stateCount < 4) {
			goto breakout;
		}
		/*if (moveDx < 0 && x <= 0) {
		[self setStateTo:l_togi];
		} else if (moveDx > 0 && x >= WindowWidth - 32) {
			[self setStateTo:r_togi];
		} else if (moveDy < 0 && y <= 0) {
			[self setStateTo:u_togi];
		} else if (moveDy > 0 && y >= WindowHeight - 32) {
			[self setStateTo:d_togi];
		} else {*/
		[self setStateTo:jare];
		//}
	} else if(nekoState == jare) {
		if (isnekoMoveStart) {
			[self setStateTo:awake];
			goto breakout;
		}
		if (stateCount < 10) {
			goto breakout;
		}
		[self setStateTo:kaki];
	} else if(nekoState == kaki) {
		if (isnekoMoveStart) {
			[self setStateTo:awake];
			goto breakout;
		}
		if (stateCount < 4) {
			goto breakout;
		}
		[self setStateTo:akubi];
	} else if(nekoState == akubi) {
		if (isnekoMoveStart) {
			[self setStateTo:awake];
			goto breakout;
		}
		if (stateCount < 6) {
			goto breakout;
		}
		[self setStateTo:sleep];
	} else if(nekoState == sleep) {
		if (isnekoMoveStart) {
			[self setStateTo:awake];
			goto breakout;
		}
	} else if(nekoState == awake) {
		if (stateCount < 3) {
			goto breakout;
		}
		[self nekoDirection];	/* 猫が動く向きを求める */
	} else if(nekoState == u_move || nekoState == d_move || nekoState == l_move || nekoState == r_move || nekoState == ul_move || nekoState == ur_move || nekoState == dl_move || nekoState == dr_move) {
		x += moveDx;
		y += moveDy;
		[self nekoDirection];
	} else if(nekoState == u_togi || nekoState == d_togi || nekoState == l_togi || nekoState == r_togi) {
		if (isnekoMoveStart) {
			[self setStateTo:awake];
			goto breakout;
		}
		if (stateCount < 10) {
			goto breakout;
		}
		[self setStateTo:kaki];
	} else {
		/* Internal Error */
		[self setStateTo:stop];
	}

	breakout:
	[view displayIfNeeded];
	[self setFrameOrigin:NSMakePoint(x, y)];
}
@end
