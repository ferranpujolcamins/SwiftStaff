import Foundation
import SwiftUI

public struct NoteView: View {
    public init(model: Note) {
        self.model = model
    }

    let model: Note
    @Environment(\.toCGFloat) private var toCGFloat: (Em) -> CGFloat

    public var body: some View {
        NoteHeadView(value: model.value)
            .offset(x: 0, y: -toCGFloat(model.position.value.staffSpaces.asEm) / 2)
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(model: Note(position: 0, value: .quarter))
    }
}
