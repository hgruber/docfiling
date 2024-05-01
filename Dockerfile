FROM alpine
RUN apk add tesseract-ocr tesseract-ocr-data-deu tiff-tools sane-utils openssl imagemagick ghostscript bc
RUN mkdir /scan /documents
RUN ln -s /usr/share/tessdata/deu.traineddata /usr/share/tessdata/osd.traineddata
ADD scan /usr/local/bin
CMD ["/bin/sh", "/usr/local/bin/scan"]
