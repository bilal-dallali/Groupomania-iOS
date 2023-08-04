//
//  BackButtonView.swift
//  Groupomania
//
//  Created by Bilal Dallali on 04/08/2023.
//

import SwiftUI

struct BackButtonView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Image("arrow-left")
        }
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
            .previewLayout(.sizeThatFits)
            .background(Color("Black"))
    }
}
