Feature: AskOmDch User Registration Feature with Scenario Outline
  @smoke
  Scenario Outline: AskOmDch Register New User with Scenario Outline
    Given user is on the homepage
    When user clicks on the account link
    Then user should be navigate to account page
    And  user should be able to see register form header "Register"
    And  user enters "<username>" for username
    And  user enters "<email>" for email address
    And  user enters "<password>" for password
    Then user should be able to see register button and click it
    And user should be able to register successfully "Hello " "<username>" " (not " "<username>" "? Log out)"

    Examples:
      |   username      |      email                |   password    |
      |	TChrOlivares3	|	TChrOlivares3@gmail.com	|	ChrOli21	|
#      |	TAleEstrella2	|	TAleEstrella2@gmail.com	|	AleEst21	|
#      |	TNesDuong2	    |	TNesDuong2@gmail.com    |	NesDuo21	|
#      |	TDayDelong2	    |	TDayDelong2@gmail.com   |	DayDel21	|
#      |	TJosDonohue2    |	TJosDonohue2@gmail.com	|	JosDon21	|
#      |	TJamKeeton2	    |	TJamKeeton2@gmail.com   |	JamKee21	|
#      |	TEliWebber2	    |	TEliWebber2@gmail.com   |	EliWeb21	|
#      |	TDorOlivarez2	|	TDorOlivarez2@gmail.com	|	DorOli21	|
#      |	TKyrEstep2	    |	TKyrEstep2@gmail.com    |	KyrEst21	|
#      |	TStaTrimble2    |	TStaTrimble2@gmail.com	|	StaTri21	|
#      |	TDasShea2	    |	TDasShea2@gmail.com	    |	DasShe21	|


 @smoke
  Scenario Outline: AskOmDch Register New User with Scenario Outline and Add Billing and Shipping Address
    Given user is on the homepage
    When user clicks on the account link
    Then user should be navigate to account page
    And  user should be able to see register form header "Register"
    And  user enters "<username>" for username
    And  user enters "<email>" for email address
    And  user enters "<password>" for password
    Then user should be able to see register button and click it
    And user should be able to register successfully "Hello " "<username>" " (not " "<username>" "? Log out)"
    Then user should bee able to click addresses link
    And verify "Billing address" and "Shipping address" header is Displayed
    Then user clicks on add link billing address
    And user enters "<firstname>" for firstname
    And user enters "<lastname>" for lastname
    And user enters "<company_name>" for company name
    And user selects "<country>" for country
    And user enters "<street_address1>" for street address first
    And user enters "<street_address2>" for street address second
    And user enters "<city>" for city
    And user selects "<state>" for state
    And user enters "<zip_code>" for zipcode
    And user enters "<phone>" for phone
    And user clicks on save address button
    And verify "Address changed successfully." message
    Then verify completed billing information and should see the "<firstname>"  "<lastname>"  "<company_name>"  "<street_address1>"  "<street_address2>"  "<city>"  "<state>"  "<zip_code>"
    And user clicks on add link shipping address
    Then user enters "<shipping_firstname>" for shipping first name
    And user enters "<shipping_lastname>" for shipping last name
    And user enters "<shipping_company_name>" for shipping company name
    And user selects "<shipping_country>" for shipping country
    And user enters "<shipping_street_address1>" for shipping street address first
    And user enters "<shipping_street_address2>" for shipping street address second
    And user enters "<shipping_city>" for shipping city
    And user selects "<shipping_state>" for shipping state
    And user enters "<shipping_zip_code>" for shipping zip code
    Then user should be able to click on save address button
    And verify completed shipping address and should see the "<shipping_firstname>"  "<shipping_lastname>"  "<shipping_company_name>"  "<shipping_street_address1>"  "<shipping_street_address2>"  "<shipping_city>"  "<shipping_state>"  "<shipping_zip_code>"

   Examples:
     |	 username 	    |	 email                    |	 password 	|	 firstname 	|	 lastname 	|	 company_name 	|	 country            	|	 street_address1	|	 street_address2 	|	 city    	|	 state 	|	 zip_code 	|	 phone    	|	 shipping_firstname 	|	 shipping_lastname 	|	 shipping_company_name 	|	 shipping_country     	|	 shipping_street_address1 	|	 shipping_street_address2 	|	 shipping_city 	|	 shipping_state 	|	 shipping_zip_code 	|
     |	TLonSandlin3	|	TLonSandlin3@gmail.com    |	LonSan21	|	Long	    |	Sandlin	    |	LonSandlin COR	|	 United States (US) 	|	Manor Avenue	    |	 apt#321         	|	 Chicago 	|	 IL    	|	60008	    |	12345678	|	Willie	                |	Morin	            |	WMorin COR	            |	 United States (US) 	|	Queen Street	            |	 apt#43               	    |	 Apex      	    |	CA	                |	27516	            |
