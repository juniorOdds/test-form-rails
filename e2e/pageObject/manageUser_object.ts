import { expect, Page } from "playwright/test"
import { Register } from "./register_object";

export class ManageUser{
    readonly page:Page

    constructor(page:Page){
        this.page = page
    }

    async deleteUser({page}) {
        const register = new Register(page);
        await register.register();
        await page.locator('#user_7').getByRole('button', { name: 'Delete' }).click();
        await page.locator('#modalDelete').getByRole('button', { name: 'Delete' }).click();
        await expect(page.locator('#user_7')).not.toBeVisible();
    }
    async editUser({page}) {
        const register = new Register(page);
        await register.register();
        await page.locator('#user_8').getByRole('button', { name: 'Edit' }).click();
        await page.locator('#modalEdit #user_first_name').fill('mon');
        await page.locator('#modalEdit #user_last_name').fill('neeeee');
        await page.getByRole('button', { name: 'Update user' }).click();
        await expect(page.locator('#user_8')).toBeVisible();
    }
}