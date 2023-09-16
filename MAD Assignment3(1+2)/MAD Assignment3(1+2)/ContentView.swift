import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    @State private var isNight = true
    @State private var showModal = false
    @State private var showAlert = false
    
    var body: some View {
        TabView(selection: $selectedTab) {
            // Tab 1
            ZStack {
                Image("space-bg")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 98, height: 10)
                    .offset(y: 99)
                
                Circle()
                    .foregroundColor(.yellow)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 10)
                
                Text("This is Sun")
                    .foregroundColor(.white)
                    .offset(y: 80)
            }
            .tabItem {
                Label("Assignment 1", systemImage: "hourglass")
                    .font(.system(size: 20))
                    .imageScale(.small)
            }
            .tag(0)
            
            // Tab 2
            ZStack {
                
                Color(isNight ? .black : .white)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image(systemName: "moon.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 100))
                    
                    Button("Click to bring light") {
                        isNight.toggle()
                    }
                    .foregroundColor(.white)
                    .offset(y: 80)
                    
                    if !isNight {
                        Button("Show me moon") {
                            isNight.toggle()
                        }
                        .foregroundColor(.black)
                    }
                }
            }
            .tabItem {
                Label("Assignment 2", systemImage: "book")
                    .font(.system(size: 20))
                    .imageScale(.small)
            }
            .tag(1)
            
            // Tab 3
            Button("Enlighten me O'Great Creator") {
                showModal = true
            }
            .sheet(isPresented: $showModal) {
                VStack {
                    Text("My name is Rudhra, I have made the decision to make all my assignments into a single one since I am late. And My loaned Mac is so sloww")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.center)
                        .offset(y: 8)
                    
                    Button("Back") {
                        showModal = false
                    }
                    .offset(y: 88)
                    
                    Button("Notification") {
                        showAlert = true
                    }
                    .alert(isPresented: $showAlert) {
                        Alert(title: Text("Alert"),
                              message: Text("You are hacked!"),
                              dismissButton: .default(Text("OK")) {
                                showModal = false
                              })
                    }
                    .offset(y: 176) // 88px from the Back button
                }
            }
            .tabItem {
                Label("Assignment 3", systemImage: "timer")
                    .font(.system(size: 20))
                    .imageScale(.small)
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
