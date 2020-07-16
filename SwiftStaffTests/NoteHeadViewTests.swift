import XCTest
import SnapshotTesting
import SwiftUI
@testable import SwiftStaff

#if os (iOS)
final class NoteHeadViewTests: XCTestCase {
    func test() throws {
        XCTAssertTrue(SwiftStaff.setup())
        for i in 0...3 {
            let value = NoteValue(denominatorExponent: UInt(i))
            assertSnapshot(
                matching: NoteHeadView(value: value)
                    .withSwiftStaffFont,
                as: .image,
                record: true
            )
        }
    }
}
#endif
