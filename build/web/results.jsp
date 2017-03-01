<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
        int totalHoursWorked = Integer.parseInt(request.getParameter("hoursWorked"));
        int hourlyPay = Integer.parseInt(request.getParameter("hourPay"));
        int preTaxDed = Integer.parseInt(request.getParameter("preTax"));
        int postTaxDed = Integer.parseInt(request.getParameter("postTax"));
        
        int regHours = 0; //regular hours in shift
        int otHours = 0; //overtime hours in shift
        double otPayRate = 0; //overtime pay rate
        double grossPay = 0; //gross pay
        double otPay = 0; //overtime pay in shift
        double regPay = 0; //regular pay in shift
        double taxablePay = 0; //taxable pay
        double taxAmount = 0; //tax amount
        double postTaxPay = 0; //post tax pay
        double netPay = 0; //net pay
        
       
        //check if OT hours
        if(totalHoursWorked > 40){
           regHours = 40;
           otHours = totalHoursWorked - 40;
           otPayRate = hourlyPay * 1.5;
           otPay = otHours * otPayRate;
           regPay = regHours * hourlyPay;
           grossPay = regPay + otPay;
        }else{
            grossPay = totalHoursWorked * hourlyPay;
        }
        
        taxablePay = grossPay - preTaxDed;
        
        if(grossPay < 500){
            
            taxAmount = taxablePay * .18;
        }else{
            
            taxAmount = taxablePay * .22;
        }
        
        postTaxPay = taxablePay - taxAmount;
        
        netPay = postTaxPay - postTaxDed;
        
        %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table border="1">
            <tbody>
                <tr>
                    <td> Total Hours Worked: </td>
                    <td><%= totalHoursWorked%></td>  
                </tr>
                
                <tr>
                    <td> Hourly Rate: </td>
                    <td><%= hourlyPay %></td>  
                </tr>
                
                <tr>
                    <td> # Hours Overtime: </td>
                    <td><%= otHours %></td>  
                </tr>
                
                <tr>
                    <td> Overtime Hourly Rate: </td>
                    <td><%= otPayRate %></td>  
                </tr>
                
                <tr>
                    <td> Gross Pay: </td>
                    <td><%= grossPay %></td>  
                </tr>
                
                <tr>
                    <td> Pre-Tax Deduct: </td>
                    <td><%= preTaxDed %></td>  
                </tr>
                
                <tr>
                    <td> Pre-Tax Pay: </td>
                    <td><%= taxablePay %></td>  
                </tr>
                
                <tr>
                    <td> Tax Amount: </td>
                    <td><%= taxAmount %></td>  
                </tr>
                
                <tr>
                    <td> Post Tax Pay: </td>
                    <td><%= postTaxPay %></td>  
                </tr>
                
                <tr>
                    <td> Post-Tax Deduct: </td>
                    <td><%= postTaxDed %></td>  
                </tr>
                
                <tr>
                    <td> Net Pay: </td>
                    <td><%= netPay %></td>  
                </tr>
                
            </tbody>
        </table>
        
    </body>
</html>
