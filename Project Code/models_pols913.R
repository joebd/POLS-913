###################
 # FINAL MODELS #
###################


# Model 1 -----------------------------------------------------------------


mod1 <- glm(funddv ~ marital_new + age_new + sex_new + race_new + 
                      income_new + college + ownrent + religon_new + 
                      partyid5, family = "binomial", data = dat_plot_new)


mod1a <- glm(funddv ~ marital_new + age_new + sex_new + race_new + 
                       income_new + college + religon_new + 
                       partyid5, family = "binomial", 
                       data = owners_renters_sample)

mod1;mod1a

# Model 2 -----------------------------------------------------------------


mod2a <- summary(glm(funddv ~ marital_new + age_new + sex_new + race_new + 
                       income_new + college + religon_new + partyid5 + 
                       intfarm_new + intecon_new + intenvir_new + 
                       intmil_new, family = "binomial", data = dat_plot_new))


mod2b <- summary(glm(funddv ~ marital_new + age_new + sex_new + race_new + 
                       income_new + college + religon_new + partyid5 + 
                       intfarm_new + intecon_new + intenvir_new + 
                       intmil_new, family = "binomial", data = owners_sample))


mod2c <- summary(glm(funddv ~ marital_new + age_new + sex_new + race_new + 
                       income_new + college + religon_new + partyid5 + 
                       intfarm_new + intecon_new + intenvir_new + 
                       intmil_new, family = "binomial", data = renters_sample))


mod2a;mod2b;mod2c


# Model 2 - Robust --------------------------------------------------------


mod2a_robust_3 <- coeftest(mod2a, vcov = vcovHC(mod2a, "HC3"))

mod2b_robust_3 <- coeftest(mod2b, vcov = vcovHC(mod2b, "HC3"))

mod2c_robust_3 <- coeftest(mod2c, vcov = vcovHC(mod2c, "HC3"))


mod2a_robust_3;mod2b_robust_3;mod2c_robust_3














