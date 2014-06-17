class ApiController < ApplicationController

  def index
    render json: {
      links: [
        articles: articles_url,
        comments: comments_url,
        duties: duties_url,
        jobs: jobs_url,
        tags: tags_url,
        users: users_url,
        uuid: uuid_url
      ]
    }
  end
end
