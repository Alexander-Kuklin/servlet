<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

  <table width="250">
      <tr>
          <td>
              <form action="servlet" method="get">
                  <div class="form-group">
                      <label for="numOne">Number One</label>
                      <input id="numOne" name="numOne" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                      <label for="numTwo">Number Two</label>
                      <input id="numTwo" name="numTwo" type="text" class="form-control">
                  </div>
                  <div class="form-group">
                      <label>Operation</label>
                      <div>
                          <div class="form-check form-check-inline">
                              <label class="form-check-label">
                                  <input name="operation" type="radio" class="form-check-input" value="add">
                                  Addition
                              </label>
                          </div>
                          <div class="form-check form-check-inline">
                              <label class="form-check-label">
                                  <input name="operation" type="radio" class="form-check-input" value="sub">
                                  Subtraction
                              </label>
                          </div>
                          <div class="form-check form-check-inline">
                              <label class="form-check-label">
                                  <input name="operation" type="radio" class="form-check-input" value="mul">
                                  Multiplication
                              </label>
                          </div>
                          <div class="form-check form-check-inline">
                              <label class="form-check-label">
                                  <input name="operation" type="radio" class="form-check-input" value="div">
                                  Division
                              </label>
                          </div>
                      </div>
                  </div>
                  <div class="form-group">
                      <button name="submit" type="submit" class="btn btn-primary">Execute</button>
                  </div>
              </form>
          </td>
      </tr><tr>
      <td><c:if test="${not empty answer}">
          <h1>Result: ${answer}</h1>
            </c:if>
      </td>
  </tr>
  </table>
  </body>
</html>
