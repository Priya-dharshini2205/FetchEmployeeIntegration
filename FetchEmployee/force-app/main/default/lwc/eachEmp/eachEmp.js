import { LightningElement,api } from 'lwc';

export default class EachEmp extends LightningElement {
  @api empId;
  @api employeeName;
  @api employeeSalary;
  @api employeeAge;

  
 
}