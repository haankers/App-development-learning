import Foundation
class ConversationDataSource {
    
    var messages = [openingLine]
    
    var messageCount: Int {
        return messages.count
    }
    
    /// Add a new question to the conversation
    func add(question: String) {
        let currMessage = Message(date: Date(), text: question, type: .question)
        messages.append(currMessage)
        print("Asked to add question: \(question)")
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        let currMessage = Message(date: Date(), text: answer, type: .answer)
        messages.append(currMessage)
        print("Asked to add answer: \(answer)")
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        return messages[index]
    }
}
