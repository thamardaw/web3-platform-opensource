/*
  Warnings:

  - Added the required column `envelopeXDR` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `hash` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ledgerId` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `maxFee` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `memoType` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sourceAccount` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sourceAccountSequence` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sourceWalletId` to the `PrimaryWallet` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "PrimaryWallet" ADD COLUMN     "envelopeXDR" TEXT NOT NULL,
ADD COLUMN     "hash" TEXT NOT NULL,
ADD COLUMN     "ledgerId" TEXT NOT NULL,
ADD COLUMN     "maxFee" TEXT NOT NULL,
ADD COLUMN     "memoType" TEXT NOT NULL,
ADD COLUMN     "sourceAccount" TEXT NOT NULL,
ADD COLUMN     "sourceAccountSequence" TEXT NOT NULL,
ADD COLUMN     "sourceWalletId" TEXT NOT NULL;
