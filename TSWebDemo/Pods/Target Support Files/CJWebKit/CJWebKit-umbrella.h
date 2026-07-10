#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CJBaseWebViewController.h"
#import "CJEmptyViewProtocol.h"

FOUNDATION_EXPORT double CJWebKitVersionNumber;
FOUNDATION_EXPORT const unsigned char CJWebKitVersionString[];

