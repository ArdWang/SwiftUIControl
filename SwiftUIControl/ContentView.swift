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
    
    let colors:[Color] = [.red,.green,.blue]
    
    let results = [Result(score:8),Result(score:5),Result(score:10)]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    // 拖动
    @State var dragAmount = CGSize.zero
    
    
    // ios14 新功能 LazyVGrid
    let data = (1...1000).map{"Item\($0)"}
    
    let columns = [
        
        // .flexible()它，它还可以让您指定每个项目的大小
        //GridItem(.adaptive(minimum: 80))
        // 控制显示几列 5个代表5列
        //GridItem(.flexible()),
        //GridItem(.flexible()),
       // GridItem(.flexible()),
        //GridItem(.flexible()),
        //GridItem(.flexible())
        
        // 固定大小
        GridItem(.fixed(100)),
        GridItem(.flexible())
    ]
    
    
    // 并排标题图像 水平滚动
    let items = 1...10
    
    let rows = [GridItem(.fixed(200)),]
    
    // 显示问候
    @State private var showGreeting = true
    
    // 显示列表
    @State private var showDetails = false
    
    @State private var name1: String = "Tim"
    
    
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
        
        /*VStack(alignment: .leading, spacing:20){
            Text("SwiftUI")
            Text("rocks")
        }*/
        
        //如何使用填充控制单个视图周围的间距
        /*VStack{
            Text("SwiftUI")
                .padding(.bottom,100)
            Text("rocks")
        }*/
        
        // 如何使用Spacer将视图强制移到堆栈中的一侧
        /*VStack{
            Text("Hello World")
            Spacer()
        }*/
        
        /*HStack{
            Text("Hello").padding(.leading,10)
            Spacer()
            Text("World").padding(.trailing,10)
        }*/
        
        /*VStack{
            Spacer()
            Text("Hello World")
            Spacer()
            Spacer()
            Spacer()
        }
        */
        
        // 如何制作固定尺寸的垫片
        /*VStack{
            Text("First Label")
            Spacer().frame(height:10)
            Text("Second Label")
        }*/
        
        // 如何使用ZStack将视图彼此叠加
        /*ZStack(alignment: .leading){
            Image(systemName: "tv").foregroundColor(Color.black)
            Text("Hacking with Swift")
                .font(.largeTitle)
                .background(Color.black)
                .foregroundColor(.white)
        }*/
        
        
        // 如何使用Z索引更改视图分层的顺序 zIndex() 里面正数代表上面 负数代表在下面
        /*ZStack{
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
                .zIndex(1)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
                .zIndex(-1)
        }*/
        
        // 如何返回不同的视图类型 需要放入一个组里面
        /*Group{
            if Bool.random(){
                Image(systemName: "keyboard")
            }else{
                Text("Better luck next time")
            }
        }*/
        
        // 一般需要使用 Group 是最好的选择
        /*if Bool.random(){
            return AnyView(Image(systemName: "keyboard"))
        }else{
            return AnyView(Text("Better luck next time"))
        }
        */
        
        //如何使用ForEach循环创建视图
        
        /*VStack(alignment: .leading){
            ForEach((1...10).reversed(), id:\.self){
                Text("\($0)...")
            }
            
            Text("Ready or not, here I come!")
        }
        */
        
        /*VStack{
            ForEach(colors, id:\.self){ color in
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
            }
        }
        */
        
        /*VStack{
            ForEach(results){ result in
                Text("Result: \(result.score)")
            }
        }
        */
        
        
        // 如何使用尺寸类别创建不同的布局
        /*if horizontalSizeClass == .compact {
            return Text("Compact")
        }else{
            return Text("Regular")
        }*/
        
        // 如何根据大小类在HStack和VStack之间自动切换
        
        /*AdaptiveStack{
            Text("Horizontal when there's lots of space")
            Text("but")
            Text("Vertical when space is restricted")
        }*/
        
        // 如何给视图自定义框架
        
        /*Button(action:{
            print("Button tapped")
        }){
            Text("Welcome")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(Color.red)
        }
        */
        
        // 如何使用GeometryReader提供相对大小
        
        
        /*GeometryReader{ geometry in
            HStack(spacing:0){
                Text("Left")
                    .frame(width: geometry.size.width/2, height: 50).background(Color.yellow)
                
                Text("Right")
                    .frame(width: geometry.size.width/2, height: 50).background(Color.orange)
            }
        }
        */
        
        // 如何将内容放置在安全区域之外
        /*Text("Hello World")
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(Color.red)
            .edgesIgnoringSafeArea(.all)
        */
        
        // 如何使用ScrollView添加水平和垂直滚动
        
        /*ScrollView(.horizontal, showsIndicators:false){
            VStack(spacing:20){
                ForEach(0..<10){
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(Color.red)
                }
            }
        }*/
        
        // 如何使用ScrollView和GeometryReader创建3D效果（如Cover Flow）
        
        /*ScrollView(.horizontal, showsIndicators:false){
            HStack(spacing:0){
                ForEach(1..<10){ num in
                    VStack{
                        GeometryReader{ geo in
                            Text("Number \(num)")
                                .font(.largeTitle)
                                .padding()
                                .background(Color.red)
                                .rotation3DEffect(
                                    .degrees(-Double(geo.frame(in: .global).minX)/8),
                                    axis: (x:0,y:1,z:0))
                        }
                    }.frame(width: 180)
                }
            }.padding()
        }*/
        
        /*VStack{
            GeometryReader{ geo in
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.yellow,.red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 300, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .rotation3DEffect(
                        .degrees(-Double(self.dragAmount.width)/20),
                        axis: (x:0,y:1,z:0))
                    .rotation3DEffect(
                        .degrees(-Double(self.dragAmount.height/20)),
                        axis: (x: 1, y: 0, z: 0))
                    .offset(self.dragAmount)
                    // 添加手势 拖动
                    .gesture(
                        DragGesture()
                            .onChanged{self.dragAmount = $0.translation}
                            .onEnded{_ in
                                withAnimation(.spring()){
                                    self.dragAmount = .zero
                                }
                            }
                    )
            }
        }*/
        
        // 如何使用LazyVGrid和LazyHGrid在网格中放置视图
        // iOS 14的新功能
        
        /*NavigationView{
        
            ScrollView{
                LazyVGrid(columns:columns, spacing:20){
                    ForEach(data, id:\.self){ item in
                        Text(item)
                    }
                }
                .padding(.horizontal)
            }.navigationTitle("dadasdas")
        }
        */
        
        /*ScrollView(.horizontal){
            LazyHGrid(rows:rows, alignment:.center){
                ForEach(items, id:\.self){ item in
                    Image("Heading\(item)")
                }
            }
        }*/
        
        /*GridStack(rows:4, columns:4){row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
        */
        
        // 如何使用LazyVStack和LazyHStack延迟加载视图
        
        /*ScrollView{
            LazyVStack{
                ForEach(1...1000, id:\.self){ value in
                    Text("Row \(value)")
                }
            }
        }*/
        
        /*ScrollView{
            LazyVStack{
                ForEach(1...1000, id:\.self,content:SampleRow.init)
            }
        }*/
        
        
        // 如何使用ScrollViewReader使滚动视图移动到某个位置
        /*
         ScrollView{
            ScrollViewReader{ value in
                
                Button("Jump to #8"){
                    // 控制滚动到需要的地方 并显示在 top 的位置
                    value.scrollTo(8, anchor:.top)
                }
                
                ForEach(0..<10){ i in
                    Text("Example \(i)")
                        .frame(width: 300, height: 300)
                        .background(colors[i % colors.count])
                        .id(i)
                }
            }
        }
        */
        
        // 如何创建拨动开关
        
        /*VStack{
            Toggle(isOn:$showGreeting){
                Text("Show welcome message")
            }.padding()
            
            if showGreeting {
                Text("Hello World!")
            }
        }*/
        
        // 如何创建可点击的按钮
        
        /*Button(action:{
           print("点击开始了")
        }){
           Text("Button title")
        }*/
        
        /*VStack{
            Button(action:{
                self.showDetails.toggle()
            }){
                Text("Show details")
            }
            
            if showDetails {
                Text("You should follow me on Twitter:@twostraws").font(.largeTitle)
            }
        }*/
        
        // 如何禁用Button和NavigationLink中图像的叠加颜色
        // 导航栏
        
        /*NavigationView{
            NavigationLink(destination:Text("Detail view here")){
                Image(systemName: "keyboard").renderingMode(.original)
            }
            //.buttonStyle(PlainButtonStyle())
        }*/
        
        // 区别是微妙的，但很重要：如果在的Button内部使用List，则使用.buttonStyle(PlainButtonStyle())表示仅可以敲击按钮内容周围的空间，而如果使用，.renderingMode(.original)则整个单元格仍可被点击。
        
        // 如何从TextField读取文本
        
        /*VStack{
            TextField("Enter your name", text:$name1)
            Text("Hello, \(name)!")
        }
        */
        
        // 如何在TextField上添加边框
        /*TextField("Enter some text", text:$name1).textFieldStyle(RoundedBorderTextFieldStyle())
        */
        
        // 如何将占位符添加到TextField
        
        TextField("johnnyappleseed@apple.com", text:$name1)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
