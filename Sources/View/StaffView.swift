import SwiftUI

public struct StaffView: View {
    public init() {}

    public var body: some View {
        return VStack(spacing: 1.staffSpaces().asPoints(forFontSize: 12)) {
            staffLine()
            staffLine()
            staffLine()
            staffLine()
            staffLine()
        }
    }

    private func staffLine() -> some View {
        Rectangle().frame(height: FontMetrics.staffLineThickness().asPoints(forFontSize: 12))
    }
}

struct StaffView_Previews: PreviewProvider {
    static var previews: some View {
        StaffView()
    }
}
