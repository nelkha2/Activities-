//Loan tree: activity 3 
var income = 500;
var debtIncomeRatio = .5;
var yearsInJob = 3;
var criminalRecord = false;

if ((income < 30000) && (debtIncomeRatio < 0.5)) {
    console.log("Loan disapproved: low income, low debt ratio");
} 

if ((income < 30000) && (debtIncomeRatio <=0.5)) {
    console.log("Loan approved: low income, high debt ratio")

}
else {
    console.log("Loan disapproved");
}