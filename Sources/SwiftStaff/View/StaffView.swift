import UIKit
import SwiftUI

public struct StaffView: View {
    public init() {}

    public var body: some View {
        return Text("\u{1D11E}")
            .environment(\.font, Font.custom("Bravura", size: 20))
            .frame(minWidth: 50, minHeight: 50)
    }
}
