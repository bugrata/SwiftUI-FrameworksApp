//
//  FrameworkDetailView.swift
//  Frameworks App
//
//  Created by Buğrahan Ata on 26.09.2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .imageScale(.large)
                        .frame(width: 40, height: 40)
                }
            } .padding()
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button() {
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[1])
}
