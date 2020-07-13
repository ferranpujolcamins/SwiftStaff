public struct Note {
    public init(position: StaffPosition, value: NoteValue) {
        self.position = position
        self.value = value
    }

    let position: StaffPosition
    let value: NoteValue
}
