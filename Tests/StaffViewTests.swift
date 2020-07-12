import XCTest
import SnapshotTesting
import SwiftUI
import SwiftStaff

#if os (iOS)
final class StaffViewTests: XCTestCase {
    func test() {

        assertSnapshot(
            matching: StaffView(),
            as: .image(layout: .fixed(width: 500, height: 500)),
            record: true
        )
    }
}
#endif
