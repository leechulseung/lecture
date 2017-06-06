class BoardController < ApplicationController
  
  #강의평가 게시판
  def lb #강의평가 메인(교양)
    @post = Lbbs1.all
  end
  
  def lnew # 강평 개설 뷰
    @bbs = params[:bbs]
  end
  
  def lcreate # 강의 개설
    @post = params[:bbs].capitalize.constantize.new
    #constantize함수로 상수화를 통해 변수를 상수로만들고, 객체를 생성할 수 있게 된다.
    @post.title = params[:title]
    @post.name = params[:contents]
    @post.save
    
    redirect_to "/board/#{params[:bbs]}"
  end
  
  def lshow # 강의 댓글 페이지
    @pname = params[:bbs]
    @post = params[:bbs].capitalize.constantize.find(params[:bbs_id])
    @com = Lcom.where(lbbs1_id: params[:bbs_id])
  end
  
  def ldestroy #강의 폐광 메소드
    @post = params[:bbs].capitalize.constantize.find(params[:bbs_id])
    @post.destroy
    redirect_to "/board/#{params[:bbs]}"
  end


  

  
  #자유게시판
  def cb 
    
  end
  
  def qb #질문 게시판
  end
  

end
