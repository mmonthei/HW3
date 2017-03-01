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
                    <td></td>  
                </tr>
                
                <tr>
                    <td> Overtime Hourly Rate: </td>
                    <td></td>  
                </tr>
                
                <tr>
                    <td> Gross Pay: </td>
                    <td></td>  
                </tr>
                
                <tr>
                    <td> Pre-Tax Deduct: </td>
                    <td><%= preTaxDed %></td>  
                </tr>
                
                <tr>
                    <td> Pre-Tax Pay: </td>
                    <td></td>  
                </tr>
                
                <tr>
                    <td> Tax Amount: </td>
                    <td></td>  
                </tr>
                
                <tr>
                    <td> Post Tax Pay: </td>
                    <td><%= postTaxDed %></td>  
                </tr>
                
                <tr>
                    <td> Post-Tax Deduct: </td>
                    <td></td>  
                </tr>
                
                <tr>
                    <td> Net Pay: </td>
                    <td></td>  
                </tr>
                
            </tbody>
        </table>
        
    </body>
</html>
