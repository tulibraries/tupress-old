module BookHelper
	  def social
	  	javascript_tag "$(document).ready(function(){
      $('.share').ShareLink({
          title: '"+@book.title+"',
          text: '"+@book.title+"',
          image: '"+@book.cover_image.url.to_s+"',
          url: 'http://localhost:3000/book/"+@book.book_id+"'
      });
      $('.counter').ShareCounter({
          url: 'http://google.com/',
          increment: true
      });
  });
	  "
	end
  def award_subject_count(subject_id)
    @subject_size = @books.where('subjects LIKE ?', "%subject_id: '"+subject_id+"'%").size 
  end
  def award_year_count(award_year)
    @year_size = @books.where('award_year = ?', award_year).size
  end
end
