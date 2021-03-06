

server:
	@RACK_ENV=production ruby controller.rb

dependencies:
	@sudo apt-get install rubygems ruby-dev ruby-ldap unzip postgresql-server-dev-9.1
	@sudo gem install bundler
	@sudo bundle install

bootstrap:
	@wget -O public/bootstrap.zip http://twitter.github.io/bootstrap/assets/bootstrap.zip
	@unzip -d public/ public/bootstrap.zip
	@rm public/bootstrap.zip
