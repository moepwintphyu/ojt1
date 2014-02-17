class LibrariesController < ApplicationController
  # GET /libraries
  # GET /libraries.json
  def index
    @libraries = Library.all

    respond_to do |format|
      format.html # index.html.erb

      format.json { render json: @libraries }
      #format.pdf { send_data Library.to_pdf(@libraries)}
      #format.pdf { render :pdf => pdf}
    end
  end

  #def pdf
      #send_file Rails.root.join('private','Ragelio.pdf'), :type =>"app/pdf", :x_sendfile=>true
  #end

 # def pdf
    #library=Library.find(params[:id])
      #if params[:commit]="save"
    #send_file Rails.root.join('private','README.rdoc'),:type=>"application/pdf", :x_sendfile=>true
 # end
#end


def pdf
     @library = Library.find(params[:id])
     #send_file(@library)
     
     #send_file Rails.root.join('private','README.rdoc'), :type => 'application/pdf', :x_sendfile =>true
     name=@library.to_str
     send_file Rails.root.join('public',name), :type => 'application/pdf', :x_sendfile =>true
     #@library = Library.find(params[:id])
     #:filepath=@library
    #send_file @library.File.path , :type => 'application/pdf', :x_sendfile =>true
    #render :text => "file has been uploadfile successfully"
end



  #def self.to_pdf 
    
      #pdf << [Library.File.id]

  #end

  #def uploadfile
      #post = DataFile.save(params [:library])
      #render :text => "file has been uploadfile successfully"
  #end

  #def download
     #send_file 'public/system/libraries', :type => 'application/pdf', :x_sendfile =>true

  #end
 #def donwload
    #send_file("/doc/file.pdf",:filename => "file.pdf", :type => "app/pdf")
   # @libraries = Library.find(params[:id])
   # send_file '/data_store/data.pdf'
 #end
 # GET /libraries/1e
  # GET /libraries/1.json
  def show
    @library = Library.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      
      format.json { render json: @library }

    end
  
    #send_file "{RAILS_ROOT}/Work/ojt1/app/assests/pdf/#{params[:file_name]}" , :type=>"text/pdf"
    
    #send_file file_path, :disposition => 'attachment'  
  #send_file "../Home/Download/huge.zip" , :type=>"application/zip", :x_sendfile=>true
  end
  # GET /libraries/new
  # GET /libraries/new.json
  def new
    @library = Library.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @library }
    end
  end

  # GET /libraries/1/edit
  def edit
    @library = Library.find(params[:id])
  end

  # POST /libraries
  # POST /libraries.json
  def create
    @library = Library.new(params[:library])

    respond_to do |format|
      if @library.save
        format.html { redirect_to @library, notice: 'Library was successfully created.' }
        format.json { render json: @library, status: :created, location: @library }
      else
        format.html { render action: "new" }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /libraries/1
  # PUT /libraries/1.json
  def update
    @library = Library.find(params[:id])

    respond_to do |format|
      if @library.update_attributes(params[:library])
        format.html { redirect_to @library, notice: 'Library was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libraries/1
  # DELETE /libraries/1.json
  def destroy
    @library = Library.find(params[:id])
    @library.destroy

    respond_to do |format|
      format.html { redirect_to libraries_url }
      format.json { head :no_content }
    end
  end
end
