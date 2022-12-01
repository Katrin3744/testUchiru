*Установка
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed

Запуск приложения происходит через консоль Ruby irb

load 'app/application.rb'

Далее можно использовать все методы моделей Parent, Student, ParentsStudent
