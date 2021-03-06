import XCTest
import SnapshotTesting
import SwiftUI
@testable import SwiftStaff

#if os (iOS)
final class NoteViewTests: XCTestCase {
    func test() throws {
        XCTAssertTrue(SwiftStaff.setup())
        for i in 0...5 {
            let model = Note(position: StaffPosition(value: i), value: .quarter)
            assertSnapshot(
                matching: NoteView(model: model)
                    .withSwiftStaffFont,
                as: .image,
                record: true
            )
        }
    }
}
#endif
