docker-compose up -d
docker-compose run web mix phoenix.new hello_world
mv hello_world/* ./
mv hello_world/.gitignore ./
rm -rf hello_world
# don't forget to rename your database hostname, you remember this step - right?
docker-compose run web mix ecto.create
docker-compose restart web
