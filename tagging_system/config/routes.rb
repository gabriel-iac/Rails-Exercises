Rails.application.routes.draw do
 root :to => 'marketing#index'

 get '/about-us' => 'marketing#about_us'
 get '/maths-curriculum' => 'marketing#curriculum'
 get '/online-maths-intervention' => 'marketing#how_it_works'
 get '/meet-the-tutors' => 'marketing#meet_the_tutors'
 get '/book-a-demo' => 'marketing#book_a_demo'
 get '/our-schools' => 'marketing#our_schools'
 get '/our-schools/rush-green-primary-school' => 'marketing#rush_green_primary_school'
 get '/our-schools/springfield-primary-school' => 'marketing#springfield_primary_school'
 get '/our-schools/somers-heath-primary-school' => 'marketing#somers_heath_primary_school'
 get '/our-schools/green-park-primary-school' => 'marketing#green_park_primary_school'
 get '/our-schools/copthorne-primary-school' => 'marketing#copthorne_primary_school'
 get '/pricing' => 'marketing#pricing'
 get '/careers' => 'marketing#careers'
 get '/login' => 'marketing#login'
end
