//
//  ContentView.swift
//  UI-100
//
//  Created by にゃんにゃん丸 on 2021/01/09.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    @State var show1 = false
    var body: some View {
        ZStack{
            
            if show{
                
                Image("p1").resizable().edgesIgnoringSafeArea(.bottom)
                BlurView()
            }
            if !show{
                Image("p2").resizable().edgesIgnoringSafeArea(.bottom)
                
            }
            if show1{
                
                Image("p3").resizable().edgesIgnoringSafeArea(.bottom)
                
            }
            
            
            
        }
        .onTapGesture(perform: {
            show.toggle()
        })
        .onLongPressGesture {
            show1.toggle()
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BlurView : UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        return view
        
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
}
