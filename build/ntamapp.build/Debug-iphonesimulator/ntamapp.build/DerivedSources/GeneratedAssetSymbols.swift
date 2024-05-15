import Foundation
#if canImport(AppKit)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
#if canImport(SwiftUI)
import SwiftUI
#endif
#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport
#endif

#if SWIFT_PACKAGE
private let resourceBundle = Foundation.Bundle.module
#else
private class ResourceBundleClass {}
private let resourceBundle = Foundation.Bundle(for: ResourceBundleClass.self)
#endif

// MARK: - Color Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ColorResource {

}

// MARK: - Image Symbols -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension DeveloperToolsSupport.ImageResource {

    /// The "agenda" asset catalog image resource.
    static let agenda = DeveloperToolsSupport.ImageResource(name: "agenda", bundle: resourceBundle)

    /// The "badge" asset catalog image resource.
    static let badge = DeveloperToolsSupport.ImageResource(name: "badge", bundle: resourceBundle)

    /// The "cme" asset catalog image resource.
    static let cme = DeveloperToolsSupport.ImageResource(name: "cme", bundle: resourceBundle)

    /// The "home" asset catalog image resource.
    static let home = DeveloperToolsSupport.ImageResource(name: "home", bundle: resourceBundle)

    /// The "images" asset catalog image resource.
    static let images = DeveloperToolsSupport.ImageResource(name: "images", bundle: resourceBundle)

    /// The "more" asset catalog image resource.
    static let more = DeveloperToolsSupport.ImageResource(name: "more", bundle: resourceBundle)

    /// The "questions" asset catalog image resource.
    static let questions = DeveloperToolsSupport.ImageResource(name: "questions", bundle: resourceBundle)

    /// The "snapchat" asset catalog image resource.
    static let snapchat = DeveloperToolsSupport.ImageResource(name: "snapchat", bundle: resourceBundle)

    /// The "social" asset catalog image resource.
    static let social = DeveloperToolsSupport.ImageResource(name: "social", bundle: resourceBundle)

    /// The "speakers" asset catalog image resource.
    static let speakers = DeveloperToolsSupport.ImageResource(name: "speakers", bundle: resourceBundle)

    /// The "survey" asset catalog image resource.
    static let survey = DeveloperToolsSupport.ImageResource(name: "survey", bundle: resourceBundle)

    /// The "venue" asset catalog image resource.
    static let venue = DeveloperToolsSupport.ImageResource(name: "venue", bundle: resourceBundle)

    /// The "videos" asset catalog image resource.
    static let videos = DeveloperToolsSupport.ImageResource(name: "videos", bundle: resourceBundle)

    /// The "voting" asset catalog image resource.
    static let voting = DeveloperToolsSupport.ImageResource(name: "voting", bundle: resourceBundle)

}

// MARK: - Color Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSColor {

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

}
#endif

// MARK: - Image Symbol Extensions -

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    /// The "agenda" asset catalog image.
    static var agenda: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .agenda)
#else
        .init()
#endif
    }

    /// The "badge" asset catalog image.
    static var badge: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .badge)
#else
        .init()
#endif
    }

    /// The "cme" asset catalog image.
    static var cme: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .cme)
#else
        .init()
#endif
    }

    /// The "home" asset catalog image.
    static var home: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .home)
#else
        .init()
#endif
    }

    /// The "images" asset catalog image.
    static var images: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .images)
#else
        .init()
#endif
    }

    /// The "more" asset catalog image.
    static var more: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .more)
#else
        .init()
#endif
    }

    /// The "questions" asset catalog image.
    static var questions: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .questions)
#else
        .init()
#endif
    }

    /// The "snapchat" asset catalog image.
    static var snapchat: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .snapchat)
#else
        .init()
#endif
    }

    /// The "social" asset catalog image.
    static var social: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .social)
#else
        .init()
