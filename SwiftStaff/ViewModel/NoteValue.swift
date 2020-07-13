public struct NoteValue {
    public init(denominator: UInt) {
        self.denominator = denominator
    }

    // 1 = whole note
    // 4 = quarter note
    public let denominator: UInt

    public static var quarter: NoteValue {
        NoteValue(denominator: 4)
    }
}
