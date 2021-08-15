class CommentsController < ApplicationController
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
        @comment = Comment.find_by_id(params[:id])
    end

    def index
        @comments = Comment.all
    end

    def edit
        @comment = Comment.find_by_id(params[:id])
    end

    def update
        @comment = Comment.find_by_id(params[:id])
        @comment.update[comment_params]
        if @comment.valid?
            redirect_to comment_path(@comment)
        else
            render :edit
        end
    end

    def destroy
        @comment = Comment.find_by_id(params[:id])
        @comment.destroy
        redirect_to comments_path
    end


    private

    def comment_params
        params.require(:comment).permit(:content, :title, :wedding_id)
    end



end
