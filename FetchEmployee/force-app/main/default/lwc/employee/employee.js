import { LightningElement } from 'lwc';
import getEmployeeDetails from "@salesforce/apex/FetchEmployeeDetails.getEmployeeDetails";
export default class Employee extends LightningElement {
    employees=[];
    fetchEmployee() {
        getEmployeeDetails()
          .then((data) => {
            this.employees = JSON.parse(data).data;
             console.log(JSON.parse(data));
          })
          .catch((error) => {
            console.log(error);
          });
          
    
    
    
         
         
      }
}