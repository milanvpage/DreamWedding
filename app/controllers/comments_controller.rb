class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in?
    before_action :find_comment, only: [:show, :update, :edit, :destroy]
    
    def new
        @comment = Comment.new
    end
    
    def create
        @comment = Comment.new(comment_params) 
        if @comment.save
            
            session[:wedding_id] = @comment.id 
            
            redirect_to @comment

        else
            render :new
        end
    end

    def show
    end

    def index
        @comments = Comment.all
    end

    def edit
    end

    def update
        @comment.update[comment_params]
        if @comment.valid?
            redirect_to comment_path(@comment)
        else
            render :edit
        end
    end

    def destroy
        @comment.destroy
        redirect_to comments_path
    end


    private

    def comment_params
        params.require(:comment).permit(:content, :title, :wedding_id)
    end

    def find_comment
        @comment = Comment.find_by_id(params[:id])
    end



end
