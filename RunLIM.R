require(LIM)

# Read input file and setup the LIM
readLIM <- Read("flowbeagle_in_plankton.input")
readLIM

LIMBeagle <- Setup(readLIM)
LIMBeagle

# Solve the LIM by range estimation
flowranges <- Xranges(LIMBeagle)
Plotranges(LIMBeagle, lab.cex = 0.7, xlab = "g C /m^3/d",
           main = "Beagle Channel food web")

# Plot a single solution
plotweb(Flowmatrix(LIMBeagle),
        main="Beagle food web", bty="n", lab.size=0.85)

