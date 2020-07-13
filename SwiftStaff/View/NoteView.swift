import Foundation
import SwiftUI

public struct NoteView: View {
    public init(model: Note) {
        self.model = model
    }

    let model: Note

    public var body: some View {
        Text("\u{E0A4}")
            .environment(\.font, Font.custom("Bravura", size: 20))
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(model: Note(position: 0, value: .quarter))
    }
}
