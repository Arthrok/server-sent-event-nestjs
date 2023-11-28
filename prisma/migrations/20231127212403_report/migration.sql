-- CreateEnum
CREATE TYPE "Status" AS ENUM ('PENDING', 'PROCESSING', 'DONE', 'ERROR');

-- CreateTable
CREATE TABLE "Report" (
    "id" SERIAL NOT NULL,
    "filename" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "status" "Status" NOT NULL,

    CONSTRAINT "Report_pkey" PRIMARY KEY ("id")
);
