-- CreateTable
CREATE TABLE "document_verifications" (
    "id" TEXT NOT NULL,
    "applicationId" TEXT NOT NULL,
    "documentId" TEXT,
    "instituteId" TEXT NOT NULL,
    "instituteName" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "documentTypeCode" TEXT NOT NULL,
    "fileName" TEXT NOT NULL,
    "fileType" TEXT NOT NULL,
    "fileSize" INTEGER NOT NULL,
    "fileHash" TEXT NOT NULL,
    "storagePath" TEXT,
    "extractionMethod" TEXT NOT NULL,
    "report" JSONB NOT NULL,
    "status" TEXT NOT NULL DEFAULT 'Pending Review',
    "createdBy" TEXT NOT NULL,
    "createdByUserId" TEXT NOT NULL,
    "createdAt" TEXT NOT NULL,
    "reviewedBy" TEXT,
    "reviewedByName" TEXT,
    "reviewedAt" TEXT,

    CONSTRAINT "document_verifications_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "document_verifications_applicationId_idx" ON "document_verifications"("applicationId");

-- CreateIndex
CREATE INDEX "document_verifications_instituteId_idx" ON "document_verifications"("instituteId");

-- CreateIndex
CREATE INDEX "document_verifications_region_idx" ON "document_verifications"("region");

-- CreateIndex
CREATE INDEX "document_verifications_status_idx" ON "document_verifications"("status");
