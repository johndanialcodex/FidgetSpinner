

import SwiftUI

struct ContentView: View {
    @State private var rotation1: Double = 0.0
    @State private var rotation2: Double = 0.0
    @State private var rotation3: Double = 0.0
    
    let hapticFeedback = UISelectionFeedbackGenerator()
       
    
    
    var body: some View {
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 22)
                    .fill(Color.blue)
                    .frame(width: 300, height: 300)
//                    .opacity(0.8)
                    .rotationEffect(.degrees(rotation1))
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                withAnimation {
                                    let delta = value.translation.width + value.translation.height
                                    rotation1 += Double(delta) * 0.5
                                    hapticFeedback.selectionChanged()
                                }
                            }
                            .onEnded { _ in
                                withAnimation {
                                    // You can add deceleration or stopping logic here if needed
                                }
                            }
                    )
                
                
                RoundedRectangle(cornerRadius: 22)
                    .fill(Color.yellow)
                    .frame(width: 200, height: 200)
//                    .opacity(0.5)
                    .rotationEffect(.degrees(rotation2))
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                withAnimation {
                                    let delta = value.translation.width + value.translation.height
                                    rotation2 += Double(delta) * 0.5
                                    hapticFeedback.selectionChanged()
                                }
                            }
                            .onEnded { _ in
                                withAnimation {
                                    // You can add deceleration or stopping logic here if needed
                                }
                            }
                    )
                
                RoundedRectangle(cornerRadius: 22)
                    .fill(Color.red)
                    .frame(width: 100, height: 100)
//                    .opacity(0.8)
                    .rotationEffect(.degrees(rotation3))
                    .gesture(
                        DragGesture()
                            .onChanged { value in
                                withAnimation {
                                    let delta = value.translation.width + value.translation.height
                                    rotation3 += Double(delta) * 1.5
                                    hapticFeedback.selectionChanged()
                                }
                            }
                            .onEnded { _ in
                                withAnimation {
                                    // You can add deceleration or stopping logic here if needed
                                }
                            }
                    )
                
            }
           
            
           
         
            
           
        }
    }
}
#Preview {
    ContentView()
}
