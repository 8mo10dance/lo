# frozen_string_literal: true

module Api
  module V1
    class PostsController < ApplicationController
      def index
        @posts = Post.all
        render json: { posts: PostBlueprint.render(@posts) }
      end
    end
  end
end
