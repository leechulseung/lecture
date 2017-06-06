class BoardController < ApplicationController
  def lb #강의평가 게시판
    
  end

  
  ## 자유게시판 
  
  def cb #자유게시판
    @cbb = Cbb.all
  end
  
  def create  #자유게시판 db접근
        @cbbs = Cbb.new
        @cbbs.title = params[:input_title]
        @cbbs.content = params[:input_content]
        @cbbs.save
        redirect_to '/board/cb'
  end
  
  def newcb #자유게시판 글쓰기
  end
  
  def cdestroy #자유게시판 삭제
    @cbbs = Cbb.find(params[:board_id])
    @cbbs.destroy
    redirect_to '/board/cb'
  end 
  
  def cupdate
    @cbbs = Cbb.find(params[:board_id])
    @cbbs.title = params[:input_title]
    @cbbs.content = params[:input_content]
    @cbbs.save
    
    redirect_to "/board/cshow/#{@cbbs.id}"
  end  
  def cedit
    @cbbs = Cbb.find(params[:board_id])
  end
  
  def cshow #자유게시판 각각의 show
    @cbbs = Cbb.find(params[:board_id])
  end 
  
  #질문게시판
  def qb #질문 게시판
    @qbb = Qbb.all
  end
  
  def qcreate #Q&A db접근
        @qbb = Qbb.new
        @qbb.title = params[:qinput_title]
        @qbb.content = params[:qinput_content]
        @qbb.save
        
        redirect_to '/board/qb'
  end

  def newqb #Q&A 글쓰기
  end
  
  
  def qshow #Q&A 각각의 show
  end
  
  
  def qdestroy #Q&A 삭제
  end
  
  def qedit
  end

  def qupdate
  end
  
end
