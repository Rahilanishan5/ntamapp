#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "agenda" asset catalog image resource.
static NSString * const ACImageNameAgenda AC_SWIFT_PRIVATE = @"agenda";

/// The "badge" asset catalog image resource.
static NSString * const ACImageNameBadge AC_SWIFT_PRIVATE = @"badge";

/// The "cme" asset catalog image resource.
static NSString * const ACImageNameCme AC_SWIFT_PRIVATE = @"cme";

/// The "home" asset catalog image resource.
static NSString * const ACImageNameHome AC_SWIFT_PRIVATE = @"home";

/// The "images" asset catalog image resource.
static NSString * const ACImageNameImages AC_SWIFT_PRIVATE = @"images";

/// The "more" asset catalog image resource.
static NSString * const ACImageNameMore AC_SWIFT_PRIVATE = @"more";

/// The "questions" asset catalog image resource.
static NSString * const ACImageNameQuestions AC_SWIFT_PRIVATE = @"questions";

/// The "snapchat" asset catalog image resource.
static NSString * const ACImageNameSnapchat AC_SWIFT_PRIVATE = @"snapchat";

/// The "social" asset catalog image resource.
static NSString * const ACImageNameSocial AC_SWIFT_PRIVATE = @"social";

/// The "speakers" asset catalog image resource.
static NSString * const ACImageNameSpeakers AC_SWIFT_PRIVATE = @"speakers";

/// The "survey" asset catalog image resource.
static NSString * const ACImageNameSurvey AC_SWIFT_PRIVATE = @"survey";

/// The "venue" asset catalog image resource.
static NSString * const ACImageNameVenue AC_SWIFT_PRIVATE = @"venue";

/// The "videos" asset catalog image resource.
static NSString * const ACImageNameVideos AC_SWIFT_PRIVATE = @"videos";

/// The "voting" asset catalog image resource.
static NSString * const ACImageNameVoting AC_SWIFT_PRIVATE = @"voting";

#undef AC_SWIFT_PRIVATE
