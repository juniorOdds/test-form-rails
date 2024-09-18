import { test,Page, expect } from '@playwright/test';
import { Register} from '../pageObject/register_object';
import { ManageUser } from '../pageObject/manageUser_object';

test.describe('example', () => {
  
  test('register user', async ({ page }) => {
    const register = new Register(page);
    await register.register();
  });
  // test('delete user', async ({ page }) => {
  //   const deleteUser = new ManageUser(page);
  //   await deleteUser.deleteUser({page});

    
  // })
  // test('edit user', async ({ page }) => {
  //   const editUser = new ManageUser(page);
  //   await editUser.editUser({page});
  // })
});
