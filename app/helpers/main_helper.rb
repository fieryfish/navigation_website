module MainHelper
  def standardise_url(url)
    url.include?("http://") ? url : "http://" + url
  end

end
