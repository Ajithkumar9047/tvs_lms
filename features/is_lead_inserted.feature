Feature:As a scheduler I want to check the Success and Missing leads,so that I can contact these people for enquiries.

      Lead is rejected when there is no possibility of contacting the user and getting the missing data. 
      Scenario: Verify lead insertion with empty mobile number
            Given Post the lead without Mobile number
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/Missing mobile number"
                  }
                  """

      Scenario:  Lead insertion verification
            Given Post the correct lead
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message":"Success"
                  }
                  """
      Scenario: Lead insertion without name verification 
            Given Post the lead without name
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'CUSTOME R_ NAME' must not be empty.~The specified condition was not met for 'CUSTOME R_ NAME'."
                  }
                  """
      Scenario:Lead insertion with name less than 3 characters verification
            Given Post the lead with name less than 3 characters
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "The specified condition was not met for 'CUSTOME R_ NAME'."
                  }
                  """
      Scenario: Lead rejection with invalid mobile number verification
            Given Post the lead with invalid Mobile number
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/Missing mobile number"
                  }
                  """
      Scenario: Lead insertion without brand code verification
            Given Post the lead without brand code
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'brand_code' must be greater than '0'."
                  }
                  """
      Scenario: Lead insertion without Enquiry date verification
            Given Post the lead without enquiry date
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'ENQUIR Y_ DATE' must not be empty."
                  }
                  """
      Scenario:Lead insertion with invalid Email address verification
            Given Post the lead with invalid email id
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'EMAIL L_ ID' must not be empty.~A valid email is required"
                  }
                  """
      Scenario: Lead insertion without Model ID verification
            Given Post the lead without model id
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'MODE L_ ID' must not be empty."
                  }
                  """
      Scenario:  Lead insertion without Part ID verification
            Given Post the lead without Part id
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'PAR T_ ID' must not be empty."
                  }
                  """
      Scenario: Lead insertion without dealer pincode verification
            Given Post the lead without dealer pincode
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'AREA' must not be empty."
                  }
                  """
      Scenario: Lead insertion without customer pincode verification
            Given Post the lead without customer pincode
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "'pincode' must not be empty."
                  }
                  """
      Scenario: Lead insertion with invalid Enqid format verification
            Given Post the lead with invalid Enqid format
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/missing Enquiry Date"
                  }
                  """
      # Scenario: Should verify the lead is inserted with mismatched part and model id
      #       Given Post the lead with mismatched part and model id
      #       When I receive a response 
      #             Then I expect the response as
      #             """
      #             {
      #             "message": "part and model id mismatched"
      #             }
      #             """
      Scenario: Lead insertion without enquiry source verification
            Given Post the lead without enquiry source
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Source not present"
                  }
                  """

      Scenario: Lead insertion with invalid Dealer ID verification
            Given Post the lead when the dealer id is invalid
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/missing Dealer Id~Invalid DealerId and BranchId Combination"
                  }
                  """

      Scenario:  Lead insertion with Dealer ID and Branch ID mismatch verification
            Given Post the lead when the Dealer Id and Branch Id mismatch
            When I receive a response 
                  Then I expect the response as
                  """
                  {
                  "message": "Invalid/missing Dealer Id~Invalid DealerId and BranchId Combination"
                  }
                  """








