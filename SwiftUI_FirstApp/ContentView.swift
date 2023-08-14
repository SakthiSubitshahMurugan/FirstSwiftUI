//
//  ContentView.swift
//  SwiftUI_FirstApp
//
//  Created by Sakthi Subitshah Murugan on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var title = "Default Title"
    @State private var Input:String = "h "

    var body: some View {
        
        VStack{
            Header(title:$title)
            TextField("Enter value", text: $Input ).textFieldStyle(.roundedBorder)
            
            Button {
                title = Input
            } label: {
                Text("Change Title")
            }

           Spacer()
            
        }
       

}
}

struct Header:View{
    @Binding var title:String
    var body: some View{
        Text(title)
            .padding(10)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

