public struct NoteValue: ExpressibleByIntegerLiteral {

    public init(denominatorExponent: UInt) {
        self.denominatorExponent = denominatorExponent
    }

    public init(integerLiteral value: UInt) {
        self.init(denominatorExponent: value)
    }

    // value = 1/2^denominatorExponent
    // 0 = whole note
    // 1 = half note
    // 2 = quarter note
    // 3 = eighth note
    public let denominatorExponent: UInt

    public static var whole: NoteValue {
        NoteValue(denominatorExponent: 0)
    }

    public static var half: NoteValue {
        NoteValue(denominatorExponent: 1)
    }

    public static var quarter: NoteValue {
        NoteValue(denominatorExponent: 2)
    }

    public static var eighth: NoteValue {
        NoteValue(denominatorExponent: 3)
    }
}
