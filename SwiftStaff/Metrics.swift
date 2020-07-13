import Foundation
import Tagged

enum EmTag {}
typealias Em<N: BinaryFloatingPoint> = Tagged<EmTag, N>

extension Em where RawValue: BinaryFloatingPoint, Tag == EmTag {
    var asStaffSpaces: StaffSpaces<RawValue> {
        (rawValue / RawValue(4)).staffSpaces()
    }

    func asPoints(forFontSize fontSize: RawValue) -> RawValue {
        rawValue * fontSize
    }
}

enum StaffSpacesTag {}
typealias StaffSpaces<N: BinaryFloatingPoint> = Tagged<StaffSpacesTag, N>

extension StaffSpaces where RawValue: BinaryFloatingPoint, Tag == StaffSpacesTag {
    var asEm: Em<RawValue> {
        (rawValue * 4).em()
    }

    func asPoints(forFontSize fontSize: RawValue) -> RawValue {
        asEm.asPoints(forFontSize: fontSize)
    }
}

extension BinaryFloatingPoint {
    func em() -> Em<Self> {
        Em(rawValue: self)
    }

    func staffSpaces() -> StaffSpaces<Self> {
        StaffSpaces(rawValue: self)
    }
}

extension IntegerLiteralType {
    func em<N: BinaryFloatingPoint>() -> Em<N> {
        Em(rawValue: N(self))
    }

    func staffSpaces<N: BinaryFloatingPoint>() -> StaffSpaces<N> {
        StaffSpaces(rawValue: N(self))
    }
}

enum FontMetrics {
    static func staffLineThickness<N: BinaryFloatingPoint>() -> StaffSpaces<N> {
        N(0.13).staffSpaces()
    }
}
