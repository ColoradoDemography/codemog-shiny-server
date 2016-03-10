FROM rocker/shiny:latest

MAINTAINER Rob Kemp "robert.kemp@state.co.us"

# libssl-dev

RUN apt-get update && \
    apt-get install -y -t  git && \
    R -e "install.packages(c('shiny', 'rmarkdown', 'tm', 'wordcloud', 'memoise', 'dplyr', 'plotly', 'tidyr'), repos='http://cran.rstudio.com/')" && \
    cd /srv/shiny-server && \
    git clone https://github.com/ColoradoDemography/demographic_dashboard
