import Foundation
import SwiftUI

public struct NoteView: View {
    public init(model: Note) {
        self.model = model
    }

    let model: Note

    public var body: some View {
        Text(character(forNoteValue: model.value))
            .environment(\.font, Font.custom("Bravura", size: 20))
    }

    private func character(forNoteValue noteValue: NoteValue) -> String {
        switch noteValue.denominatorExponent {
        case 0: return "\u{E0A2}"
        case 1: return "\u{E0A3}"
        default: return "\u{E0A4}"
        }
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView(model: Note(position: 0, value: .quarter))
    }
}
