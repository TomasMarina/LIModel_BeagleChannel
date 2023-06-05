require(LIM)

# Read input file and setup the LIM
readLIM <- Read("Scripts/flowbeagle_in_plankton.input")
LIMBeagle <- Setup(readLIM)

# Solve the LIM by range estimation
flowranges <- Xranges(LIMBeagle)
#Varranges(LIMBeagle)  # shows variable ranges
Plotranges(LIMBeagle, lab.cex = 0.7, xlab = "g C /m^3/d",
           main = "Beagle Channel food web")

# Plot a single solution
plotweb(Flowmatrix(LIMBeagle),
        main="Beagle food web", bty="n", lab.size=0.85)
