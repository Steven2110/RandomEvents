//
//  RETextField.swift
//  RandomEvents
//
//  Created by Steven Wijaya on 04.05.2023.
//

import SwiftUI

struct RETextField: View {
    
    var text: String
    @Binding var data: String
    
    var body: some View {
        HStack {
            Text(text)
            TextField(text, text: $data)
        }
    }
}

struct RETextField_Previews: PreviewProvider {
    static var previews: some View {
        RETextField(text: "Prob 1", data: .constant(""))
    }
}
