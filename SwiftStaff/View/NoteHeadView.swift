import Foundation
import SwiftUI

public struct NoteHeadView: View {
    public init(value: NoteValue) {
        self.value = value
    }

    let value: NoteValue

    public var body: some View {
        Text(character)
            .fixedSize()
    }

    private var character: String {
        switch value.denominatorExponent {
        case 0: return "\u{E0A2}"
        case 1: return "\u{E0A3}"
        default: return "\u{E0A4}"
        }
    }
}

struct NoteHeadView_Previews: PreviewProvider {
    static var previews: some View {
        NoteHeadView(value: .quarter)
    }
}
