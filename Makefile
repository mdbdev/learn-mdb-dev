build:
	bundle exec jekyll serve --incremental

clean:
	rm -rf _site

deploy:
	bundle exec jekyll build
	firebase deploy

default:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  build   to build the site"
	@echo "  clean   to clean the site"
	@echo "  deploy  to deploy the site"