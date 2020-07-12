import Foundation
import Tagged

enum EmTag {}
typealias Em = Tagged<EmTag, Double>

extension Em {
    var asStaffSpaces: StaffSpaces {
        (rawValue / 4).staffSpaces
    }

    func asPoints(forFontSize fontSize: Double) -> Double {
        rawValue * fontSize
    }
}

enum StaffSpacesTag {}
typealias StaffSpaces = Tagged<StaffSpacesTag, Double>

extension StaffSpaces {
    var asEm: Em {
        (rawValue * 4).em
    }
}

extension Double {
    var em: Em {
        Em(rawValue: self)
    }

    var staffSpaces: StaffSpaces {
        StaffSpaces(rawValue: self)
    }
}

struct FontMetrics {
    var staffLineThickness: StaffSpaces { 0.13.staffSpaces }
}
