#show me all posts
#show me a particular post
#create a new post
#edit a post
#delete a post
get '/create_post' do
  erb :create_post
end

post '/create_post' do
  puts params
  @post = Post.create(params[:post])
  @post.tags << Tag.find_or_create_by_tag_name(params[:tag])
  @message = "You have successfully created a new post!"
  erb :index
end

get '/show_all_posts' do
@posts = Post.all
 erb :view_all_posts
end

post '/edit_a_post' do
  #edit a post
end

delete '/delete_a_post' do
  #delete a post
end
