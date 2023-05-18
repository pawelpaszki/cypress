## Cypress automation framework test examples

### Helpful tools
https://github.com/cucumber/cucumber-expressions


https://selectors.webdriveruniversity.com/

### run specific tags

```
npx cypress run -e TAGS='@login' --headed
npx cypress run -e TAGS='@login or @contact-us' --headed
npx cypress run -e TAGS='@smoke' --headed
npx cypress run -e TAGS='(@login or @contact-us) and not @smoke' --headed
npx cypress run cypress/e2e/*.feature --headed
```