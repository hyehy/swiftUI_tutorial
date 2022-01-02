//
//  myVstack.swift
//  swiftUI_tutorial_#2
//
//  Created by 정혜윤 on 2022/01/01.
//

import SwiftUI

struct myVstackView : View{
    
    
    // 데이터를 연동시킨다
    @Binding
    var isActiviated : Bool
    
    // 생성자
    init(isActiviated: Binding<Bool> = .constant(false)){ _isActiviated = isActiviated
    }
    
    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size:60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size:60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size:60))
        }
        .background(self.isActiviated ? Color.green : Color.red)
        .padding(self.isActiviated ? 10 : 0)
    }
}

struct myVstackView_Previews: PreviewProvider {
    static var previews: some View {
        myVstackView()
    }
}
