import CoreGraphics
import SwiftUI

struct CtFontKey: EnvironmentKey {
    static let defaultValue: CTFont = CTFontCreateWithName("Bravura" as CFString, 20, nil)
}

extension EnvironmentValues {
    var toCGFloat: (Em) -> CGFloat {
        get {
            { CTFontGetSize(ctFont) * $0.rawValue }
        }
    }

    var ctFont: CTFont {
        get {
            self[CtFontKey]
        }
        set {
            self[CtFontKey] = newValue
        }
    }
}


extension View {
    var withSwiftStaffFont: some View {
        return self
            .environment(\.font, Font(CtFontKey.defaultValue))
    }
}
