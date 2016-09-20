#target: prerequisites
#    shell_script arg1 arg2 arg3
# pandoc -V documentclass=book (book, article, extarticle)
# pandoc --chapters
# extarticle
# article
# margen setup: https://stackoverflow.com/questions/13515893/set-margin-size-when-converting-from-markdown-to-pdf-with-pandoc#13516042

%.html: %.md
	pandoc -s --template "./templates/default.html5" -f markdown -t html5 --css css/pandoc.css -s -o $@ $<
#	pandoc -s --template "./templates/default_toc" -f markdown -t html5 --toc --css css/pandoc.css -s -o $@ $< 
clean:
	rm *.html
