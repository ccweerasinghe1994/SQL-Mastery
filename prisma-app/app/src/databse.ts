import { PrismaClient } from '@prisma/client'



let prisma: PrismaClient;
export const databaseConnection = async () => {
    if (!prisma) {
        prisma = new PrismaClient();
    }
    return prisma;
}

