class TestService
    def self.ciclo
        @posts = Post.all
        @posts.each do |post|
            puts "***" + post.title
        end
    end
end