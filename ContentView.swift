import SwiftUI

struct ContentView: View {
    @State private var featureEnabled = false
    @State private var isRunning = false

    private var status: String { isRunning ? "TRẠNG THÁI: ĐANG CHẠY" : "TRẠNG THÁI: ĐÃ DỪNG" }
    private var statusColor: Color { isRunning ? .green : .red }

    var body: some View {
        VStack(spacing: 22) {
            Spacer(minLength: 24)
            Text("AIM CLIENT MCPE")
                .font(.system(size: 28, weight: .bold, design: .rounded))
                .foregroundStyle(.white)
            Text(status)
                .font(.headline)
                .foregroundStyle(statusColor)
                .padding(.vertical, 10)

            Toggle("Bật tính năng giao diện", isOn: $featureEnabled)
                .tint(.green)
                .padding(.horizontal, 28)
                .foregroundStyle(.white)

            Button {
                isRunning = true
            } label: {
                Text("BẮT ĐẦU")
                    .font(.headline)
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .background(Color.green)
                    .foregroundStyle(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding(.horizontal, 28)

            Button {
                isRunning = false
            } label: {
                Text("DỪNG LẠI")
                    .font(.headline)
                    .frame(maxWidth: .infinity, minHeight: 52)
                    .background(Color.red)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding(.horizontal, 28)
            Spacer()
            Text("UI demo • Không kết nối trò chơi")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .padding(.bottom, 24)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.05, green: 0.05, blue: 0.10))
            .ignoresSafeArea())
    }
}
