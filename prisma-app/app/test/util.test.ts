import {databaseConnection} from "../src/databse";
import {PrismaClient} from "@prisma/client";


let prisma: PrismaClient;

describe('DB Tests', () => {
    beforeAll(async () => {
       prisma = await databaseConnection();
        await prisma.user.deleteMany();
        await prisma.customer.deleteMany();
    });
    test('Create a User',async () => {
        try {

        const user =await prisma.user.create({
            data: {
                email: 'ccweerasinghe1994@gmail.com',
            }
        });

        expect(user).toBeTruthy();
        }catch (e) {
            console.log(e);
        }
    });
    test('Create a Customer',async () => {
        try {

        const customer =await prisma.customer.create({
            data:{
                name:"Kevin"
            }
        });

        expect(customer).toBeTruthy();
        }catch (e) {
            console.log(e);
        }
    });
});
