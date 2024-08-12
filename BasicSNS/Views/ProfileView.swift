import SwiftUI

struct ProfileView: View {
    let user: User

    var body: some View {
        VStack {
            user.profileImage?
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 5)

            Text(user.username)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 10)

            Text(user.bio)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        .padding()
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleUser = User(
            id: "1",
            username: "Jane Doe",
            bio: "iOS Developer and technology enthusiast.",
            profileImage: Image(systemName: "person.crop.circle.fill")
        )
        ProfileView(user: sampleUser)
    }
}
