import Foundation
import CoreGraphics
import Tagged

enum EmTag {}
typealias Em = Tagged<EmTag, CGFloat>

extension Em where RawValue == CGFloat, Tag == EmTag {
    var asStaffSpaces: StaffSpaces {
        (rawValue * RawValue(4)).staffSpaces
    }
}

enum StaffSpacesTag {}
typealias StaffSpaces = Tagged<StaffSpacesTag, CGFloat>

extension StaffSpaces where RawValue == CGFloat, Tag == StaffSpacesTag {
    var asEm: Em {
        (rawValue / 4).ems
    }
}

extension CGFloat {
    var ems: Em {
        Em(rawValue: self)
    }

    var staffSpaces: StaffSpaces {
        StaffSpaces(rawValue: self)
    }
}

extension BinaryInteger {
    var ems: Em {
        Em(rawValue: CGFloat(self))
    }

    var staffSpaces: StaffSpaces {
        StaffSpaces(rawValue: CGFloat(self))
    }
}

extension BinaryFloatingPoint {
    var ems: Em {
        Em(rawValue: CGFloat(self))
    }

    var staffSpaces: StaffSpaces {
        StaffSpaces(rawValue: CGFloat(self))
    }
}

extension Decimal {
    var ems: Em {
        Em(rawValue: CGFloat(truncating: self as NSNumber))
    }

    var staffSpaces: StaffSpaces {
        StaffSpaces(rawValue: CGFloat(truncating: self as NSNumber))
    }
}

enum FontMetrics {
    static var staffLineThickness: StaffSpaces {
        0.13.staffSpaces
    }

    static var staffHeight: StaffSpaces {
        4.staffSpaces + staffLineThickness
    }
}
