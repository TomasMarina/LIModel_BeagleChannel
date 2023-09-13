# Load packages -----------------------------------------------------------
require(LIM)

# Read & solve model ------------------------------------------------------
readLIM <- Read("Scripts/flowbeagle_in_plankton.input")
LIMBeagle <- Setup(readLIM)
# Solve the LIM by range estimation
flowranges <- Xranges(LIMBeagle)

# Plot flows --------------------------------------------------------------
Plotranges(LIMBeagle, lab.cex = 0.7, xlab = expression("mg C m"^-3*" d"^-1))
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
Plotranges(LIMBeagle, lab.cex = 0.7, xlab = "g C /m^3/d", type = "V",
           main = "Variable range estimations for Beagle Channel model")

# Plot a single solution
plotweb(Flowmatrix(LIMBeagle),
        bty="n", lab.size=0.85)
