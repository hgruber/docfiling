FROM fedora
RUN dnf update -y
RUN dnf install -y tesseract tesseract-langpack-deu libtiff-tools sane-frontends unpaper openssl ImageMagick ghostscript bc
RUN mkdir /scan /documents
RUN ln -s /usr/share/tesseract/tessdata/deu.traineddata /usr/share/tesseract/tessdata/osd.traineddata
ADD scan /usr/local/bin
CMD ["/bin/bash", "/usr/local/bin/scan"]
