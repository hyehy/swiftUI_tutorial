//
//  ContentView.swift
//  swiftUI_tutorial_#2
//
//  Created by 정혜윤 on 2022/01/01.
//

import SwiftUI

struct ContentView: View {
    @State
    private var isActivated:Bool = false
    var body: some View {
   
        NavigationView{
            VStack{
                HStack{
                myVstackView(isActiviated: $isActivated)
                myVstackView(isActiviated: $isActivated)
                myVstackView(isActiviated: $isActivated)
                
            
                }
                .padding(isActivated ? 50.0 : 10.0)
                
                .background(isActivated ? Color.yellow : Color.black)
                
                
                //탭 재스쳐 추가
                .onTapGesture {
                        print("HStack 이 클릭되었다.")
                    
                    //애니메이션과 함께
                    withAnimation{            //toggle() true이면 false로 false이면 true
                        self.isActivated.toggle()}
            }//HStack
           
                
                //네비게이션 버튼(링크)
                NavigationLink(destination:MyTextView(isActiviated: $isActivated)){
                    Text("네비게이션 버튼")
                        .font(.system(size:40))
                        .fontWeight(.bold)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                    
                }.padding(.top,50)
                
            }
          
        }//NavigationView
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
