Feature: apiary - request for a new apiary

Scenario: request for a new apiary
	When I post to "/apiaries" with:
		"""
		{
			"apiary":{
				"name":"Olaizola",
				"adress":"Lujan",
				"coordinates":"12.333W, 12.333S"
			}
		}
		"""
	Then the response should be OK
	And the last apiary should match:
		| name     | adress | coordinates      |
		| Olaizola | Lujan  | 12.333W, 12.333S |