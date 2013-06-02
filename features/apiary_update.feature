Feature: apiary - update

Background:
  Given the following apiaries exist:
		| name     | adress | coordinates      |
		| Olaizola | Lujan  | 12.333W, 12.333S |
	
Scenario: update apiaries
	When I put "/apiaries/" with:
		| name      | adress  | coordinates        |
		| Olaizola2 | Lujan2  | 122.333W, 122.333S |
	Then the response should be OK
	And the last apiary should match:
		| name      | adress  | coordinates        |
		| Olaizola2 | Lujan2  | 122.333W, 122.333S |

Scenario: delete apiaries
	When I delete "/apiaries/"
	Then the response should be OK
	And the apiary "Olaizola" should not exist
	
Scenario: visit edit apiary
	When I edit an apiary
	Then I should see the apiary edit page