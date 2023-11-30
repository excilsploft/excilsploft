FROM pandoc/ubuntu-latex:2.16.2
RUN tlmgr update --all && \
    tlmgr --repository http://www.preining.info/tlgpg/ install titlesec && \
    rm -rf /var/lib/apt/lists/*



