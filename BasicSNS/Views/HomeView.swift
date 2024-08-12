//
//  HomeView.swift
//  BasicSNS
//
//  Created by mbp on 8/12/24.
//

import SwiftUI

struct HomeView: View {
    @State private var posts: [Post] = []
    @State private var newPostContent: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // New Post TextArea
                VStack(alignment: .leading) {
                    Text("What's on your mind?")
                        .font(.headline)
                    
                    TextEditor(text: $newPostContent)
                        .frame(height: 100)
                        .border(Color(.secondarySystemBackground))
                        .cornerRadius(8.0)
                    
                    Button(action: {
                        addNewPost()
                    }) {
                        Text("Post")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(8.0)
                    }
                }
                .padding()
                
                List(posts) { post in
                    VStack(alignment: .leading, spacing: 5) {
                        Text(post.author).font(.headline)
                        Text(post.content).font(.body)
                        Text(post.timestamp, style: .date).font(.caption).foregroundColor(.gray)
                    }
                    .padding(.vertical, 5)
                }
                .navigationTitle("Home")
                .listStyle(PlainListStyle())
            }
        }
    }
    
    private func addNewPost() {
        let newPost = Post(id: UUID().uuidString, content: newPostContent, author: "User", timestamp: Date(), likes: 0)
        posts.append(newPost)
        newPostContent = ""
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
