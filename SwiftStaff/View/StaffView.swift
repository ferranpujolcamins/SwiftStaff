import SwiftUI

public struct StaffView: View {
    public init() {}

    @Environment(\.toCGFloat) private var toCGFloat: (Em) -> CGFloat

    private let vStackSpacing = (1.staffSpaces - FontMetrics.staffLineThickness).asEm

    public var body: some View {
        return VStack(spacing: toCGFloat(vStackSpacing)) {
            staffLine()
            staffLine()
            staffLine()
            staffLine()
            staffLine()
        }.offset(x: 0, y: toCGFloat(-2.staffSpaces.asEm))
    }

    private func staffLine() -> some View {
        Rectangle()
            .frame(height: toCGFloat(FontMetrics.staffLineThickness.asEm))
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct StaffView_Previews: PreviewProvider {
    static var previews: some View {
        StaffView()
    }
}
