export SITE=
MEDIA=downloads

upload:
	jekyll
	rsync -vaz --exclude week/ -e ssh _site/ jadudm@jadud.com:~/jadud.com/${SITE}
	scp ${MEDIA}/.htaccess jadudm@jadud.com:~/jadud.com/${SITE}/${MEDIA}/

commit:
	git commit -a -m "$M"

push:
	git push

test:
	@echo #######################################
	@echo Launch server at http://localhost:9000/${SITE}/
	@echo #######################################
	jekyll --server 9000 --auto 
	# open http://localhost:9000/${SITE}/

kill:
	killall ruby
