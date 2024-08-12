import SwiftUI

struct ContentView: View {
    let sampleUser = User(
        id: "1",
        username: "Jane Doe",
        bio: "iOS Developer and technology enjoyer.",
        profileImage: Image(systemName: "person.circle.fill")
    )

    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to the App")
                    .font(.largeTitle)
                    .padding()

                NavigationLink(destination: ProfileView(user: sampleUser)) {
                    Text("View Profile")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Home")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
