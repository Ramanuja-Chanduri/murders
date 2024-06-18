library(tidyverse)

load('rda/murders.rda')

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.75, stat = 'identity', fill = 'cyan', color = 'darkgray') +
  coord_flip()

ggsave("figs/barplot.png")