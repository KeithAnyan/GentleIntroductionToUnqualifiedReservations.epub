
ALL : GentleIntroductionToUnqualifiedReservations.epub GentleIntroductionToUnqualifiedReservations.mobi GentleIntroductionToUnqualifiedReservations.pdf

GentleIntroductionToUnqualifiedReservations.epub : 
	rm -f GentleIntroductionToUnqualifiedReservations.epub
	zip -X0 GentleIntroductionToUnqualifiedReservations.epub mimetype
	zip -Xur9D GentleIntroductionToUnqualifiedReservations.epub META-INF/* OEBPS/*

GentleIntroductionToUnqualifiedReservations.mobi : GentleIntroductionToUnqualifiedReservations.epub
	rm -f GentleIntroductionToUnqualifiedReservations.mobi
	ebook-convert GentleIntroductionToUnqualifiedReservations.epub GentleIntroductionToUnqualifiedReservations.mobi

GentleIntroductionToUnqualifiedReservations.pdf : GentleIntroductionToUnqualifiedReservations.epub
	rm -f GentleIntroductionToUnqualifiedReservations.pdf
	ebook-convert GentleIntroductionToUnqualifiedReservations.epub GentleIntroductionToUnqualifiedReservations.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

