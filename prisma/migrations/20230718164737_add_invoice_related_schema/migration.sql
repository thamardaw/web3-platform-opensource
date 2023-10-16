-- CreateTable
CREATE TABLE "Example" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Example_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Account" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "provider" TEXT NOT NULL,
    "providerAccountId" TEXT NOT NULL,
    "refresh_token" TEXT,
    "access_token" TEXT,
    "expires_at" INTEGER,
    "token_type" TEXT,
    "scope" TEXT,
    "id_token" TEXT,
    "session_state" TEXT,

    CONSTRAINT "Account_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Session" (
    "id" TEXT NOT NULL,
    "sessionToken" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "expires" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Session_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" TEXT NOT NULL,
    "firstName" TEXT,
    "lastName" TEXT,
    "password" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "businessName" TEXT NOT NULL,
    "userType" TEXT NOT NULL,
    "passwordResetRequest" TEXT,
    "updateInfoAccess" TEXT,
    "mBossUser" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VerificationToken" (
    "identifier" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "expires" TIMESTAMP(3) NOT NULL
);

-- CreateTable
CREATE TABLE "Seller" (
    "id" TEXT NOT NULL,
    "fullName" TEXT NOT NULL,
    "fatherName" TEXT NOT NULL,
    "nrcPassport" TEXT NOT NULL,
    "maritalStatus" TEXT NOT NULL,
    "birthDate" TEXT NOT NULL,
    "birthPlace" TEXT NOT NULL,
    "position" TEXT NOT NULL,
    "nationality" TEXT NOT NULL,
    "landLine" TEXT,
    "mobile" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "Seller_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SellerAuthorizedPersonInformation" (
    "Id" TEXT NOT NULL,
    "fullName" TEXT,
    "fatherName" TEXT,
    "mobile" TEXT,
    "email" TEXT,
    "sellerId" TEXT NOT NULL,

    CONSTRAINT "SellerAuthorizedPersonInformation_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "SellerPersonalAddress" (
    "Id" TEXT NOT NULL,
    "addressLine1" TEXT NOT NULL,
    "addressLine2" TEXT,
    "country" TEXT NOT NULL,
    "township" TEXT NOT NULL,
    "stateDivision" TEXT NOT NULL,
    "zipCode" TEXT,
    "sellerId" TEXT NOT NULL,

    CONSTRAINT "SellerPersonalAddress_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "SellerCompany" (
    "id" TEXT NOT NULL,
    "businessName" TEXT NOT NULL,
    "businessEmail" TEXT NOT NULL,
    "registrationNumber" TEXT NOT NULL,
    "registrationDate" TEXT NOT NULL,
    "entityType" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "noOfEmployees" TEXT NOT NULL,
    "revenueModel" TEXT,
    "clients" TEXT,
    "ownership" TEXT,
    "productService" TEXT NOT NULL,
    "netWorthPerAnnum" TEXT NOT NULL,
    "landLine" TEXT,
    "mobile" TEXT NOT NULL,
    "addressLine1" TEXT NOT NULL,
    "addressLine2" TEXT,
    "country" TEXT NOT NULL,
    "township" TEXT NOT NULL,
    "stateDivision" TEXT NOT NULL,
    "zipCode" TEXT,
    "effectiveDate" TEXT,
    "sellerId" TEXT NOT NULL,

    CONSTRAINT "SellerCompany_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Reference" (
    "id" TEXT NOT NULL,
    "fullName" TEXT NOT NULL,
    "fatherName" TEXT NOT NULL,
    "nrcNumber" TEXT NOT NULL,
    "address" TEXT NOT NULL,
    "mobileNumber" TEXT NOT NULL,
    "position" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "sellerCompanyId" TEXT NOT NULL,

    CONSTRAINT "Reference_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SellerKYC" (
    "Id" TEXT NOT NULL,
    "nrc" TEXT NOT NULL,
    "utilityBill" TEXT NOT NULL,
    "memorandumOfAssociation" TEXT NOT NULL,
    "licenseOfImportExport" TEXT NOT NULL,
    "companyRegistration" TEXT NOT NULL,
    "companyBankBookStatement" TEXT NOT NULL,
    "form6Form26" TEXT NOT NULL,
    "relevantBusinessLicense" TEXT NOT NULL,
    "articleOfAssociation" TEXT NOT NULL,
    "bodResolution" TEXT NOT NULL,
    "sellerId" TEXT NOT NULL,

    CONSTRAINT "SellerKYC_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "Buyer" (
    "Id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "dateOfBirth" TEXT NOT NULL,
    "fatherName" TEXT NOT NULL,
    "nationality" TEXT NOT NULL,
    "nrcPassport" TEXT NOT NULL,
    "qualification" TEXT NOT NULL,
    "occupation" TEXT NOT NULL,
    "maritalStatus" TEXT NOT NULL,
    "nameOfSpouse" TEXT NOT NULL,
    "spouseNrcPassport" TEXT NOT NULL,
    "permanementAddress" TEXT NOT NULL,
    "currentAddress" TEXT NOT NULL,
    "postalAddress" TEXT NOT NULL,
    "contactNo" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "annualIncome" TEXT NOT NULL,
    "sourceOfFundNetworth" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "Buyer_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "EmploymentDetails" (
    "Id" TEXT NOT NULL,
    "businessNature" TEXT NOT NULL,
    "position" TEXT NOT NULL,
    "yearOfService" TEXT NOT NULL,
    "employerName" TEXT NOT NULL,
    "employerAddress" TEXT NOT NULL,
    "officeContactNo" TEXT NOT NULL,
    "buyerId" TEXT NOT NULL,

    CONSTRAINT "EmploymentDetails_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "SelfEmploymentDetails" (
    "Id" TEXT NOT NULL,
    "natureOfBusiness" TEXT NOT NULL,
    "revenueModel" TEXT NOT NULL,
    "buyerId" TEXT NOT NULL,

    CONSTRAINT "SelfEmploymentDetails_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "BankReference" (
    "Id" TEXT NOT NULL,
    "bankAccountNo" TEXT NOT NULL,
    "bankName" TEXT NOT NULL,
    "bankBranch" TEXT NOT NULL,
    "typeOfAccount" TEXT NOT NULL,
    "buyerId" TEXT NOT NULL,

    CONSTRAINT "BankReference_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "ContactPersonInfo" (
    "Id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "nrcPassport" TEXT NOT NULL,
    "nationality" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "buyerId" TEXT NOT NULL,

    CONSTRAINT "ContactPersonInfo_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "AuthorizePersonInfo" (
    "Id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "nrcPassport" TEXT NOT NULL,
    "buyerId" TEXT NOT NULL,

    CONSTRAINT "AuthorizePersonInfo_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "MbossOps" (
    "Id" TEXT NOT NULL,
    "employmentId" TEXT NOT NULL,
    "department" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "MbossOps_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "PasswordReset" (
    "Id" TEXT NOT NULL,
    "phone" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "tokenExpireDate" TEXT,

    CONSTRAINT "PasswordReset_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "Invoice" (
    "Id" TEXT NOT NULL,
    "invoiceId" TEXT NOT NULL,
    "originalInvoice" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "issueDate" TEXT NOT NULL,
    "paymentTerm" TEXT NOT NULL,
    "expectedDayDelays" TEXT NOT NULL,
    "saleDate" TEXT NOT NULL,
    "originalOwnerId" TEXT NOT NULL,
    "currentOwnerId" TEXT,

    CONSTRAINT "Invoice_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "PayerInfo" (
    "Id" TEXT NOT NULL,
    "payer" TEXT NOT NULL,
    "payerRefLink" TEXT NOT NULL,
    "payerLogo" TEXT NOT NULL,
    "payerDescription" TEXT NOT NULL,
    "invoiceFaceValue" TEXT NOT NULL,
    "invoiceCurrency" TEXT NOT NULL,
    "invoiceId" TEXT NOT NULL,

    CONSTRAINT "PayerInfo_pkey" PRIMARY KEY ("Id")
);

-- CreateTable
CREATE TABLE "TradeInfo" (
    "Id" TEXT NOT NULL,
    "discountRate" TEXT NOT NULL,
    "factoringFeesRate" TEXT NOT NULL,
    "collectionFeesRate" TEXT NOT NULL,
    "funderIncomeTaxRate" TEXT NOT NULL,

    CONSTRAINT "TradeInfo_pkey" PRIMARY KEY ("Id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Account_provider_providerAccountId_key" ON "Account"("provider", "providerAccountId");

-- CreateIndex
CREATE UNIQUE INDEX "Session_sessionToken_key" ON "Session"("sessionToken");

-- CreateIndex
CREATE UNIQUE INDEX "User_phone_key" ON "User"("phone");

-- CreateIndex
CREATE UNIQUE INDEX "VerificationToken_token_key" ON "VerificationToken"("token");

-- CreateIndex
CREATE UNIQUE INDEX "VerificationToken_identifier_token_key" ON "VerificationToken"("identifier", "token");

-- CreateIndex
CREATE UNIQUE INDEX "Seller_userId_key" ON "Seller"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "SellerAuthorizedPersonInformation_sellerId_key" ON "SellerAuthorizedPersonInformation"("sellerId");

-- CreateIndex
CREATE UNIQUE INDEX "SellerPersonalAddress_sellerId_key" ON "SellerPersonalAddress"("sellerId");

-- CreateIndex
CREATE UNIQUE INDEX "SellerCompany_sellerId_key" ON "SellerCompany"("sellerId");

-- CreateIndex
CREATE UNIQUE INDEX "SellerKYC_sellerId_key" ON "SellerKYC"("sellerId");

-- CreateIndex
CREATE UNIQUE INDEX "Buyer_userId_key" ON "Buyer"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "EmploymentDetails_buyerId_key" ON "EmploymentDetails"("buyerId");

-- CreateIndex
CREATE UNIQUE INDEX "SelfEmploymentDetails_buyerId_key" ON "SelfEmploymentDetails"("buyerId");

-- CreateIndex
CREATE UNIQUE INDEX "BankReference_buyerId_key" ON "BankReference"("buyerId");

-- CreateIndex
CREATE UNIQUE INDEX "ContactPersonInfo_buyerId_key" ON "ContactPersonInfo"("buyerId");

-- CreateIndex
CREATE UNIQUE INDEX "AuthorizePersonInfo_buyerId_key" ON "AuthorizePersonInfo"("buyerId");

-- CreateIndex
CREATE UNIQUE INDEX "MbossOps_userId_key" ON "MbossOps"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "PayerInfo_invoiceId_key" ON "PayerInfo"("invoiceId");

-- AddForeignKey
ALTER TABLE "Account" ADD CONSTRAINT "Account_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Session" ADD CONSTRAINT "Session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Seller" ADD CONSTRAINT "Seller_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SellerAuthorizedPersonInformation" ADD CONSTRAINT "SellerAuthorizedPersonInformation_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "Seller"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SellerPersonalAddress" ADD CONSTRAINT "SellerPersonalAddress_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "Seller"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SellerCompany" ADD CONSTRAINT "SellerCompany_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "Seller"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reference" ADD CONSTRAINT "Reference_sellerCompanyId_fkey" FOREIGN KEY ("sellerCompanyId") REFERENCES "SellerCompany"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SellerKYC" ADD CONSTRAINT "SellerKYC_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "Seller"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Buyer" ADD CONSTRAINT "Buyer_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EmploymentDetails" ADD CONSTRAINT "EmploymentDetails_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "Buyer"("Id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SelfEmploymentDetails" ADD CONSTRAINT "SelfEmploymentDetails_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "Buyer"("Id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BankReference" ADD CONSTRAINT "BankReference_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "Buyer"("Id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ContactPersonInfo" ADD CONSTRAINT "ContactPersonInfo_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "Buyer"("Id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "AuthorizePersonInfo" ADD CONSTRAINT "AuthorizePersonInfo_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "Buyer"("Id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "MbossOps" ADD CONSTRAINT "MbossOps_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PayerInfo" ADD CONSTRAINT "PayerInfo_invoiceId_fkey" FOREIGN KEY ("invoiceId") REFERENCES "Invoice"("Id") ON DELETE CASCADE ON UPDATE CASCADE;
