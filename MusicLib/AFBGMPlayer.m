//
//  BGBGMPlayer.m
//  BalanceGame
//
//  Created by Akifumi on 2012/08/29.
//
//

#import "AFBGMPlayer.h"

static AFBGMPlayer *shared = nil;

@interface AFBGMPlayer()
@property (nonatomic, strong) AVAudioPlayer *bgm;
@end

@implementation AFBGMPlayer
@synthesize bgm;

+ (AFBGMPlayer *)sharedObject{
    if (!shared) {
        shared = [[self alloc] init];
    }
    return shared;
}

- (void)playWithFileName:(NSString *)fileName{
    [self stop];
    NSString *fullPath = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
    self.bgm = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:fullPath] error:nil];
    self.bgm.currentTime = 0;
    self.bgm.numberOfLoops = -1;
    [self.bgm prepareToPlay];
    [self.bgm play];
}

- (void)stop{
    if (self.bgm) {
        [self.bgm stop];
        self.bgm = nil;
    }
}

- (void)dealloc{
    shared = nil;
}

@end
