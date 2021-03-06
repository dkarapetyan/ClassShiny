# TODO: Make book pane into interactive ui--may fix bug
# 
# Author: David Karapetyan
###############################################################################

shinyUI(
		fluidPage(
				
				# application title
				titlePanel("CLASS Model Forecasting"),
				
				fluidRow(
						column(3, wellPanel(selectInput(
												inputId = "bank",
												label = "Choose a bank to display:",
												choices = c(
														"Ally Financial Inc.",
														"American Express Company",
														"Bank of America Corporation", 
														"Barclays Delaware Holdings LLC",
														"BB&T Corporation",
														"Capital One Financial Corporation",
														"Citigroup Inc.",
														"Discover Financial Services",
														"General Electric Capital Corporation", 
														"JPMorgan Chase & Co.",
														"Santander Holdings USA, Inc.",
														"TD Bank US Holding Company", 
														"U.S. Bancorp",
														"United Services Automobile Association",
														"Wells Fargo & Company", 
														"PNC Financial Services Group, Inc.",
														"HSBC North America Holdings Inc.", 
														"Citizens Financial Group, Inc.",
														"Fifth Third Bancorp",
														"First National of Nebraska, Inc.", 
														"KeyCorp",
														"SunTrust Banks, Inc.",
														"Popular, Inc.",
														"United National Corporation", 
														"Bank of New York Mellon Corporation"),
												selected = "Bank of America Corporation"
										))),
						column(3, wellPanel(selectInput(
												inputId = "book",
												label = "Choose a book to display:",
												choices = c(
														"Capital",
														"PPNR",
														"AFS",
														"LLL",
														"Loss",
														"NCO"
												),
												selected = "Capital"
										))),
						column(3, wellPanel(uiOutput("ui"))) 
				),
				mainPanel(plotOutput("plot"))
		))	