#     |	TSeaHutto2	    |	TSeaHutto2@gmail.com	  |	SeaHut21	|	Seamus	    |	Hutto	    |	SeaHutto COR	|	 United States (US) 	|	Mill Lane	        |	 apt#123         	|	Vlurphis	|	 NC    	|	50008	    |	99999999	|	Keara	                |	Kasper	            |	KKasper COR	            |	 United States (US) 	|	Theater Way	                |	 apt#43               	    |	Ivlepool	    |	GA	                |	27517	            |
#     |	TRhoFoote2	    |	TRhoFoote2@gmail.com	  |	RhoFoo21	|	Rhonda	    |	Foote	    |	RhoFoote COR	|	 United States (US) 	|	Gilded Street	    |	 apt#777         	|	Eprehbus	|	 IN    	|	55555	    |	44444444	|	Ann	                    |	Beasley	            |	ABeasley COR	        |	 United States (US) 	|	Sun Street	                |	 apt#43               	    |	Oslikmery	    |	IA	                |	27515	            |
#     |	TJaiWing2	    |	TJaiWing2@gmail.com	      |	JaiWin21	|	Jairo	    |	Wing	    |	JaiWing COR	    |	 United States (US) 	|	Vine Avenue	        |	 apt#321         	|	Zrauktin	|	 IL    	|	60008	    |	12345678	|	Oliver	                |	Hargis	            |	OHargis COR	            |	 United States (US) 	|	Jewel Avenue	            |	 apt#43               	    |	Zecton	        |	OH	                |	27512	            |
#     |	TStuFleming2	|	TStuFleming2@gmail.com    |	StuFle21	|	Stuart	    |	Fleming	    |	StuFleming COR	|	 United States (US) 	|	Honor Lane	        |	 apt#123         	|	Xushire   	|	 NC    	|	50008	    |	99999999	|	Sky	                    |	Winslow	            |	SWinslow COR	        |	 United States (US) 	|	Corporation Street	        |	 apt#43               	    |	Desea	        |	TN	                |	27519	            |
#     |	TEmiEmerson2	|	TEmiEmerson2@gmail.com    |	EmiEme21	|	Emiliano  	|	Emerson	    |	EmiEmerson COR	|	 United States (US) 	|	Lilypad Street	    |	 apt#777         	|	Fendale	    |	 IN    	|	55555	    |	44444444	|	Mikel	                |	Curley	            |	MCurley COR	            |	 United States (US) 	|	Wetland Lane	            |	 apt#43               	    |	Clason	        |	IL	                |	27987	            |
#     |	TStoHardesty2   |	TStoHardesty2@gmail.com   |	StoHar21	|	Stone	    |	Hardesty	|	StoHardesty COR	|	 United States (US) 	|	Baker Route	        |	 apt#321         	|	Fesa	    |	 IL    	|	60008	    |	12345678	|	Kerrigan	            |	Schrock	            |	KSchrock COR	        |	 United States (US) 	|	Ebon Street	                |	 apt#43               	    |	Roit	        |	LA	                |	27054	            |
#     |	TMegAmato2	    |	TMegAmato2@gmail.com	  |	MegAma21	|	Megan	    |	Amato	    |	MegAmato COR	|	 United States (US) 	|	Petal Boulevard	    |	 apt#123         	|	Ozlose	    |	 NC    	|	50008	    |	99999999	|	Ben	                    |	Moon	            |	BMoon COR	            |	 United States (US) 	|	Globe Lane	                |	 apt#43               	    |	Tine	        |	VA	                |	20987	            |
#     |	TSteSampson2	|	TSteSampson2@gmail.com    |	SteSam21	|	Stephen	    |	Sampson	    |	SteSampson COR	|	 United States (US) 	|	Fountain Passage	|	 apt#321         	|	Esrora	    |	 IL    	|	60008	    |	12345678	|	Keeley	                |	Pullen	            |	KPullen COR	            |	 United States (US) 	|	Bellow Route	            |	 apt#49               	    |	Astrand	        |	WI	                |	27598	            |
#     |	TEnrHolbrook2   |	TEnrHolbrook2@gmail.com   |	EnrHol21	|	Enrique	    |	Holbrook	|	EnrHolbrook COR	|	 United States (US) 	|	Lowland Way	        |	 apt#777         	|	Ilatin	    |	 IN    	|	55555	    |	44444444	|	Isabela	                |	Gerber	            |	IGerber COR	            |	 United States (US) 	|	Aviation Route	            |	 apt#40               	    |	Adenavine	    |	PA	                |	27505	            |
#     |	TEllNeill2	    |	TEllNeill2@gmail.com	  |	EllNei21	|	Ellie	    |	Neill	    |	EllNeill COR	|	 United States (US) 	|	Fortune Lane	    |	 apt#123         	|	Oracester	|	 NC    	|	50008	    |	99999999	|	Zander	                |	Isaacs	            |	ZIsaacs COR	            |	 United States (US) 	|	Green Row	                |	 apt#44               	    |	Oniopolis	    |	 NC  	            |	27032	            |


