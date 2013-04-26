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

get '/edit_post/:id' do
  @post = Post.where(id: params[:id]).first
  erb :edit_post
end

post '/edit_post/:id' do
  @post = Post.where(id: params[:id]).first
  puts "edit_post posted with id #{:id} and found post #{@post}"
  if params[:title]
    @post.title = params[:title]
    @post.save
  end
  if params[:description]
    @post.description = params[:description]
    @post.save
  end
  erb :post_page
end

get '/delete_post/:id' do
  @post = Post.where(id: params[:id]).first
  @post.destroy
  erb :index
  #delete a post
end

get '/post/:id' do
 @post = Post.where(id: params[:id]).first
 puts @post
 erb :post_page
end


