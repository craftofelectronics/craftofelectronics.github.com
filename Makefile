export SITE=teaching/craftoe-sp13
MEDIA=media

config:
	python _code/process-config.py _raw_config.yml _config.yml
  
upload: config
	jekyll
	rsync -vaz --exclude week/ -e ssh _site/ jadudm@jadud.com:~/jadud.com/${SITE}
	scp ${MEDIA}/.htaccess jadudm@jadud.com:~/jadud.com/${SITE}/${MEDIA}/

commit:
	git commit -a -m "$M"

push:
	git push

test: config
	@echo #######################################
	@echo Launch server at http://localhost:9000/${SITE}/
	@echo #######################################
	jekyll --server 9000 --auto --base-url /${SITE} 
	# open http://localhost:9000/${SITE}/

kill:
	killall ruby
