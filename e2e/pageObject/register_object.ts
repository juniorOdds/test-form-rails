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
        

    }
}