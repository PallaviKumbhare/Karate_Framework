@Pallavi
Feature: Call Function

Scenario: calling another feature file
* def userInfo = call read('../Test/userDetails.feature@Test')
And print 'UserInformation--',userInfo.response
#/SampleKarate/src/test/java/Test/userDetails.feature

And print 'userName==',userInfo.response.userName
And print 'Password==',userInfo.response.password

