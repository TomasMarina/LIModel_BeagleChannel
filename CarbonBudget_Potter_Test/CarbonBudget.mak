all:CarbonBudget.pdf

CarbonBudget.pdf: CarbonBudget.md CarbonBudget.mak
	pandoc CarbonBudget.md -o CarbonBudget.pdf 
	evince CarbonBudget.pdf		

CarbonBudget.docx: CarbonBudget.md margins.sty CarbonBudget.bib CarbonBudget.mak
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CarbonBudget.bib
	pandoc -H margins.sty --bibliography CarbonBudget.bib --csl=oikos.csl CarbonBudget.md -o CarbonBudget.docx 
			
CarbonBudget_AMNAT.pdf: CarbonBudget_AMNAT.md margins.sty CarbonBudget.bib
	cp "/home/leonardo/BibTeX/Manuscritos-Critical global forest.bib" CarbonBudget.bib
	pandoc -H margins.sty --bibliography CarbonBudget.bib --csl=the-american-naturalist.csl CarbonBudget_AMNAT.md -o CarbonBudget.pdf 
	pdftk CarbonBudget.pdf CarbonBudget_figures.pdf CarbonBudget_appendices.pdf output CarbonBudget_AMNAT.pdf
	evince CarbonBudget_AMNAT.pdf		
