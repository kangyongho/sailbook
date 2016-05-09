class HelloController < ApplicationController
  def index
    render text: 'Hello World..!'
    # 컨트롤러에서는 출력 값을 직접 생성하면 안되지만 디버그용으로 사용하자.
  end
  def view
    @msg = 'Hello World..!'
    # @msg - 템플릿변수, 루비 인스턴스 변수 : 액션 메서드에서 데이터를 뷰로 전달할 때 사용하는 변수
    # view - 액션이름 : 액션이름으로 view (template) 파일을 생성해야함
  end
  def list
    @books = Book.all
    # ORM 메소드 all - books 테이블 : select * from books
  end
end
