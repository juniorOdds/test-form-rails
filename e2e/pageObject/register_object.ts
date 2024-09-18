import { Page } from "playwright/test";
import { expect } from "@playwright/test";
export class Register{
    readonly page:Page
    
    constructor(page:Page){
        this.page = page
    }
    async firstTime() {
        await this.page.goto('http://localhost:3000');
        await expect(this.page.getByText('Home')).toBeVisible();


    }

    async register() {
        await this.firstTime();
        await this.page.getByText('Register').click();
        await expect(this.page.getByText('First Name')).toBeVisible();
        await this.page.getByLabel('First Name:').fill('junior');
        await this.page.getByPlaceholder('dd/mm/yyyy').fill('9/12/2001');
        await this.page.locator('#user_gender_male').check();       
        await this.page.getByLabel('Last Name').fill('kang');
        await this.page.getByLabel('Email').fill('kang@kang');
        await this.page.locator('#user_phone_number').fill('0811111111');
        await this.page.getByLabel('Subject').selectOption('option1');
        await this.page.getByRole('button', { name: 'Submit' }).click();

    }
    
}