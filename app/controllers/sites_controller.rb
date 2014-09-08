class SitesController < ApplicationController
  def index
  end

  def new
    @site = Site.new
  end

  def destroy
    @site.destroy
    respond_to do |format|
      format.html { redirect_to main_index_path}
    end
  end

  def create
    @site = Site.new(name: params[:name], description: params[:description], url: params[:url] )

    tag_of_site = params[:tag_of_site]
    add_to_my_site = params[:add_to_my_site]

    tag = Tag.find_or_create_by!(name: tag_of_site)


    respond_to do |format|
      if @site.save
        # save to the link table of tag and site
        LinkTagSite.create(tag_id: tag.id, site_id: @site.id)
        if @current_user.present?
          if add_to_my_site
            # show table of the nav
            LinkSiteUser.create(site_id: @site.id, user_id: @current_user.id)
            # create table by user
            UserMakeSites.create(site_id: @site.id, user_id: @current_user.id)
          else
            UserMakeSites.create(site_id: @site.id, user_id: @current_user.id)
          end
        else
          if add_to_my_site
            LinkSiteUser.create(site_id: @site.id, user_id: User::BlankUserId)
            UserMakeSites.create(site_id: @site.id, user_id: User::BlankUserId)
          else
            UserMakeSites.create(site_id: @site.id, user_id: User::BlankUserId)
          end
        end

        format.html { redirect_to @site, notice: 'High score was successfully created.' }
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
