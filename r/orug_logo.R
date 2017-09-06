library(ggplot2)
library(Cairo)

x <- data.frame(x = c(.6, 0),
                y = c(.5, 0))

g <- ggplot(x) +
  geom_text(aes(x, y, label = c('O!', 'R')), 
            size = 100,
            color = c('black', '#1F65B7'),
            alpha = .9,
            family = c('serif', 'ab'),
            fontface = c('plain', 'bold')) +
  coord_cartesian(xlim = c(-.6, 1.5), ylim = c(-.9, 1.4)) +
  theme_void()
g

png(filename = 'orug_logo.png', bg = 'white', type = 'cairo')
print(g)
dev.off()

file.copy('orug_logo.png', 'public/img/orug_logo.png', overwrite = TRUE)
