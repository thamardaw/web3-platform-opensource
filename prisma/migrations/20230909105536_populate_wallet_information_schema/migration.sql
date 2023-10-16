-- AlterTable
ALTER TABLE "Wallet" ADD COLUMN     "envelopeXDR" TEXT,
ADD COLUMN     "hash" TEXT,
ADD COLUMN     "ledgerId" TEXT,
ADD COLUMN     "maxFee" TEXT,
ADD COLUMN     "memoType" TEXT,
ADD COLUMN     "privateKey" TEXT,
ADD COLUMN     "sourceAccount" TEXT,
ADD COLUMN     "sourceAccountSequence" TEXT,
ADD COLUMN     "sourceWalletId" TEXT,
ALTER COLUMN "publicKey" DROP NOT NULL;
