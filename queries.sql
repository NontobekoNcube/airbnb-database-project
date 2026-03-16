*/

USE testdb;

/*
================================================================
SLIDE 1: USER TABLE
Business Question: What is our user demographic breakdown and account health status?
================================================================
*/
SELECT AccountStatus, COUNT(*) as UserCount, 
       AVG(YEAR(CURDATE()) - YEAR(DateOfBirth)) as AvgAge,
       MIN(CreationDate) as FirstUser,
       MAX(CreationDate) as LatestUser
FROM User 
GROUP BY AccountStatus;

/*
================================================================
SLIDE 2: STAFF TABLE
Business Question: How is our support team structured and what are the experience levels across departments?
================================================================
*/
SELECT Department, COUNT(*) as StaffCount, 
       AVG(AccessLevel) as AvgAccessLevel,
       MAX(HireDate) as NewestHire,
       MIN(HireDate) as SeniorEmployee
FROM Staff
GROUP BY Department
ORDER BY StaffCount DESC;

/*
================================================================
SLIDE 3: LANGUAGES TABLE
Business Question: Which languages do our hosts speak and how does this support international guests?
================================================================
*/
SELECT LanguageName, LanguageCode, 
       COUNT(hl.HostID) as HostSpeakers
FROM Languages l
LEFT JOIN Host_Languages hl ON l.LanguageID = hl.LanguageID
GROUP BY l.LanguageID  
ORDER BY HostSpeakers DESC;

/*
================================================================
SLIDE 4: LISTINGADDRESSES TABLE
Business Question: What is our geographic coverage and where are listings concentrated?
================================================================
*/
SELECT Country, State, COUNT(*) as ListingCount,
       AVG(Latitude) as AvgLat, AVG(Longitude) as AvgLong
FROM ListingAddresses
GROUP BY Country, State
ORDER BY ListingCount DESC;

/*
================================================================
SLIDE 5: PROPERTYTYPE TABLE
Business Question: Which property types are most popular on our platform?
================================================================
*/
SELECT pt.TypeName, pt.TypeDescription, 
       COUNT(p.PropertyID) as PropertyCount
FROM PropertyType pt
LEFT JOIN Property p ON pt.PropertyTypeID = p.PropertyTypeID
GROUP BY pt.PropertyTypeID
ORDER BY PropertyCount DESC;

/*
================================================================
SLIDE 6: EXPERIENCETYPES TABLE
Business Question: What types of experiences do we offer and which categories are most developed?
================================================================
*/
SELECT et.TypeName, et.TypeDescription,
       COUNT(e.ExperienceID) as ExperienceCount
FROM ExperienceTypes et
LEFT JOIN Experience e ON et.ExperienceTypeID = e.ExperienceTypeID  
GROUP BY et.ExperienceTypeID
ORDER BY ExperienceCount DESC;

/*
================================================================
SLIDE 7: SERVICETYPES TABLE
Business Question: What service categories are available and where should we focus growth?
================================================================
*/
SELECT st.TypeName, st.TypeDescription,
       COUNT(s.ServiceID) as ServiceCount
FROM ServiceTypes st
LEFT JOIN Service s ON st.ServiceTypeID = s.ServiceTypeID
GROUP BY st.ServiceTypeID
ORDER BY ServiceCount DESC;

/*
================================================================
SLIDE 8: AMENITIES TABLE (CORRECTED - Removed LIMIT from GROUP_CONCAT)
Business Question: How comprehensive is our amenity offering across different categories?
================================================================
*/
SELECT AmenityCategory, COUNT(*) as AmenityCount,
       GROUP_CONCAT(AmenityName ORDER BY AmenityName) as SampleAmenities
FROM Amenities  
GROUP BY AmenityCategory
ORDER BY AmenityCount DESC;

/*
================================================================
SLIDE 9: SAVEDPAYMENTDETAILS TABLE
Business Question: What payment methods do users prefer and how healthy is our payment portfolio?
================================================================
*/
SELECT CardBrand, COUNT(*) as UserCount,
       AVG(ExpiryYear - YEAR(CURDATE())) as AvgYearsToExpiry,
       SUM(CASE WHEN IsDefault = 1 THEN 1 ELSE 0 END) as PrimaryCards
FROM SavedPaymentDetails  
WHERE IsActive = 1
GROUP BY CardBrand
ORDER BY UserCount DESC;

