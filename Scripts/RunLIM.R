# Load packages -----------------------------------------------------------
require(LIM)

# Read & solve model ------------------------------------------------------
## Inner Channel
readLIM_in <- Read("Scripts/flowbeagle_in.input")
LIMBeagle_in <- Setup(readLIM_in)
# Solve the LIM by range estimation
flowranges_in <- Xranges(LIMBeagle_in)

## Outer Channel
readLIM_out <- Read("Scripts/flowbeagle_out.input")
LIMBeagle_out <- Setup(readLIM_out)
# Solve the LIM by range estimation
flowranges_out <- Xranges(LIMBeagle_out)

# Plot flows --------------------------------------------------------------

plotflows_in <- Plotranges(LIMBeagle_in, lab.cex = 0.7, xlab = expression("mg C m"^-3*" d"^-1))
plotflows_out <- Plotranges(LIMBeagle_out, lab.cex = 0.7, xlab = expression("mg C m"^-3*" d"^-1))
# Combine flow plots

# Settings to A4 page
mtext("Flow estimations", side = 2, line = 2.5)
mtext("Carbon flow model for Beagle Channel", side=3, line=1, adj=0.5, cex=1.5)
# mtext("Inner part, spring situation", side=3, line=.1, adj=0.5, cex=1)
legend(x=113, y=10, c("wDET: Detritus in water column", "DOC: Dissolved Organic Carbon", "BAC: Bacteria",
         "PHY: Phytoplankton (mainly Diatoms)", "HNF: Heterotrophic nanoflagellates",
         "MIZ: Microzooplankton (67 to 200 micm)", "MEZ: Mesozooplankton (200 to 20000 micm)",
         "ICH: Ichthyoplankton (all fish spp)", "GRI: Grimothea gregaria",
         "FPL: Fish pelagic (Sprattus fuegensis)"),
       y.intersp = .5, cex=0.5, bty="n")

# Plot variable ranges
Plotranges(LIMBeagle_in, lab.cex = 0.7, xlab = expression("mg C m"^-3*" d"^-1), type = "V",
           main = "Variable range estimations")

# Plot a single solution
plotweb(Flowmatrix(LIMBeagle_out),
        bty="n", lab.size=0.85)
