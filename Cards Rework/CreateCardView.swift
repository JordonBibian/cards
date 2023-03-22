//
//  CreateCardView.swift
//  Cards Rework
//
//  Created by Jordon Bibian on 3/21/23.
//

import SwiftUI

struct CreateCardView: View {
    @Environment(\.dismiss) var dismiss: DismissAction
    
    var body: some View {
        Button("Cancel") {
            dismiss()
        }
    }
}

struct CreateCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreateCardView()
    }
}
