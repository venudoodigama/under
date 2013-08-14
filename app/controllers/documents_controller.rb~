class DocumentsController < ApplicationController

def show
   @document = Document.find(params[:id])
   # require the ability to read documents
   authorize! :read, @document
  end
end
