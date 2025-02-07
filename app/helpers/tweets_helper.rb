module TweetsHelper
  def find_youtube_url(youtube_url)
    if youtube_url.include?("https://youtu.be/")
      youtube_url.gsub("https://youtu.be/", "")
    else
      youtube_url.gsub("https://www.youtube.com/watch?v=", "")
    end
  end
end
