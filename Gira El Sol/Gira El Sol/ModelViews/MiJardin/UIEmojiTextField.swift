import SwiftUI

struct UIEmojiTextField: View {
    @State private var emojiInput: String = ""
    
    var body: some View {
        VStack {
            TextField("Enter your emoji", text: $emojiInput)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text(emojiInput.isEmpty ? "🪴" : emojiInput)
                .font(.system(size: 100))
                .padding()
                .frame(width: 150, height: 150)
        }
        .padding()
    }
}

struct UIEmojiTextField_Previews: PreviewProvider {
    static var previews: some View {
        UIEmojiTextField()
    }
}


//hacer q solo se puedan ingresar  emojis y nada mas!
