//
//  BGBGMPlayer.h
//  BalanceGame
//
//  Created by Akifumi on 2012/08/29.
//
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

#define PLAY_BGM(filename)  [[AFBGMPlayer sharedObject] playWithFileName:filename]
#define STOP_BGM            [[AFBGMPlayer sharedObject] stop]

@interface AFBGMPlayer : NSObject
+ (AFBGMPlayer *)sharedObject;
- (void)playWithFileName:(NSString *)fileName;
- (void)stop;
@end
