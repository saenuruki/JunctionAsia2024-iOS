import SwiftUI

struct ScanView: View {
    @ObservedObject
    var presenter: VideoCapturePresenter
    var body: some View {
        ZStack {
            Color.red
            VStack(alignment: .center) {
                CALayerView(
                    caLayer: presenter.previewLayer,
                    size: .init(width: 320, height: 320)
                )
            }
        }
//        .edgesIgnoringSafeArea(.all)
        .onAppear {
            self.presenter.apply(inputs: .onAppear)
        }
        .onDisappear {
            self.presenter.apply(inputs: .onDisappear)
        }
    }
}
