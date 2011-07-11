class FbPagesController < ApplicationController
  def fb_auth_response
    @fb_page = FbPage.find(params[:id])
    #@fb_page.update_attribute(:access_token, params[:code])
    
    url = url_for({:host => request.host, :controller => 'fb_pages', 
                   :action => 'fb_auth_response', :id => @fb_page.id})
                   
 
    u = URI.parse("https://graph.facebook.com/oauth/access_token?" + 
    "client_id=#{FB_APP_ID}&redirect_uri=#{url}&" + 
    "client_secret=#{FB_APP_SECRET}&code=#{params[:code]}")
    
    #response = Net::HTTP.get_response(u)
    #logger.info response.body

    redirect_to u.to_s


  end
  
  # GET /fb_pages
  # GET /fb_pages.xml
  def index
    @fb_pages = FbPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fb_pages }
    end
  end

  # GET /fb_pages/1
  # GET /fb_pages/1.xml
  def show
    @fb_page = FbPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fb_page }
    end
  end

  # GET /fb_pages/new
  # GET /fb_pages/new.xml
  def new
    @fb_page = FbPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fb_page }
    end
  end

  # GET /fb_pages/1/edit
  def edit
    @fb_page = FbPage.find(params[:id])
  end

  # POST /fb_pages
  # POST /fb_pages.xml
  def create
    @fb_page = FbPage.new(params[:fb_page])

    respond_to do |format|
      if @fb_page.save
        format.html { redirect_to(@fb_page, :notice => 'Fb page was successfully created.') }
        format.xml  { render :xml => @fb_page, :status => :created, :location => @fb_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fb_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fb_pages/1
  # PUT /fb_pages/1.xml
  def update
    @fb_page = FbPage.find(params[:id])

    respond_to do |format|
      if @fb_page.update_attributes(params[:fb_page])
        format.html { redirect_to(@fb_page, :notice => 'Fb page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fb_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fb_pages/1
  # DELETE /fb_pages/1.xml
  def destroy
    @fb_page = FbPage.find(params[:id])
    @fb_page.destroy

    respond_to do |format|
      format.html { redirect_to(fb_pages_url) }
      format.xml  { head :ok }
    end
  end
end
