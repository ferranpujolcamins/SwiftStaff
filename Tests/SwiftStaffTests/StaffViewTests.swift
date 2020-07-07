import XCTest
import SnapshotTesting
import SwiftUI
import SwiftStaff

final class StaffViewTests: XCTestCase {
    func test() {
        let vc = UIHostingController(rootView: StaffView())

        assertSnapshot(matching: vc, as: .image, record: true)
    }
}