/*
================================================================
SLIDE 10: HOST TABLE
Business Question: What is our host verification success rate and quality metrics?
================================================================
*/
SELECT VerificationStatus, COUNT(*) as HostCount,
       SUM(CASE WHEN IsSuperHost = 1 THEN 1 ELSE 0 END) as SuperHosts,
       SUM(CASE WHEN IsCohost = 1 THEN 1 ELSE 0 END) as Cohosts
FROM Host 
GROUP BY VerificationStatus;

/*
================================================================
SLIDE 11: ADDRESSES TABLE
Business Question: Where are our users located and what address types do they provide?
================================================================
*/
SELECT AddressType, Country, COUNT(*) as AddressCount
FROM Addresses
GROUP BY AddressType, Country
ORDER BY AddressCount DESC
LIMIT 10;

/*
================================================================
SLIDE 12: TAXDOCUMENTS TABLE
Business Question: How compliant are our hosts with tax documentation and how efficient is our processing?
================================================================
*/
SELECT DocumentType, 
       COUNT(*) as DocumentCount,
       SUM(CASE WHEN IsVerified = 1 THEN 1 ELSE 0 END) as VerifiedDocs,
       AVG(DATEDIFF(VerificationDate, UploadDate)) as AvgProcessingDays
FROM TaxDocuments
GROUP BY DocumentType;

/*
================================================================
SLIDE 13: HOST_LANGUAGES TABLE
Business Question: What language skills do our hosts have and at what proficiency levels?
================================================================
*/
SELECT l.LanguageName, hl.ProficiencyLevel, COUNT(*) as HostCount
FROM Host_Languages hl
JOIN Languages l ON hl.LanguageID = l.LanguageID
GROUP BY l.LanguageID, hl.ProficiencyLevel
ORDER BY HostCount DESC;

/*
================================================================
SLIDE 14: LISTING TABLE
Business Question: What is our listing portfolio composition and pricing strategy by type?
================================================================
*/
SELECT ListingType, Status, COUNT(*) as ListingCount,
       AVG(PriceAmount) as AvgPrice, AVG(MaxGuests) as AvgCapacity
FROM Listing 
GROUP BY ListingType, Status
ORDER BY ListingCount DESC;

/*
================================================================
SLIDE 15: AVAILABILITY_CALENDAR TABLE (CORRECTED - Shows actual data range)
Business Question: How much booking capacity do we have available in the upcoming period?
================================================================
*/
SELECT DATE(AvailableDate) as BookingDate, 
       COUNT(*) as AvailableListings,
       SUM(CASE WHEN IsAvailable = 1 THEN 1 ELSE 0 END) as OpenSlots
FROM Availability_Calendar
GROUP BY DATE(AvailableDate)
ORDER BY BookingDate
LIMIT 10;

/*
================================================================
SLIDE 16: PROPERTY TABLE
Business Question: What are the accommodation characteristics and capacity distribution of our properties?
================================================================
*/
SELECT PlaceType, AVG(Bedrooms) as AvgBedrooms, AVG(Beds) as AvgBeds,
       AVG(Bathrooms) as AvgBathrooms, COUNT(*) as PropertyCount
FROM Property
GROUP BY PlaceType
ORDER BY PropertyCount DESC;

/*
================================================================
SLIDE 17: EXPERIENCE TABLE
Business Question: When are experiences typically offered and what difficulty levels do we provide?
================================================================
*/
SELECT TimeOfDay, PhysicalDemand, COUNT(*) as ExperienceCount,
       AVG(DurationMinutes) as AvgDuration, AVG(MinAge) as AvgMinAge
FROM Experience
GROUP BY TimeOfDay, PhysicalDemand;

/*
================================================================
SLIDE 18: SERVICE TABLE
Business Question: What are the delivery patterns and location flexibility of our services?
================================================================
*/
SELECT TimeOfDay, COUNT(*) as ServiceCount,
       AVG(DurationMinutes) as AvgDuration,
       SUM(CASE WHEN ClientLocation = 1 THEN 1 ELSE 0 END) as ClientLocation,
       SUM(CASE WHEN ServiceLocation = 1 THEN 1 ELSE 0 END) as ServiceLocation
FROM Service
GROUP BY TimeOfDay;

/*
================================================================
SLIDE 19: LISTINGPHOTOS TABLE
Business Question: How complete is our visual marketing across different photo categories?
================================================================
*/
SELECT PhotoCategory, COUNT(*) as PhotoCount,
       SUM(CASE WHEN IsMainPhoto = 1 THEN 1 ELSE 0 END) as MainPhotos
