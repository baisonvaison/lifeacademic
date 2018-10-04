Rails.application.routes.draw do
  root 'academic#index'
  get 'academic' => 'academic#index'

  get 'news' => 'news#index'
  get 'news/news1' => 'news#news1'
  get 'news/news2' => 'news#news2'

  get 'about' => 'about#index'

  get 'comic' => 'comic#index'

  get 'movie' => 'movie#index'

  get 'book' => 'book#index'
  get 'book/book1' => 'book#book1'
  get 'book/book2' => 'book#book2'

  get 'essay' => 'essay#index'
  get 'essay/essay1' => 'essay#essay1'
  get 'essay/essay2' => 'essay#essay2'
  get 'essay/essay3' => 'essay#essay3'
  get 'essay/essay4' => 'essay#essay4'
  get 'essay/essay5' => 'essay#essay5'
  get 'essay/essay6' => 'essay#essay6'

  get 'contact' => 'contact#index'

end
