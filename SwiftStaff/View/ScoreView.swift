import Foundation
import SwiftUI

public struct ScoreView: View {
    public init() {}
//
//    public let model: Score
    

    public var body: some View {
        ZStack {
            StaffView()
            NoteView(model: Note(position: 0, value: .quarter))
            NoteView(model: Note(position: 2, value: .quarter))
            NoteView(model: Note(position: 4, value: .quarter))
        }
        .withSwiftStaffFont
    }
}

//struct ScoreView_Previews: PreviewProvider {
//    static var previews: some View {
//        StaffView()
//    }
//}
