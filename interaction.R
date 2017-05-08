# Must install packages: "lattice" and "manipulate"
require(lattice)
require(manipulate)

## Load data for this example
dep <- read.csv("depression_intxn.txt", sep="\t")

## Fitted grid of points
# Create x, y grid of all possible anxiety and anxfreedays levels
g <- expand.grid(anxiety=-5:5, anxfreedays=seq(0, 1000, 100))

# Create predicted points from regression with interaction term
dep_regr_intxn <- lm(depression ~ anxiety + anxfreedays + anxiety*anxfreedays, data=dep)
g$depression <- predict(dep_regr_intxn, g)

## Animated 3D wireframe plot (around depression axis)
# See at degrees:   0 for anxiety
# See at degrees: 270 for anxfreedays
manipulate(
  wireframe(depression ~ anxiety * anxfreedays, data=g, zlim=c(-5, 10),
            scales=list(arrows=FALSE), drape=TRUE, colorkey = FALSE,
            screen=list(z=z_rot, x=x_rot)),
  z_rot = slider(0, 360, initial=40),
  x_rot = slider(-90, -70, initial=-70)
)
