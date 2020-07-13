public struct StaffPosition {
    public init(value: Int) {
        self.value = value
    }

    // 0 is lower line on the staff
    // 1 is lower space on the staff
    let value: Int
}

extension StaffPosition: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.init(value: value)
    }
}
