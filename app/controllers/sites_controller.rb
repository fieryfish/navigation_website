class SitesController < ApplicationController
  def index
  end

  def new
    @site = Tag.new
  end

  def destroy
    @site.destroy
    respond_to do |format|
      format.html { redirect_to main_index_path}
    end
  end

  def create
    @site = Tag.new(tag_params)

    respond_to do |format|
      if @site.save
        if @current_user.present?
          UserMakeTags.create(site_id: @tag.id, user_id: @current_user.id)
        else
          UserMakeTags.create(site_id: @tag.id, user_id: User::BlankUserId)
        end
        format.html { redirect_to @site, notice: 'High score was succe    ssfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @site.update(high_score_params)
        format.html { redirect_to @site, notice: 'tag was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  def edit
  end

  def show
  end

  private

  def site_params
    params.require(:site).permit(:name)
  end
end
