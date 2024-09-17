import { test,Page, expect } from '@playwright/test';
import { Register} from '../pageObject/register_object';

test.describe('example', () => {
  
  test('open page', async ({ page }) => {
    const register = new Register(page);
    await register.firstTime();
    await register.register();
    

    
  });
});
