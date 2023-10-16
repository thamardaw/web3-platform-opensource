-- CreateTable
CREATE TABLE "Order" (
    "Id" TEXT NOT NULL,
    "ledgerId" TEXT NOT NULL,
    "sellerId" TEXT NOT NULL,
    "buyerId" TEXT NOT NULL,
    "assetId" TEXT NOT NULL,
    "soldPrice" TEXT NOT NULL,
    "status" TEXT NOT NULL,
    "createdDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedDate" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Order_pkey" PRIMARY KEY ("Id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Order_ledgerId_key" ON "Order"("ledgerId");

-- CreateIndex
CREATE UNIQUE INDEX "Order_sellerId_key" ON "Order"("sellerId");

-- CreateIndex
CREATE UNIQUE INDEX "Order_buyerId_key" ON "Order"("buyerId");

-- CreateIndex
CREATE UNIQUE INDEX "Order_assetId_key" ON "Order"("assetId");

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_ledgerId_fkey" FOREIGN KEY ("ledgerId") REFERENCES "Ledger"("Id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_sellerId_fkey" FOREIGN KEY ("sellerId") REFERENCES "Seller"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_buyerId_fkey" FOREIGN KEY ("buyerId") REFERENCES "Buyer"("Id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Order" ADD CONSTRAINT "Order_assetId_fkey" FOREIGN KEY ("assetId") REFERENCES "Invoice"("Id") ON DELETE RESTRICT ON UPDATE CASCADE;
