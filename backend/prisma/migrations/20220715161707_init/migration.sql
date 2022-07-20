/*
  Warnings:

  - You are about to drop the column `orderId` on the `Dish` table. All the data in the column will be lost.
  - Added the required column `totalPrice` to the `Order` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Dish" DROP CONSTRAINT "Dish_orderId_fkey";

-- AlterTable
ALTER TABLE "Dish" DROP COLUMN "orderId";

-- AlterTable
ALTER TABLE "Order" ADD COLUMN     "dish" INTEGER[],
ADD COLUMN     "totalPrice" INTEGER NOT NULL;
