  atom_feed do |feed|
    feed.title("Hammer In The News")
    feed.updated(@posts[0].created_at) if @posts.length > 0

    @posts.each do |post|
      feed.entry(post) do |entry|
        entry.title(post.title)
        entry.content(post.body, :type => 'html')


      end
    end
  end