class StoreController < ApplicationController
  def index
    @projects = Project.order(:title)
  end
  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf:"PDF-de-#{@project.id}",
        header: {
          center: "Proyectos Juan Carlos Guerrero"
        },
        footer: {
          center: "www.jclatam.com"
        },
        layout: '/store/index.html.erb',
        page_size: 'legal',
        file:'/projects/show.pdf.erb'
      end
    end
  end
end
