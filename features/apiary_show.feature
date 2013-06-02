Feature: apiary - show

Background:
  Given the following apiaries exist:
		| name     | adress | coordinates      |
		| Olaizola | Lujan  | 12.333W, 12.333S |
		| Brahama  | Lujan  | 13.333W, 13.333S |
	
Scenario: show apiaries
	When I visit "/apiaries"
	Then the response should be OK
	And I should see first and last apiary match with:
		| name     | adress | coordinates      |
		| Olaizola | Lujan  | 12.333W, 12.333S |
		| Brahama  | Lujan  | 13.333W, 13.333S |
		
Scenario: visit new apiary
	When I visit "/apiaries/new"
	Then I should see "/apiaries/new"