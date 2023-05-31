
# Plots -------------------------------------------------------------------

plot1 <- ggplot(dat_plot, aes(x = as.factor(aidhouse_new)))

plot1 + 
  geom_bar(mapping = aes(y = ..prop..*100, group = 1)) +
  facet_wrap(~ year, nrow = 1) + 
  scale_x_discrete(labels = c("Against", "Support")) + 
  labs(title = "", x = "Affordable Housing", y = "Proportion of Responses (%)") +
  theme_bw() + 
  theme(axis.line = element_line(color='black'), plot.background = element_blank(), 
        panel.grid.major = element_blank(), panel.grid.minor = element_blank())


# -------------------------------------------------------------------------


