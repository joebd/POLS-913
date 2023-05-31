
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

plot2 <- plot_model(mod2a, type = "pred", terms = "partyid5") +
  scale_y_continuous(labels = scales::percent, limits = c(0,1)) + 
  scale_x_continuous(labels=c("1"="Strong \n Democrat", "2"="Weak \n Democrat",
                              "3"="Independent", "4"="Weak \n Republican", 
                              "5"="Strong \n Republican")) +
  labs(x = "Party Identity", y = "Anti-Funding Attitudes", 
       title = "") +
  theme_classic()


plot2


plot3a <- plot_model(mod2a, type = "pred", terms = "intenvir_new") + 
  scale_y_continuous(labels = scales::percent, limits = c(0,1)) + 
  labs(x = "Enviromental Policy Interest Support", y = "Anti-Funding Attitudes", 
       title = "") +
  theme_classic()


plot3b <- plot_model(mod2a, type = "pred", terms = "intmil_new") + 
  scale_y_continuous(labels = scales::percent, limits = c(0,1)) + 
  labs(x = "Millitary Policy Interest Support", y = "Anti-Funding Attitudes", 
       title = "") +
  theme_classic()

plot3a
plot3b
