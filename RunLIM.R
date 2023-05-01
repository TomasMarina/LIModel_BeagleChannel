require(LIM)

# Read input file and setup the LIM
readLIM <- Read("flowbeagle_out.input")
readLIM

LIMBeagle <- Setup(readLIM)
LIMBeagle

# Solve the LIM by range estimation
flowranges <- Xranges(LIMBeagle)
Plotranges(LIMBeagle, lab.cex = 0.7, xlab = "g C /m^2/d",
           main = "Beagle Channel food web")


