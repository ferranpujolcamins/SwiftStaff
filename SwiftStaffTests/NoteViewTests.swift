import XCTest
import SnapshotTesting
import SwiftUI
import SwiftStaff

import CoreTextSwift

#if os (iOS)
final class NoteViewTests: XCTestCase {
    func test() throws {
        XCTAssertTrue(SwiftStaff.setup())
        for i in 0...3 {
            let value = NoteValue(denominatorExponent: UInt(i))
            assertSnapshot(
                matching: NoteView(model: Note(position: 0, value: value)),
                as: .image(layout: .fixed(width: 200, height: 200))
            )
        }
    }
}
#endif
