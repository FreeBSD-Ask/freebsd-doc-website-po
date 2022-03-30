# freebsd-doc-website-po
用来翻译 FreeBSD.org 这个网站

>release 里面的实在是太多了，我无能为力…… 暂时不考虑翻译这个文件夹里的文档

# 构建测试：

```
make DOC_LANG="zh-cn" pdf-books

# advocacy

po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/advocacy/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/advocacy/_index.po"

rm content/advocacy/*

po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/advocacy/_index.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/preface/_index.po" \
  --localized "content/zh-cn/advocacy/_index.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
----------------------------------------------------------------
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/advocacy/myths.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/advocacy/myths.po"
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/advocacy/myths.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/preface/myths.po" \
  --localized "content/zh-cn/advocacy/myths.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
  
 ----------------------------------------------------------
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/advocacy/whyusefreebsd.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/advocacy/whyusefreebsd.po"
   
po4a-translate \
  --format asciidoc \
  --option compat=asciidoctor \
  --option yfm_keys=title,part,description \
  --master "content/en/advocacy/whyusefreebsd.adoc" \
  --master-charset "UTF-8" \
  --po "content/zh-cn/books/handbook/preface/whyusefreebsd.po" \
  --localized "content/zh-cn/advocacy/whyusefreebsd.adoc" \
  --localized-charset "UTF-8" \
  --keep 0
 
 ---------------------------------------------------------------
 # commercial
 
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/_index.po"
   
  po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/consult.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/consult.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/consult_bycat.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/consult_bycat.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/hardware.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/isp.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/isp.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/misc.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/misc.po"
   
      
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/software.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/software.po"
   
     
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/commercial/software_bycat.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/commercial/software_bycat.po"
   
   ------------------------------------
   
            po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/community/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/community/_index.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/community/irc.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/community/irc.po"
   
    
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/community/mailinglists.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/community/mailinglists.po"
   
   ----------------------------------------------------------
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/copyright/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/copyright/_index.po"
   
              po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/copyright/daemon.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/copyright/daemon.po"
   
                 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/copyright/freebsd-doc-license.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/copyright/freebsd-doc-license.po"
   
                    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/copyright/freebsd-license.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/copyright/freebsd-license.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/copyright/license.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/copyright/license.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/copyright/trademarks.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/copyright/trademarks.po"
   
   -----------------------------------------------
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/developers/cvs.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/developers/cvs.po"
   
--------------------------------------------------------------

   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docproj/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docproj/_index.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docproj/doc-set.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docproj/doc-set.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docproj/submitting.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docproj/submitting.po"
   
      
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docproj/translations.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docproj/translations.po"
   
         
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docproj/who.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docproj/who.po"
   
 ----------------------------------------
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docs/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docs/_index.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docs/books.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docs/books.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/docs/webresources.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/docs/webresources.po"
   
   -------------------------------------------------------------
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/donations/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/donations/_index.po"
   
             po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/donations/donors.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/donations/donors.po"
   
   ------------------------------------------------------------
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/_index.po"
   
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2003.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2003.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2004.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2004.po"
   
        
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2005.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2005.po"
   
           
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2006.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2006.po"
   
   
              
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2007.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2007.po"
   
   
      
              
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2008.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2008.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2009.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2009.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2010.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2010.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2011.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2011.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2012.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2012.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2013.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2013.po"
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2014.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2014.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2015.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2015.po"
   
              po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2016.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2016.po"
   
                 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2017.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2017.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2018.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2018.po"
   
      
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/events/2019.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/events/2019.po"
   
 -------------------------------------------------------
 
       
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/_index.po"
  
         
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/contact.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/contact.po"
  
  
  po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/screenshots.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/screenshots.po"
  
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/bugging.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/bugging.po"
  
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/develfaq.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/develfaq.po"
  
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/example-makefile.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/example-makefile.po"
  
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/gnome_porting.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/gnome_porting.po"
  
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/gnome1_porting.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/gnome1_porting.po"
  
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/gnome2_porting.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/gnome2_porting.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/halfaq.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/halfaq.po"
  
     
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/porting.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/porting.po"
  
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/gnome/docs/volunteer.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/gnome/docs/volunteer.po"
  
  ------------------------------------------------------

po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/_index.po"
  
  po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/about.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/about.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/bylaws.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/bylaws.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/clusteradm.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/clusteradm.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/code-of-conduct.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/code-of-conduct.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/conduct-reporting.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/conduct-reporting.po"
   
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/core-vote.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/core-vote.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/data.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/data.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/developer.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/developer.po"
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/doceng.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/doceng.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/expire-bits.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/expire-bits.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/hats.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/hats.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/i18n.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/i18n.po"
   
   
      
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/machines.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/machines.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/members.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/members.po"
   
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/mirror.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/mirror.po"
   
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/new-account.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/new-account.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/policies.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/policies.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/proposing-committers.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/proposing-committers.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/resources.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/resources.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/software-license.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/software-license.po"
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/internal/working-with-hats.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/internal/working-with-hats.po"
   
  ------------------------------------------------------------
  
  po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ipv6/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ipv6/_index.po"
  
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ipv6/w6d.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ipv6/w6d.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ipv6/w6d-www-stats.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ipv6/w6d-www-stats.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ipv6/w6l.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ipv6/w6l.po"
   
--------------------------------------------------------

  po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/java/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/java/_index.po"
 
 ----------------------------------------------------------
 
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/marketing/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/marketing/_index.po"
  
  ---------------------------------------------------------
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/news/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/news/_index.po"
  
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/news/sou1999.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/news/sou1999.po"
  
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/news/newsflash.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/news/newsflash.po"
  
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/news/freebsd-coined.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/news/freebsd-coined.po"
  
  
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/news/2012-compromise.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/news/2012-compromise.po"
  
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/news/1993/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/news/1993/_index.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/news/1993/freebsd-coined.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/news/1993/freebsd-coined.po"

-----------------------------------

po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/_index.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/amd64.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/amd64.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/arm.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/arm.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/i386.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/mips.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/mips.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/ppc.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/ppc.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/sparc.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/sparc.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/platforms/xbox.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/platforms/xbox.po"
   
  -------------------------------------------
  
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/_index.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/charter.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/charter.po"
   
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/implementation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/implementation.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/policies.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/policies.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/policies_committing.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/policies_committing.po"
   
      
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/policies_contributors.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/policies_contributors.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/policies_eol.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/policies_eol.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/portmgr/qa.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/portmgr/qa.po"
   
   ----------------------------------------------
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ports/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ports/_index.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ports/installing.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ports/installing.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ports/references.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ports/references.po"
   
      
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ports/searching.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ports/searching.po"
   
         
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/ports/updating.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/ports/updating.po"
   
   -----------------------------------------
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/_index.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-1.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-1.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-2.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-2.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-3.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-3.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-4.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-4.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-5.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-5.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-6.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-6.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-7.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-7.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-8.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-8.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/press-rel-9.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/press-rel-9.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/press/pressreleases.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/press/pressreleases.po"
   
   ---------------------------------------------
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/projects/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/projects/_index.po"
   
   
            po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/projects/newbies.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/projects/newbies.po"
   
   
               po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/projects/summerofcode.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/projects/summerofcode.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/projects/mips/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/projects/mips/_index.po"
   
 ------------------------------------------------------------
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/prstats/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/prstats/_index.po"
   
   
   --------------------------------
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/_index.po"
   
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/1.0/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/1.0/announce.po"
 
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.0/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.0/announce.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.0/credits.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.0/credits.po"
 
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.0/install.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.0/install.po"
   
    
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.0/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.0/notes.po"
   
    
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.0.5R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.0.5R/announce.po"
 
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.0.5R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.0.5R/notes.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.5R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1.5R/announce.po"
 
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.5R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1.5R/notes.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.6R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1.6R/announce.po"
 
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.6R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1.6R/notes.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.6R/security.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1.6R/security.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.6R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1.7R/announce.po"
 
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.6R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1.7R/notes.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.6R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1R/announce.po"
 
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.1.6R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.1R/notes.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.1R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.1R/notes.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.2R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.2R/notes.po"
   
             po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.2R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.2R/errata.po"
   
            po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.5R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.5R/notes.po"
   
             po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.5R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.5R/errata.po"
   
                po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.5R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.5R/announce.po"
   
   
               po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.6R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.6R/notes.po"
   
             po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.6R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.6R/errata.po"
   
                po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.6R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.6R/announce.po"
   
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.7R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.7R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.7R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.7R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.7R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.7R/announce.po"
   
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.8R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.8R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.8R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.8R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2.8R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2.8R/announce.po"
   
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2R/install-media.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2R/install-media.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/2.2R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/2.2R/announce.po"
   
      
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.0R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.0R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.0R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.0R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.0R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.0R/announce.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.1R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.1R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.1R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.1R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.1R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.1R/announce.po"
   
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.2R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.2R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.2R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.2R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.2R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.2R/announce.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.3R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.3R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.3R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.3R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.3R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.3R/announce.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.4R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.4R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.4R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.4R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.4R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.4R/announce.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.5R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.5R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.5R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.5R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/3.5R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/3.5R/announce.po"
   
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.0R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.0R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.0R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.0R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.0R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.0R/announce.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.1.1R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.1.1R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.1.1R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.1.1R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.1.1R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.1.1R/announce.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.1R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.1R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.1R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.1R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.1R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.1R/announce.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.2R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.2R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.2R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.2R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.2R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.2R/announce.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.3R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.3R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.3R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.3R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.3R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.3R/announce.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.4R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.4R/relnotes-i386.po"
   
      
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.3R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.3R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.3R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.3R/announce.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/notes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/notes.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/relnotes-i386.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/contents.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/contents.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/qa.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/qa.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.5R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.5R/schedule.po"
   
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/relnotes-i386.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/readme.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/readme.po"
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6.2R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6.2R/relnotes.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/relnotes-i386.po"
   
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/relnotes.po"
   
            po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/contents.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/contents.po"
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/installation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/installation.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/installation-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/installation-alpha.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/installation-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/installation-i386.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/qa.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/qa.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.6R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.6R/schedule.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/relnotes-i386.po"
   
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/relnotes.po"
   
            po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/contents.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/contents.po"
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/installation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/installation.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/installation-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/installation-alpha.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/installation-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/installation-i386.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/qa.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/qa.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/schedule.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.7R/readme.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.7R/readme.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/relnotes-i386.po"
   
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/relnotes.po"
   
         
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/installation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/installation.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/installation-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/installation-alpha.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/installation-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/installation-i386.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/qa.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/qa.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/schedule.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.8R/readme.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.8R/readme.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/relnotes-i386.po"
   
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/relnotes.po"
   
         
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/installation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/installation.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/installation-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/installation-alpha.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/installation-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/installation-i386.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/qa.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/qa.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/schedule.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/readme.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/readme.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.9R/todo.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.9R/todo.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/relnotes-i386.po"
   
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/relnotes.po"
   
         
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/installation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/installation.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/installation-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/installation-alpha.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/installation-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/installation-i386.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/qa.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/qa.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/schedule.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/readme.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/readme.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.10R/todo.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.10R/todo.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/relnotes-i386.po"
   
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/relnotes.po"
   
         
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/installation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/installation.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/installation-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/installation-alpha.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/installation-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/installation-i386.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/errata_policy.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/errata_policy.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/schedule.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/readme.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/readme.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/todo.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/todo.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/5.0R/errata.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/5.0R/errata.po"
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/announce.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/announce.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/hardware.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/hardware.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/hardware-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/hardware-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/hardware-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/hardware-i386.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/relnotes-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/relnotes-alpha.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/relnotes-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/relnotes-i386.po"
   
   
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/relnotes.po"
   
         
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/installation.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/installation.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/installation-alpha.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/installation-alpha.po"
   
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/installation-i386.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/installation-i386.po"
   
      
 po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/errata_policy.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/errata_policy.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/schedule.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/schedule.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/readme.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/readme.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releases/4.11R/todo.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releases/4.11R/todo.po"
   
   ------------------------------------------------------
   
po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releng/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releng/_index.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releng/charter.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releng/charter.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/releng/dst_info.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/releng/dst_info.po"
   
  ------------------------------------------------
  
  po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/search/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/search/_index.po"
   
   po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/search/searchhints.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/search/searchhints.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/search/search-mid.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/search/search-mid.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/search/opensearch/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/search/opensearch/_index.po"
   
   ---------------------------------------------
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/security/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/security/_index.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/security/advisories.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/security/advisories.po"
   
      
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/security/charter.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/security/charter.po"
   
       
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/security/notices.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/security/notices.po"
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/security/reporting.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/security/reporting.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/security/unsupported.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/security/unsupported.po"
   
   -----------------------------------------
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/snapshots/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/snapshots/_index.po"
   
   -----------------------------------------
      
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/status/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/status/_index.po"
   
          po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/status/howto.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/status/howto.po"
   
   ---------------------------------
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/support/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/support/_index.po"
   
   
      po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/support/bugreports.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/support/bugreports.po"
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/support/webresources.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/support/webresources.po"
   ---------------------------------------------------
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/usergroups/_index.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/usergroups/_index.po"
   ------------------------------------------------
   
   
        po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/about.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/about.po"
   
           po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/administration.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/administration.po"
   
            po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/applications.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/applications.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/art.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/art.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/features.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/features.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/logo.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/logo.po"
   
         po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/mailto.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/mailto.po"
   
       po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/privacy.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/privacy.po"
   
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/publish.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/publish.po"
   
     
     po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/relnotes.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/relnotes.po"
   
    po4a-gettextize \
   --format asciidoc \
   --option compat=asciidoctor \
   --option yfm_keys=title,part,description \
   --master "content/en/where.adoc" \
   --master-charset "UTF-8" \
   --copyright-holder "The FreeBSD Project" \
   --package-name "FreeBSD Documentation" \
   --po "content/zh-cn/where.po"
   
 ```
