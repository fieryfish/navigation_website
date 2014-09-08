class TagsController < ApplicationController
  def index
  end

  def new
    @tag = Tag.new
  end

  def destroy
    @tag.destroy
    respond_to do |format|
      format.html { redirect_to main_index_path}
    end
  end

  def create
    @tag = Tag.new(tag_params)
    @site = Site.new(name: params[:site_name_of_tag], description: params[:site_description], url: params[:site_url] )

    respond_to do |format|
      if @tag.save && @site.save
        LinkTagSite.create(tag_id: tag.id, site_id: @site.id)
        if @current_user.present?
          UserMakeTags.create(tag_id: @tag.id, user_id: @current_user.id)
          UserMakeSites.create(site_id: @site.id, user_id: @current_user.id)
          LinkSiteUser.create(site_id: @site.id, user_id: @current_user.id)
          LinkTagUser.create(tag_id: @tag.id, user_id: @current_user.id)
        else
          UserMakeTags.create(tag_id: @tag.id, user_id: User::BlankUserId)
          UserMakeSites.create(site_id: @site.id, user_id: User::BlankUserId)
          LinkSiteUser.create(site_id: @site.id, user_id: User::BlankUserId)
          LinkTagUser.create(tag_id: @tag.id, user_id: User::BlankUserId)
        end
        format.html { redirect_to @tag, notice: 'High score was succe    ssfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @tag.update(high_score_params)
        format.html { redirect_to @tag, notice: 'tag was successfully updated.' }
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

  def tag_params
    params.require(:tag).permit(:name)
  end
end
