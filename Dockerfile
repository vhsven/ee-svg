FROM docker.pkg.github.com/vhsven/texlive-alpine/texlive-alpine:latest
RUN tlmgr update --self && tlmgr install xkeyval standalone pgf xstring xcolor siunitx circuitikz
CMD sh -c "find . -maxdepth 1 -name \*.tex -exec pdflatex -shell-escape {} \; && rm -f *.aux && rm -f *.log"