#endif
    }

    /// The "speakers" asset catalog image.
    static var speakers: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .speakers)
#else
        .init()
#endif
    }

    /// The "survey" asset catalog image.
    static var survey: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .survey)
#else
        .init()
#endif
    }

    /// The "venue" asset catalog image.
    static var venue: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .venue)
#else
        .init()
#endif
    }

    /// The "videos" asset catalog image.
    static var videos: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .videos)
#else
        .init()
#endif
    }

    /// The "voting" asset catalog image.
    static var voting: AppKit.NSImage {
#if !targetEnvironment(macCatalyst)
        .init(resource: .voting)
#else
        .init()
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    /// The "agenda" asset catalog image.
    static var agenda: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .agenda)
#else
        .init()
#endif
    }

    /// The "badge" asset catalog image.
    static var badge: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .badge)
#else
        .init()
#endif
    }

    /// The "cme" asset catalog image.
    static var cme: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .cme)
#else
        .init()
#endif
    }

    /// The "home" asset catalog image.
    static var home: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .home)
#else
        .init()
#endif
    }

    /// The "images" asset catalog image.
    static var images: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .images)
#else
        .init()
#endif
    }

    /// The "more" asset catalog image.
    static var more: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .more)
#else
        .init()
#endif
    }

    /// The "questions" asset catalog image.
    static var questions: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .questions)
#else
        .init()
#endif
    }

    /// The "snapchat" asset catalog image.
    static var snapchat: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .snapchat)
#else
        .init()
#endif
    }

    /// The "social" asset catalog image.
    static var social: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .social)
#else
        .init()
#endif
    }

    /// The "speakers" asset catalog image.
    static var speakers: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .speakers)
#else
        .init()
#endif
    }

    /// The "survey" asset catalog image.
    static var survey: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .survey)
#else
        .init()
#endif
    }

    /// The "venue" asset catalog image.
    static var venue: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .venue)
#else
        .init()
#endif
    }

    /// The "videos" asset catalog image.
    static var videos: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .videos)
#else
        .init()
#endif
    }

    /// The "voting" asset catalog image.
    static var voting: UIKit.UIImage {
#if !os(watchOS)
        .init(resource: .voting)
#else
        .init()
#endif
    }

}
#endif

// MARK: - Thinnable Asset Support -

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ColorResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if AppKit.NSColor(named: NSColor.Name(thinnableName), bundle: bundle) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIColor(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIColor {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(SwiftUI)
@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
extension SwiftUI.ShapeStyle where Self == SwiftUI.Color {

    private init?(thinnableResource: DeveloperToolsSupport.ColorResource?) {
        if let resource = thinnableResource {
            self.init(resource)
        } else {
            return nil
        }
    }

}
#endif

@available(iOS 17.0, macOS 14.0, tvOS 17.0, watchOS 10.0, *)
@available(watchOS, unavailable)
extension DeveloperToolsSupport.ImageResource {

    private init?(thinnableName: String, bundle: Bundle) {
#if canImport(AppKit) && os(macOS)
        if bundle.image(forResource: NSImage.Name(thinnableName)) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#elseif canImport(UIKit) && !os(watchOS)
        if UIKit.UIImage(named: thinnableName, in: bundle, compatibleWith: nil) != nil {
            self.init(name: thinnableName, bundle: bundle)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}

#if canImport(AppKit)
@available(macOS 14.0, *)
@available(macCatalyst, unavailable)
extension AppKit.NSImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !targetEnvironment(macCatalyst)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

#if canImport(UIKit)
@available(iOS 17.0, tvOS 17.0, *)
@available(watchOS, unavailable)
extension UIKit.UIImage {

    private convenience init?(thinnableResource: DeveloperToolsSupport.ImageResource?) {
#if !os(watchOS)
        if let resource = thinnableResource {
            self.init(resource: resource)
        } else {
            return nil
        }
#else
        return nil
#endif
    }

}
#endif

