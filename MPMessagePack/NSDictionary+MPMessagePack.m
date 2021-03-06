//
//  NSDictionary+MPMessagePack.m
//  MPMessagePack
//
//  Created by Gabriel on 7/3/14.
//  Copyright (c) 2014 Gabriel Handford. All rights reserved.
//

#import "NSDictionary+MPMessagePack.h"

@implementation NSDictionary (MPMessagePack)

- (NSData *)mp_messagePack {
  return [self mp_messagePack:0];
}

- (NSData *)mp_messagePack:(MPMessagePackWriterOptions)options {
  return [MPMessagePackWriter writeObject:self options:options error:nil];
}

@end