FROM ListingPhotos
GROUP BY PhotoCategory
ORDER BY PhotoCount DESC;

/*
================================================================
SLIDE 20: RESERVATIONS TABLE
Business Question: How effective is our reservation system and what are typical booking patterns?
================================================================
*/
SELECT Status, COUNT(*) as ReservationCount,
       AVG(DATEDIFF(CheckOutDate, CheckInDate)) as AvgStayLength,
       AVG(TotalPrice) as AvgPrice
FROM Reservations  
GROUP BY Status;

/*
================================================================
SLIDE 21: BOOKINGS TABLE
Business Question: What are our monthly booking trends and revenue patterns by status?
================================================================
*/
SELECT MONTH(CheckInDate) as Month, BookingStatus, 
       COUNT(*) as BookingCount, SUM(TotalPrice) as MonthlyRevenue,
       AVG(NumberOfGuests) as AvgGuests
FROM Bookings 
WHERE CheckInDate >= '2026-01-01'
GROUP BY MONTH(CheckInDate), BookingStatus
ORDER BY Month, BookingCount DESC;

/*
================================================================
SLIDE 22: BOOKINGPAYMENT TABLE
Business Question: How is our payment processing performing and where is revenue flowing?
================================================================
*/
SELECT PaymentType, PaymentStatus, Currency,
       COUNT(*) as TransactionCount, SUM(Amount) as TotalAmount
FROM BookingPayment
GROUP BY PaymentType, PaymentStatus, Currency
ORDER BY TotalAmount DESC;

/*
================================================================
SLIDE 23: CANCELLATIONS TABLE
Business Question: Who is cancelling bookings and what is the financial impact of refunds?
================================================================
*/
SELECT CancelledBy, RefundStatus, COUNT(*) as CancellationCount,
       AVG(RefundAmount) as AvgRefundAmount, SUM(RefundAmount) as TotalRefunds
FROM Cancellations
GROUP BY CancelledBy, RefundStatus
ORDER BY CancellationCount DESC;

/*
================================================================
SLIDE 24: REVIEWS TABLE (CORRECTED - Removed problematic GROUP_CONCAT with LIMIT)
Business Question: What is our overall guest satisfaction and how are hosts performing?
================================================================
*/
SELECT OverallRating, COUNT(*) as ReviewCount,
       AVG(HostRating) as AvgHostRating
FROM Reviews
GROUP BY OverallRating
ORDER BY OverallRating DESC;

/*
================================================================
SLIDE 25: MESSAGES TABLE (Recursive Relationship)
Business Question: Which bookings generate the most communication and how are conversations structured?
================================================================
*/
SELECT b.BookingID, COUNT(m.MessageID) as MessageCount,
       COUNT(CASE WHEN m.ReplyToMessageID IS NULL THEN 1 END) as NewThreads,
       COUNT(CASE WHEN m.ReplyToMessageID IS NOT NULL THEN 1 END) as Replies,
       MAX(m.SentAt) as LastMessage
FROM Messages m
JOIN Bookings b ON m.BookingID = b.BookingID  
GROUP BY b.BookingID
ORDER BY MessageCount DESC
LIMIT 10;

/*
================================================================
SLIDE 26: PAYMENT_ACCOUNT TABLE (Ternary Relationship)
Business Question: How do hosts manage their banking setup and what is their verification success rate?
================================================================
*/
SELECT AccountType, VerificationStatus, COUNT(*) as AccountCount,
       SUM(CASE WHEN IsPrimary = 1 THEN 1 ELSE 0 END) as PrimaryAccounts,
       SUM(CASE WHEN IsActive = 1 THEN 1 ELSE 0 END) as ActiveAccounts
FROM Payment_Account
GROUP BY AccountType, VerificationStatus
ORDER BY AccountCount DESC;

/*
================================================================
SLIDE 27: SEASONAL_AVAILABILITY TABLE (Ternary Relationship)
Business Question: How do seasonal changes affect amenity availability across our properties?
================================================================
*/
SELECT Season, COUNT(*) as AvailabilityRecords,
       SUM(CASE WHEN IsCurrentlyAvailable = 1 THEN 1 ELSE 0 END) as CurrentlyActive,
       COUNT(DISTINCT PropertyID) as PropertiesAffected
FROM Seasonal_Availability
GROUP BY Season;

/*