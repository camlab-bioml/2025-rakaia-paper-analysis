library(ggplot2)
library(dplyr)
library(this.path)

expression <- read.csv(paste(this.dir(), "/", "measurements_cd4_ztma26_70.csv", sep=""))

# set a max cap on the expression of CD4 to reduce the length of the tails at the top end of the plot
df <- data.frame(marker = expression$CD4) |> filter(marker < 6)

# Set a different threshold depending on which panel to create

threshold_panel_a <- max(df$marker)
threshold_panel_b <- 0

# panel c annotations are in the first_gate column as +
threshold_panel_c <- min(expression |> filter(first_gate == "+") |> select(CD4))

# same for panel d, but in the second_gate column
threshold_panel_d <- min(expression |> filter(second_gate == "+") |> select(CD4))
# this one is for when no gating is selected (capture all)

# set which threshold to plot
threshold_to_plot <- threshold_panel_d

ggplot(df, aes(x = marker)) +
  geom_histogram(
    aes(fill = after_stat(ifelse(x > threshold_to_plot, "+", "-"))),
    bins = 75,
    color = NA        # remove bin edges
  ) +
  coord_cartesian(xlim = c(0.3, max(df$marker))) +
  # density curves are smoother
  # geom_density(
  #   aes(fill = after_stat(ifelse(x >= threshold, "+", "-"))),
  #   alpha = 0.6,
  #   color = NA
  # ) +
  scale_fill_manual(
    name = "Gate",
    values = c("-" = "steelblue", "+" = "tomato")
  ) +
  labs(
    x = "CD4 Expression",
    y = "Cell Count"
  ) +
  theme_classic() +
  theme(
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank(),
    panel.border = element_blank(),
    axis.text = element_blank()
  )
