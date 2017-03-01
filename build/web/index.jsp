<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Simple Salary Calculator </title>
    </head>    
    <body>
        <h1> Simple Salary Calculator </h1>
        
        <form name="salaryCalc" action="results.jsp" method="post">
            <table>
                <tbbody>
                    <tr>
                        <td> Hours Worked: </td>
                        <td><input type="integer" name="hoursWorked" value="" size="10"</td>
                    </tr>   
                    
                    <tr>
                        <td> Hourly Pay: </td>
                        <td><input type="integer" name="hourPay" value="" size="10"</td>
                    </tr>
                    
                    <tr>
                        <td> Pre-Tax Deduct: </td>
                        <td><input type="integer" name="preTax" value="" size="10"</td>
                    </tr>
                    
                    <tr>
                        <td> Post-Tax Deduct: </td>
                        <td><input type="integer" name="postTax" value="" size="10"</td>
                    </tr>
                </tbbody>                
            </table>
            
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            
        </form>
    </body>
</html>
