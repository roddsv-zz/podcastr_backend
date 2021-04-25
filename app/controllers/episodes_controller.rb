class EpisodesController < ApplicationController
    before_action :set_episode, only: [:show, :update, :destroy]

    #GET /episodes
    def index
        @episodes = Episode.all

        render json: @episodes
    end

    #GET /episodes/1
    def show
        render json: @episode
    end

    #POST /contacts
    def create
        @episode = Episode.new(episode_params)

        if @episode.save
            render json: @episode, status: :created, location: @episode
        else
            render @episode.errors, status: :unprocessable_entity
        end
    end

    #PATCH/PUT /episodes/1
    def update
        if @episode.update(episode_params)
            render json: @episode
        else
            render json: @episode.errors, status: :unprocessable_entity
        end
    end

    #DELETE /episodes/1
    def destroy
        @episode.destroy
    end

    private

    def set_episode
        @episode = Episode.finds(params[:id])
    end

    def episode_params
        params.require(:episode).permit(:title)
    end
end
