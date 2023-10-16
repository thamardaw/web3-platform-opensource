-- CreateTable
CREATE TABLE "TradeHistory" (
    "Id" TEXT NOT NULL,
    "transitionDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "invoiceId" TEXT NOT NULL,
    "sellerId" TEXT NOT NULL,
    "buyerId" TEXT NOT NULL,
    "purchasePrice" TEXT NOT NULL,
    "opsProfit" TEXT NOT NULL,
    "discountRate" TEXT NOT NULL,
    "factoringFeesRate" TEXT NOT NULL,
    "collectionFeesRate" TEXT NOT NULL,
    "funderIncomeTaxRate" TEXT NOT NULL,

    CONSTRAINT "TradeHistory_pkey" PRIMARY KEY ("Id")
);
