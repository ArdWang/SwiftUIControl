//
//  ContentView.swift
//  SwiftUIControl
//
//  Created by RND on 2021/1/19.
//  swiftUI 控件学习

import SwiftUI
import AVKit
import SpriteKit

struct ContentView: View {
    
    static let taskDateFormat:DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var dueDate = Date()
    
    
    //let colors1 = Gradient(colors: [.red,.yellow,.green,.blue,.purple])
    
    //let conic = RadialGradient(gradient: colors1, center: .center, startRadius: 50, endRadius: 200)
    
    // 定时器
    @State private var completionAmount:CGFloat = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var scene: SKScene{
        let scene = GameScene()
        scene.size = CGSize(width: 300, height: 400)
        scene.scaleMode = .fill
        return scene
    }
    
    // 改变大小写
    @State private var name = "Paul"
    
    
    
    var body: some View {
//        Text("This is an extremely long text string that will never fit even the widest of Phones")
//            .font(.largeTitle)
//            //所有的文字全居中显示
//            .multilineTextAlignment(.center)
        
       // Text("The best laid plans")
            //文字的颜色
            //.foregroundColor(Color.red)
//        Text("The best laid plans")
//            //背景颜色
//            .background(Color.yellow)
//            .foregroundColor(Color.red)
//        Text("This is an extremely long string that will never fit even the widest of Phones")
//            .font(.largeTitle)
//            // 行距 50
//            .lineSpacing(50)
        
        //时间格式转换
        //Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
        
        // 文字中的字母之间增加间距
        //Text("Hello World").tracking(20)
        
        // 字距调整和跟踪不同
//        VStack{
//            Text("ffi")
//                .font(.custom("AmericanTypewriter", size: 72)).kerning(50)
//            Text("ffi")
//                .font(.custom("AmericanTypewriter", size: 72)).tracking(50)
//        }
//
        // 图像视图绘制
//        guard let img = UIImage(named: "example-image") else{
//            fatalError("Unable to load image")
//        }
//
//        return Image(uiImage: img)
        
        // 使用系统的图像
        //Image(systemName: "cloud.heavyrain.fill")
        //VStack{
            
            // 使用系统图片着色
           // Image(systemName: "cloud.heavyrain.fill").foregroundColor(.red)
            
            // 使用系统图片放大
           // Image(systemName: "cloud.heavyrain.fill").font(.largeTitle)
            
            //增加背景的圆形
           // Image(systemName: "cloud.sun.rain.fill")
           //     .renderingMode(.original)
            //    .font(.largeTitle)
             ////   .background(Color.black)
              //  .clipShape(Circle())
            
            // 调整图片适合其空间的方法 会自动的去填充
//            Image(systemName: "cloud.sun.rain.fill")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
            
            // 平铺图像1
           // Image(systemName: "cloud.sun.rain.fill")
            //    .resizable(resizingMode:.tile)
            
//            Image(systemName: "cloud.sun.rain.fill")
//                .resizable(capInsets: EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20), resizingMode: .tile)
            
            
            // 渲染和渐变
//            Text("Hello World")
//                .padding()
//                .foregroundColor(.white)
//                .background(LinearGradient(gradient: Gradient(colors: [.white,.red,.green,.black]), startPoint: .leading, endPoint: .trailing))
            
            // 其它的渐变样式
            //let colors = Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red])
           // let conic = AngularGradient(gradient: colors, center: .center)
           // return Circle()
               // .fill(conic)
        
       // return Circle().strokeBorder(conic,lineWidth: 50)
            
        //}
        
        //VStack{
            // 使用图像和其它视图去做背景图片
//            Text("Hacking with Swift")
//                .font(.largeTitle)
//                .background(
//                    Image(systemName: "cloud.sun.rain.fill")
//                        .resizable().frame(width: 100, height: 100).foregroundColor(.red)
//                )
            
            // 可以改变成一个圆
//            Text("Hacking with Swift")
//                .font(.largeTitle)
//                .background(Circle().fill(Color.red).frame(width: 200, height: 200))
            
//            Text("Hacking with Swift")
//                .font(.largeTitle)
//                .background(Circle()
//                                .fill(Color.red).frame(width: 200, height: 200))
//                .clipped()
            
            
            
            
            
       // }
        
        /*VStack{
        // 如何显示实体形状
        
            //正方形
            Rectangle().fill(Color.red)
                .frame(width: 200, height: 200)
            
            //圆形
            Circle().fill(Color.blue).frame(width: 50, height: 50)
        }*/
        
        
        //使用Tirm()绘制 实体形状的一部分
        
        /*VStack{
            Circle()
                .trim(from: 0, to: 0.5)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .trim(from: 0, to: completionAmount)
                .stroke(Color.red, lineWidth: 20)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(-90))
                .onReceive(timer){ _ in
                    withAnimation{
                        guard self.completionAmount < 1 else {return}
                        self.completionAmount += 0.2
                    }
                }
            
        }*/
        
        // 如何使用标签并排显示文本和图标
        
        /*VStack{
            Label("Your account", systemImage:"person.crop.circle")
            Label("Welcome to the app", systemImage: "person.crop.circle").font(.title)
            
            Label{
                Text("Paul Hudson")
                    .foregroundColor(.primary)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon:{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.blue)
                    .frame(width: 64, height: 64)
            }
        }*/
        
        // 使用 VideoPlayer 播放视频
        //VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "video", withExtension: "mp4")!))
        
        /*VideoPlayer(player: AVPlayer(url: URL(string: "https://bit.ly/swswift")!)){
            VStack{
                Text("Watermark")
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black.opacity(0.7))
                    .clipShape(Capsule())
                Spacer()
            }
        }*/
        
        // 如何使用SpriteView集成SpriteKit
        /*SpriteView(scene: scene)
            .frame(width: 300, height: 400)
            .edgesIgnoringSafeArea(.all)
         */
        
        
        // 如何在文本视图中格式化日期
        
        /*VStack{
            Text(Date()...Date().addingTimeInterval(600))
            
            Text(Date().addingTimeInterval(600), style: .date)
            
            Text(Date().addingTimeInterval(600),
                 style: .time)
            Text(Date().addingTimeInterval(600),
                 style: .relative)
            Text(Date().addingTimeInterval(600),
                 style: .timer)
        }*/
        
        // 如何使用textCase（）使TextField大写或小写
        /*TextField("Shout your name at me", text:$name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .textCase(.uppercase)
            .padding(.horizontal)
        
        */
        
        // 什么时候应该使用ContainerRelativeShape
        
        /*ZStack{
            ContainerRelativeShape()
                .inset(by: 4)
                .fill(Color.blue)
            Text("Hello, World!")
                .font(.headline)
        }*/
        
        // 如何使用redacted（）将内容标记为占位符
        //Text("This is placeholder text")
       //     .redacted(reason: .placeholder)
        
        /*VStack{
            Text("This is placeholder text")
            Text("And so is this")
        }
        .redacted(reason: .placeholder)
        */
        
        // 如何使用VStack和HStack创建堆栈
        // 水平（HStack），垂直（VStack）和基于深度（ZStack），当您要放置子视图以使其重叠时使用后者。
        /*ZStack {
            Text("SwiftUI")
            Text("rocks")
        }*/
        
        // 如何使用对齐和间距自定义堆栈布局
        
        /*VStack(spacing:50){
            Text("SwiftUI")
            Text("rocks")
        }*/
        
        // Divider() 切割线 默认是中心对齐方式
        /*VStack{
            Text("SwiftUI")
            Divider()
            Text("rocks")
        }*/
        
        VStack(alignment: .leading, spacing:20){
            Text("SwiftUI")
            Text("rocks")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
