//
//  MyTextView.swift
//  swiftUI_tutorial_#2
//
//  Created by 정혜윤 on 2022/01/01.
//

import SwiftUI

struct MyTextView: View{
    
    @Binding
    var isActiviated : Bool
    
    // 생성자
    init(isActiviated: Binding<Bool> = .constant(false)){ _isActiviated = isActiviated
    }
    
    
    
    
    @State //변화를 감지->view에 적용
    private var index:Int = 0
    
    //배경색 배열 준비
    
    private let backgroundColors = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.green,
        Color.orange
    ]
    
    var body: some View{
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth:0,maxWidth: .infinity,
                       minHeight:0,maxHeight: 100)
            
            Text("활성화 상태: \(String(isActiviated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActiviated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
                
            
        }.background(backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            print("배경 아이템이 클릭 되었다.")
            
            if(self.index == self.backgroundColors.count - 1 ){
                self.index=0
            }else{
                self.index += 1
            }
        }
    }
    
}


struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
