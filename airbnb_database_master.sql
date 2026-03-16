/*
AIRBNB DATABASE MANAGEMENT SYSTEM 
Name of database testdb
DATABASE SETUP (MySQL Syntax)
*/
DROP DATABASE IF EXISTS testdb;
CREATE DATABASE testdb;
USE testdb;

/*
PHASE 1: INDEPENDENT TABLES
/*
1. USER TABLE
Purpose: Stores users of the database
Business logic: Anyone who signs up is a user, a Host is a specialized User, addresses link back to User
Dependencies: None (completely independent)
*/
CREATE TABLE `User` (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Surname VARCHAR(50) NOT NULL,
    DateOfBirth DATE NOT NULL, /* Used for age verification 18+ check */
    EmailAddress VARCHAR(100) UNIQUE NOT NULL, /* Login email */
    Password VARCHAR(255) NOT NULL, /* Encrypted password hash */
    PhoneNumber VARCHAR(20), /* Contact phone number */
    CreationDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    AccountStatus ENUM('ACTIVE', 'SUSPENDED', 'DELETED') NOT NULL DEFAULT 'ACTIVE',
    ProfilePhoto VARCHAR(255) /* URL path to image */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
2. STAFF TABLE
Purpose: Stores company staff information for verification processes
Business Logic: Staff can verify hosts but staff deletion shouldn't affect host records
*/
CREATE TABLE Staff (
    StaffID INT NOT NULL AUTO_INCREMENT,
    EmployeeID VARCHAR(20) NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Role VARCHAR(20) NOT NULL,
    HireDate DATE NOT NULL,
    AccessLevel INT NOT NULL,
    
    PRIMARY KEY (StaffID),
    UNIQUE (EmployeeID) /* Fixed: removed KEY keyword */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
3. LANGUAGES TABLE
Purpose: Master lookup for supported languages
*/
CREATE TABLE Languages (
    LanguageID INT AUTO_INCREMENT PRIMARY KEY,
    LanguageCode CHAR(2) UNIQUE NOT NULL,
    LanguageName VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
4. LISTINGADDRESSES TABLE
Purpose: Physical locations of listings
*/
CREATE TABLE ListingAddresses (
    ListingAddressID INT AUTO_INCREMENT PRIMARY KEY,
    Street VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    PostalCode VARCHAR(20) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Latitude DECIMAL(10,8) NOT NULL,
    Longitude DECIMAL(11,8) NOT NULL,
    Suburb VARCHAR(100),
    ExactAddressVisible BOOLEAN NOT NULL DEFAULT FALSE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
5. PROPERTYTYPE TABLE
Purpose: Categories for property types
*/
CREATE TABLE PropertyType (
    PropertyTypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50) UNIQUE NOT NULL,
    TypeDescription VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
6. EXPERIENCETYPES TABLE
Purpose: Categories for experience types
*/
CREATE TABLE ExperienceTypes (
    ExperienceTypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50) UNIQUE NOT NULL,
    TypeDescription VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
7. SERVICETYPES TABLE
Purpose: Categories for service types
*/
CREATE TABLE ServiceTypes (
    ServiceTypeID INT AUTO_INCREMENT PRIMARY KEY,
    TypeName VARCHAR(50) UNIQUE NOT NULL,
    TypeDescription VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


/*8. AMENITIES TABLE
Purpose: Master lookup for amenities/features
*/

CREATE TABLE Amenities (
    AmenityID INT AUTO_INCREMENT PRIMARY KEY,
    AmenityName VARCHAR(100) UNIQUE NOT NULL,
    AmenityCategory ENUM('BASIC', 'KITCHEN', 'OUTDOOR', 'SAFETY') NOT NULL,
    AmenityDescription VARCHAR(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*
PHASE 2: LEVEL 1 DEPENDENCIES
Tables that depend only on independent tables above
*/

/*
9. SAVEDPAYMENTDETAILS TABLE
Purpose: User payment methods (cards, etc.)
Dependencies: User table
Business Logic: Users can have multiple payment methods
*/CREATE TABLE SavedPaymentDetails (
    PaymentMethodID INT AUTO_INCREMENT NOT NULL,
    UserID INT NOT NULL,
    PaymentGatewayToken VARCHAR(255) NOT NULL,
    CardBrand VARCHAR(50) NULL, /* Card network Mastercard, Visa */
    Last4Digits CHAR(4) NOT NULL, /* Last 4 digits of card number */
    ExpiryMonth TINYINT NOT NULL,
    ExpiryYear SMALLINT NOT NULL,
    IsDefault BOOLEAN NOT NULL DEFAULT TRUE, /* Flag indicating if this is preferred payment method */
    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    IsActive BOOLEAN NOT NULL DEFAULT TRUE, /* Flag to soft-delete a card */
    
    CONSTRAINT SavedPaymentDetails_pk PRIMARY KEY (PaymentMethodID),
    CONSTRAINT SavedPaymentDetails_user_FK FOREIGN KEY (UserID) 
        REFERENCES `User`(UserID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
10. HOST TABLE
Purpose: Host specialization of User with verification info
Dependencies: User table, Staff table (verification), Host table (recursive supervisor)
Business Logic: Host IS-A User + recursive supervisor relationship
*/
CREATE TABLE Host (
    HostID INT AUTO_INCREMENT NOT NULL,
    UserID INT NOT NULL, /* Links to user table */
    VerifiedByStaffID INT NULL, /* Links to staff who approved the profile */
    SupervisorHostID INT NULL, /* Links to another host for co-hosting, recursive */
    IsCohost BOOLEAN NOT NULL DEFAULT FALSE, /* Flag: Is the host working under a supervisor */
    IsSuperHost BOOLEAN NOT NULL DEFAULT FALSE, /* Flag: Has this host met performance criteria */
    VerificationStatus ENUM('Pending', 'Verified', 'Rejected') NOT NULL DEFAULT 'Pending',
    VerificationDate DATETIME NULL, /* TimeStamp of when status changed to verified */
    
    CONSTRAINT Host_pk PRIMARY KEY (HostID),
    CONSTRAINT Host_user_FK FOREIGN KEY (UserID) 
        REFERENCES `User`(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Host_staff_FK FOREIGN KEY (VerifiedByStaffID) 
        REFERENCES Staff(StaffID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Host_supervisor_FK FOREIGN KEY (SupervisorHostID) 
        REFERENCES Host(HostID) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*
11. ADDRESSES TABLE
Purpose: User addresses (home, work, billing)
Dependencies: User table
Business Logic: One-to-many (users can have multiple addresses)
*/
CREATE TABLE Addresses (
    AddressID INT NOT NULL AUTO_INCREMENT,
    UserID INT NOT NULL,
    AddressType ENUM('Home','Billing','Work') NOT NULL DEFAULT 'Home',
    Street VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    PostalCode VARCHAR(20) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    Latitude DECIMAL(10,8) NOT NULL, /* GPS Latitude for map search */
    Longitude DECIMAL(11,8) NOT NULL, /* GPS Longitude for map search */
    Suburb VARCHAR(100) DEFAULT NULL, /* Local neighbourhood name */
    
    PRIMARY KEY (AddressID),
    CONSTRAINT Addresses_user_FK FOREIGN KEY (UserID) 
        REFERENCES `User`(UserID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*
PHASE 3: LEVEL 2 DEPENDENCIES
Tables that depend on Level 1 dependent tables
*/

/*
12. TAXDOCUMENTS TABLE
Purpose: Host tax compliance documents
Dependencies: Host table
Business Logic: Hosts need tax documentation for earnings
*/
CREATE TABLE TaxDocuments (
    DocumentID INT AUTO_INCREMENT NOT NULL,
    HostID INT NOT NULL, /* Foreign key linking to HOST table */
    DocumentType ENUM('W9', 'tax_return', 'business_license', 'bank_statement') NOT NULL,
    DocumentURL VARCHAR(255) NOT NULL, /* File path/URL where document is stored */
    OriginalFileName VARCHAR(100) NULL, /* Original name of uploaded file */
    UploadDate DATE NOT NULL,
    IsVerified BOOLEAN NOT NULL DEFAULT FALSE, /* Whether admin has verified document */
    VerificationDate DATE NULL, /* When verification was completed */
    
    CONSTRAINT TaxDocuments_pk PRIMARY KEY (DocumentID),
    CONSTRAINT TaxDocuments_host_FK FOREIGN KEY (HostID) 
        REFERENCES Host (HostID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
PHASE 3: LEVEL 2 DEPENDENCIES (CONTINUED)
Tables that depend on Level 1 dependent tables
*/

/*
13. HOST_LANGUAGES TABLE (Junction Table)
Purpose: Many-to-many relationship between hosts and languages they speak
Dependencies: Host table, Languages table
Business Logic: Hosts can speak multiple languages with proficiency levels
*/
CREATE TABLE Host_Languages (
    HostLanguageID INT AUTO_INCREMENT NOT NULL,
    HostID INT NOT NULL,
    LanguageID INT NOT NULL,
    ProficiencyLevel ENUM('Basic', 'Fluent', 'Native') NULL,
    
    CONSTRAINT Host_Languages_pk PRIMARY KEY (HostLanguageID),
    CONSTRAINT Host_Languages_host_FK FOREIGN KEY (HostID) 
        REFERENCES Host(HostID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Host_Languages_language_FK FOREIGN KEY (LanguageID) 
        REFERENCES Languages(LanguageID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Host_Languages_unique UNIQUE (HostID, LanguageID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
14. LISTING TABLE (Parent Entity)
Purpose: Core listing information for properties, experiences, and services
Dependencies: Host table, ListingAddresses table
Business Logic: Parent table for inheritance pattern - specialized by Property/Experience/Service
*/
CREATE TABLE Listing (
    ListingID INT AUTO_INCREMENT NOT NULL,
    HostID INT NOT NULL,
    ListingAddressID INT NOT NULL,
    ListingType ENUM('Property', 'Experience', 'Service') NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Description TEXT NULL,
    MaxGuests SMALLINT NOT NULL,
    PriceAmount DECIMAL(10,2) NOT NULL,
    PriceUnit ENUM('Per night', 'per_guest', 'per_service', 'per hour') NOT NULL,
    Currency CHAR(3) NOT NULL,
    RefundPolicy ENUM('Flexible', 'Moderate', 'Strict') NOT NULL,
    Status ENUM('Active', 'Inactive', 'Draft', 'Deleted') NOT NULL,
    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FeaturedImage VARCHAR(255) NULL,
    
    CONSTRAINT Listing_pk PRIMARY KEY (ListingID),
    CONSTRAINT Listing_host_FK FOREIGN KEY (HostID) 
        REFERENCES Host(HostID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Listing_address_FK FOREIGN KEY (ListingAddressID) 
        REFERENCES ListingAddresses(ListingAddressID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
PHASE 4: LEVEL 3 DEPENDENCIES
Tables that depend on Listing and other Level 2 tables
*/

/*
15. AVAILABILITY_CALENDAR TABLE
Purpose: Daily availability tracking for listings
Dependencies: Listing table
Business Logic: Controls booking availability by date
*/
CREATE TABLE Availability_Calendar (
    AvailabilityID INT AUTO_INCREMENT NOT NULL,
    ListingID INT NOT NULL,
    AvailableDate DATE NOT NULL,
    IsAvailable BOOLEAN NOT NULL DEFAULT TRUE,
    LastUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    CONSTRAINT Availability_Calendar_pk PRIMARY KEY (AvailabilityID),
    CONSTRAINT Availability_Calendar_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
16. PROPERTY TABLE (Child of Listing)
Purpose: Accommodation-specific details
Dependencies: Listing table, PropertyType table
Business Logic: Inheritance - Property IS-A Listing
*/
CREATE TABLE Property (
    PropertyID INT AUTO_INCREMENT NOT NULL,
    ListingID INT NOT NULL,
    PropertyTypeID INT NOT NULL,
    PlaceType ENUM('Entire_Place', 'Private_Room', 'SharedRoom') NOT NULL,
    Bedrooms TINYINT NOT NULL,
    Beds TINYINT NOT NULL,
    Bathrooms DECIMAL(3,1) NOT NULL,
    SquareFootage INT NULL,
    CheckInTime TIME NOT NULL,
    CheckOutTime TIME NOT NULL,
    MinimumStay SMALLINT NOT NULL DEFAULT 1,
    MaximumStay SMALLINT NULL DEFAULT 30,
    InstantBook BOOLEAN NOT NULL,
    SelfCheckIn BOOLEAN NOT NULL,
    FreeCancellation BOOLEAN NOT NULL,
    AllowPets BOOLEAN NOT NULL,
    AllowsSmoking BOOLEAN NOT NULL,
    
    CONSTRAINT Property_pk PRIMARY KEY (PropertyID),
    CONSTRAINT Property_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Property_type_FK FOREIGN KEY (PropertyTypeID) 
        REFERENCES PropertyType(PropertyTypeID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
17. EXPERIENCE TABLE (Child of Listing)
Purpose: Experience-specific details
Dependencies: Listing table, ExperienceTypes table
Business Logic: Inheritance - Experience IS-A Listing
*/
CREATE TABLE Experience (
    ExperienceID INT AUTO_INCREMENT NOT NULL,
    ListingID INT NOT NULL,
    ExperienceTypeID INT NOT NULL,
    DurationMinutes SMALLINT NOT NULL,
    MinAge TINYINT NULL,
    TimeOfDay ENUM('MORNING', 'AFTERNOON', 'EVENING', 'FLEXIBLE') NOT NULL,
    IncludedItems TEXT NULL,
    PhysicalDemand ENUM('LOW', 'MODERATE', 'HIGH') NOT NULL,
    WeatherDependent BOOLEAN NOT NULL DEFAULT FALSE,
    
    CONSTRAINT Experience_pk PRIMARY KEY (ExperienceID),
    CONSTRAINT Experience_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Experience_type_FK FOREIGN KEY (ExperienceTypeID) 
        REFERENCES ExperienceTypes(ExperienceTypeID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
18. SERVICE TABLE (Child of Listing)
Purpose: Service-specific details
Dependencies: Listing table, ServiceTypes table
Business Logic: Inheritance - Service IS-A Listing
*/
CREATE TABLE Service (
    ServiceID INT AUTO_INCREMENT NOT NULL,
    ListingID INT NOT NULL,
    ServiceTypeID INT NOT NULL,
    DurationMinutes SMALLINT NOT NULL,
    TimeOfDay ENUM('MORNING', 'AFTERNOON', 'EVENING', 'FLEXIBLE') NOT NULL,
    ClientLocation BOOLEAN NOT NULL,
    ServiceLocation BOOLEAN NOT NULL,
    RequiredEquipment TEXT NULL,
    CertificationsRequired TEXT NULL,
    
    CONSTRAINT Service_pk PRIMARY KEY (ServiceID),
    CONSTRAINT Service_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Service_type_FK FOREIGN KEY (ServiceTypeID) 
        REFERENCES ServiceTypes(ServiceTypeID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
19. LISTINGPHOTOS TABLE
Purpose: Photos for listings with categorization
Dependencies: Listing table
Business Logic: One-to-many (listings have multiple photos)
*/
CREATE TABLE ListingPhotos (
    PhotoID INT AUTO_INCREMENT NOT NULL,
    ListingID INT NOT NULL,
    PhotoURL VARCHAR(255) NOT NULL,
    PhotoDescription VARCHAR(100) NULL,
    DisplayOrder INT NOT NULL DEFAULT 1,
    IsMainPhoto BOOLEAN NOT NULL DEFAULT FALSE,
    PhotoCategory ENUM('main', 'bedroom', 'bathroom', 'kitchen', 'outdoor') NOT NULL,
    UploadDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT ListingPhotos_pk PRIMARY KEY (PhotoID),
    CONSTRAINT ListingPhotos_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
20. RESERVATIONS TABLE
Purpose: Temporary booking holds (24-hour expiry)
Dependencies: User table, Listing table
Business Logic: Precedes confirmed bookings
*/
CREATE TABLE Reservations (
    ReservationID INT AUTO_INCREMENT NOT NULL,
    UserID INT NOT NULL,
    ListingID INT NOT NULL,
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    NumberOfGuests TINYINT NOT NULL,
    TotalPrice DECIMAL(10,2) NOT NULL,
    SpecialRequests TEXT NULL,
    Status ENUM('PENDING', 'EXPIRED', 'CONVERTED_TO_BOOKING') NOT NULL,
    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ExpiredAt DATETIME NOT NULL,
    ConvertedAt DATETIME NULL,
    
    CONSTRAINT Reservations_pk PRIMARY KEY (ReservationID),
    CONSTRAINT Reservations_user_FK FOREIGN KEY (UserID) 
        REFERENCES `User`(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Reservations_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
PHASE 5: LEVEL 4 DEPENDENCIES
Tables that depend on Bookings and other Level 3 tables
*/

/*
21. BOOKINGS TABLE
Purpose: Confirmed bookings with payment
Dependencies: Reservations table, User table, Listing table
Business Logic: Core transaction entity
*/
CREATE TABLE Bookings (
    BookingID INT AUTO_INCREMENT NOT NULL,
    ReservationID INT NULL,
    UserID INT NOT NULL,
    ListingID INT NOT NULL,
    CheckInDate DATE NOT NULL,
    CheckOutDate DATE NOT NULL,
    NumberOfGuests TINYINT NOT NULL,
    TotalPrice DECIMAL(10,2) NOT NULL,
    BookingStatus ENUM('CONFIRMED', 'IN_PROGRESS', 'COMPLETED', 'CANCELLED') NOT NULL,
    CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    SpecialRequests TEXT NULL,
    
    CONSTRAINT Bookings_pk PRIMARY KEY (BookingID),
    CONSTRAINT Bookings_reservation_FK FOREIGN KEY (ReservationID) 
        REFERENCES Reservations(ReservationID) ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT Bookings_user_FK FOREIGN KEY (UserID) 
        REFERENCES `User`(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Bookings_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
22. BOOKINGPAYMENT TABLE
Purpose: Financial transactions for bookings
Dependencies: Bookings table, Staff table
Business Logic: Multiple payments per booking (guest→platform→host)
*/
CREATE TABLE BookingPayment (
    BookingPaymentID INT AUTO_INCREMENT NOT NULL,
    BookingID INT NOT NULL,
    VerifiedByStaffID INT NULL,
    PaymentType ENUM('GUEST_TO_PLATFORM', 'PLATFORM_TO_HOST') NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Currency CHAR(3) NOT NULL,
    PaymentStatus ENUM('PENDING', 'VERIFIED', 'COMPLETED', 'FAILED') NOT NULL,
    PaymentDate DATETIME NOT NULL,
    PaymentReference VARCHAR(100) NOT NULL,
    
    CONSTRAINT BookingPayment_pk PRIMARY KEY (BookingPaymentID),
    CONSTRAINT BookingPayment_booking_FK FOREIGN KEY (BookingID) 
        REFERENCES Bookings(BookingID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT BookingPayment_staff_FK FOREIGN KEY (VerifiedByStaffID) 
        REFERENCES Staff(StaffID) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
23. CANCELLATIONS TABLE
Purpose: Cancelled bookings and refunds
Dependencies: Bookings table
Business Logic: One cancellation per booking maximum
*/
CREATE TABLE Cancellations (
    CancellationID INT AUTO_INCREMENT NOT NULL,
    BookingID INT NOT NULL,
    CancelledBy ENUM('GUEST', 'HOST', 'ADMIN') NOT NULL,
    Reason TEXT NULL,
    RefundAmount DECIMAL(10,2) NOT NULL,
    RefundStatus ENUM('PENDING', 'PROCESSED', 'REJECTED') NOT NULL,
    CancelledAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT Cancellations_pk PRIMARY KEY (CancellationID),
    CONSTRAINT Cancellations_booking_FK FOREIGN KEY (BookingID) 
        REFERENCES Bookings(BookingID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Cancellations_unique UNIQUE (BookingID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
24. REVIEWS TABLE
Purpose: Bidirectional reviews (guest↔host)
Dependencies: Bookings table
Business Logic: Reviews only after completed bookings
*/
CREATE TABLE Reviews (
    ReviewID INT AUTO_INCREMENT NOT NULL,
    BookingID INT NOT NULL,
    HostRating DECIMAL(3,2) NULL,
    OverallRating TINYINT NOT NULL,
    Comment TEXT NULL,
    DateCreated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT Reviews_pk PRIMARY KEY (ReviewID),
    CONSTRAINT Reviews_booking_FK FOREIGN KEY (BookingID) 
        REFERENCES Bookings(BookingID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Reviews_host_rating_check CHECK (HostRating >= 1.0 AND HostRating <= 5.0),
    CONSTRAINT Reviews_overall_rating_check CHECK (OverallRating >= 1 AND OverallRating <= 5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
25. MESSAGES TABLE
Purpose: Communication system with threading
Dependencies: Bookings table, User table (sender), User table (recipient), Messages table (recursive)
Business Logic: Multiple FK to same table + recursive threading
*/
CREATE TABLE Messages (
    MessageID INT AUTO_INCREMENT NOT NULL,
    BookingID INT NOT NULL,
    SenderUserID INT NOT NULL,
    RecipientUserID INT NOT NULL,
    ReplyToMessageID INT NULL,
    MessageText TEXT NOT NULL,
    SentAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT Messages_pk PRIMARY KEY (MessageID),
    CONSTRAINT Messages_booking_FK FOREIGN KEY (BookingID) 
        REFERENCES Bookings(BookingID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Messages_sender_FK FOREIGN KEY (SenderUserID) 
        REFERENCES `User`(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Messages_recipient_FK FOREIGN KEY (RecipientUserID) 
        REFERENCES `User`(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Messages_reply_FK FOREIGN KEY (ReplyToMessageID) 
        REFERENCES Messages(MessageID) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
PHASE 6: TERNARY RELATIONSHIPS
Complex three-way relationship tables
*/

/*
26. PAYMENT_ACCOUNT TABLE
Purpose: Ternary relationship (Host + Listing + Bank Details)
Dependencies: Host table, Listing table
Business Logic: Different payment accounts per listing
*/
CREATE TABLE Payment_Account (
    PaymentAccountID INT AUTO_INCREMENT NOT NULL,
    HostID INT NOT NULL,
    ListingID INT NOT NULL,
    AccountType ENUM('Business', 'Personal') NOT NULL,
    AccountNumber VARCHAR(50) NOT NULL,
    IsPrimary BOOLEAN NOT NULL,
    IsActive BOOLEAN NOT NULL,
    VerificationStatus ENUM('PENDING', 'VERIFIED', 'REJECTED', 'FAILED') NOT NULL,
    CurrencyCode CHAR(3) NOT NULL,
    
    CONSTRAINT Payment_Account_pk PRIMARY KEY (PaymentAccountID),
    CONSTRAINT Payment_Account_host_FK FOREIGN KEY (HostID) 
        REFERENCES Host(HostID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Payment_Account_listing_FK FOREIGN KEY (ListingID) 
        REFERENCES Listing(ListingID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*
27. SEASONAL_AVAILABILITY TABLE
Purpose: Ternary relationship (Property + Amenity + Season)
Dependencies: Property table, Amenities table
Business Logic: Seasonal amenity availability (e.g., pool only in summer)
*/
CREATE TABLE Seasonal_Availability (
    SeasonalAvailabilityID INT AUTO_INCREMENT NOT NULL,
    PropertyID INT NOT NULL,
    AmenityID INT NOT NULL,
    Season ENUM('Summer', 'Winter', 'Year_Round') NOT NULL,
    AvailableFromDate DATE NULL,
    AvailableToDate DATE NULL,
    IsCurrentlyAvailable BOOLEAN NOT NULL,
    LastUpdated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    CONSTRAINT Seasonal_Availability_pk PRIMARY KEY (SeasonalAvailabilityID),
    CONSTRAINT Seasonal_Availability_property_FK FOREIGN KEY (PropertyID) 
        REFERENCES Property(PropertyID) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT Seasonal_Availability_amenity_FK FOREIGN KEY (AmenityID) 
        REFERENCES Amenities(AmenityID) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

