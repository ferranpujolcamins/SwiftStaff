import XCTest
import SnapshotTesting
import SwiftUI
import SwiftStaff

#if os (iOS)
final class ScoreViewTests: XCTestCase {
    func test() {
        XCTAssertTrue(SwiftStaff.setup())
        assertSnapshot(
            matching: ScoreView(),
            as: .image,
            record: true
        )
    }
}
#endif
