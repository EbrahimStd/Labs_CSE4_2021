<%--
    Document   : insert2databaseApplication
    Created on : Mar 17, 2018, 1:58:10 AM
    Author     : Khaled
--%>

<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>my CV Project</title>
    </head>
    <body onload="displayResults()">
        <h1 id="nav" >MY CV PROJECT</h1>
        <%!
            public class CV {

                String URL = "jdbc:mysql://127.0.0.1:3308/mycvproject";
                String USER = "root";
                String PASSWORD = "root";
                int person_id = 0;
                Connection connection = null;
                PreparedStatement insertPerson = null;
                PreparedStatement courses = null;
                PreparedStatement projects = null;
                ResultSet resultSet = null;
                ResultSet rs = null;
                ResultSet rss = null;

                public CV() {

                    try {
                        connection = DriverManager.getConnection(URL, USER, PASSWORD);
                    } catch (SQLException ex) {
                        ex.printStackTrace();

                    }
                }

                public int insertPerson(String first, String last, String city, String address, String country, String email) {
                    int result = 0;

                    try {
                        insertPerson = connection.prepareStatement("INSERT INTO mycvproject.person (fName,lName,Address,city,country,email)"
                                + " VALUE (?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
                        insertPerson.setString(1, first);
                        insertPerson.setString(2, last);
                        insertPerson.setString(3, city);
                        insertPerson.setString(4, address);
                        insertPerson.setString(5, country);
                        insertPerson.setString(6, email);
                        result = insertPerson.executeUpdate();
                        rs = insertPerson.getGeneratedKeys();
                        if (rs.next()) {
                            person_id = rs.getInt(1);
                        }
                    } catch (SQLException ex) {

                        ex.printStackTrace();
                    }
                    return result;
                }

                public int insertCourses(String firstC, String secondC, String thirdC, int id) {
                    int res = 0;

                    try {
                        courses = connection.prepareStatement("insert into mycvproject.course (courseName,person_idperson) value(?,?)");
                        courses.setInt(2, id);
                        if (firstC != null) {
                            courses.setString(1, firstC);
                            courses.executeUpdate();
                        }
                        if (secondC != null) {
                            courses.setString(1, secondC);
                            courses.executeUpdate();
                        }
                        if (thirdC != null) {
                            courses.setString(1, thirdC);
                            courses.executeUpdate();
                        }

                    } catch (SQLException ex) {

                        ex.printStackTrace();
                    }
                    return res;
                }

                public int insertProjects(String firstP, String secondP, String thirdP, int id) {
                    int res1 = 0;

                    try {
                        courses = connection.prepareStatement("insert into mycvproject.project (projectName,person_idperson) value(?,?)");
                        courses.setInt(2, id);
                        if (firstP != null) {
                            courses.setString(1, firstP);
                            courses.executeUpdate();
                        }
                        if (secondP != null) {
                            courses.setString(1, secondP);
                            courses.executeUpdate();
                        }
                        if (thirdP != null) {
                            courses.setString(1, thirdP);
                            courses.executeUpdate();
                        }

                    } catch (SQLException ex) {

                        ex.printStackTrace();
                    }
                    return res1;
                }


                // sites
                public int insertSites(String firstS, String secondS, String thirdS, int id) {
                    int res1ult_sites = 0;

                    try {
                        courses = connection.prepareStatement("insert into mycvproject.site (siteAddress,person_idperson) value(?,?)");
                        courses.setInt(2, id);
                        if (firstS != null) {
                            courses.setString(1, firstS);
                            courses.executeUpdate();
                        }
                        if (secondS != null) {
                            courses.setString(1, secondS);
                            courses.executeUpdate();
                        }
                        if (thirdS != null) {
                            courses.setString(1, thirdS);
                            courses.executeUpdate();
                        }

                    } catch (SQLException ex) {

                        ex.printStackTrace();
                    }
                    return res1ult_sites;
                }

                // apps
                public int insertApps(String firstA, String secondA, String thirdA, int id) {
                    int res1ult_sites = 0;

                    try {
                        courses = connection.prepareStatement("insert into mycvproject.app (appName,person_idperson) value(?,?)");
                        courses.setInt(2, id);
                        if (firstA != null) {
                            courses.setString(1, firstA);
                            courses.executeUpdate();
                        }
                        if (secondA != null) {
                            courses.setString(1, secondA);
                            courses.executeUpdate();
                        }
                        if (thirdA != null) {
                            courses.setString(1, thirdA);
                            courses.executeUpdate();
                        }

                    } catch (SQLException ex) {

                        ex.printStackTrace();
                    }
                    return res1ult_sites;
                }

                // hoppies
                public int insertHobbies(String firstH, String secondH, String thirdH, int id) {
                    int res1ult_sites = 0;

                    try {
                        courses = connection.prepareStatement("insert into mycvproject.hobby (hobbyName,person_idperson) value(?,?)");
                        courses.setInt(2, id);
                        if (firstH != null) {
                            courses.setString(1, firstH);
                            courses.executeUpdate();
                        }
                        if (secondH != null) {
                            courses.setString(1, secondH);
                            courses.executeUpdate();
                        }
                        if (thirdH != null) {
                            courses.setString(1, thirdH);
                            courses.executeUpdate();
                        }

                    } catch (SQLException ex) {

                        ex.printStackTrace();
                    }
                    return res1ult_sites;
                }

                // languages
                public int insertLanguages(String firstL, String secondL, String thirdL, int id) {
                    int res1ult_sites = 0;

                    try {
                        courses = connection.prepareStatement("insert into mycvproject.language (languageName,person_idperson) value(?,?)");
                        courses.setInt(2, id);
                        if (firstL != null) {
                            courses.setString(1, firstL);
                            courses.executeUpdate();
                        }
                        if (secondL != null) {
                            courses.setString(1, secondL);
                            courses.executeUpdate();
                        }
                        if (thirdL != null) {
                            courses.setString(1, thirdL);
                            courses.executeUpdate();
                        }

                    } catch (SQLException ex) {

                        ex.printStackTrace();
                    }
                    return res1ult_sites;
                }
            }
        %>
        <%
            int result = 0;
            int result_courses = 0;
            int result_projects = 0;
            int result_languages = 0;
            int result_hobbies = 0;
            int result_sites = 0;
            int result_apps = 0;
            
            if (request.getParameter("submit") != null) {
                String firstName = new String();
                String lastName = new String();
                String city = new String();
                String address = new String();
                String country = new String();
                String email = new String();

                // to insert courses
                String firstC = new String();
                String secondC = new String();
                String thirdC = new String();

                //to insert projects
                String firstP = new String();
                String secondP = new String();
                String thirdP = new String();
                
                //to insert languages
                String firstL = new String();
                String secondL = new String();
                String thirdL = new String();
                
                //to insert sites
                String firstS = new String();
                String secondS = new String();
                String thirdS = new String();
                
                //to insert hobbies
                String firstH = new String();
                String secondH = new String();
                String thirdH = new String();
                
                //to insert apps
                String firstA = new String();
                String secondA = new String();
                String thirdA = new String();

                if (request.getParameter("first") != null) {
                    firstName = request.getParameter("first");
                }
                if (request.getParameter("last") != null) {
                    lastName = request.getParameter("last");
                }
                if (request.getParameter("city") != null) {
                    city = request.getParameter("city");
                }
                if (request.getParameter("address") != null) {
                    address = request.getParameter("address");
                }
                if (request.getParameter("country") != null) {
                    country = request.getParameter("country");
                }
                if (request.getParameter("email") != null) {
                    email = request.getParameter("email");
                }

                if (request.getParameter("firstC") != null) {
                    firstC = request.getParameter("firstC");
                }
                if (request.getParameter("secondC") != null) {
                    secondC = request.getParameter("secondC");
                }
                if (request.getParameter("thirdC") != null) {
                    thirdC = request.getParameter("thirdC");
                }

                if (request.getParameter("firstP") != null) {
                    firstP = request.getParameter("firstP");
                }
                if (request.getParameter("secondP") != null) {
                    secondP = request.getParameter("secondP");
                }
                if (request.getParameter("thirdP") != null) {
                    thirdP = request.getParameter("thirdP");
                }
                
                // apps
                if (request.getParameter("firstA") != null) {
                    firstA = request.getParameter("firstA");
                }
                if (request.getParameter("secondA") != null) {
                    secondA = request.getParameter("secondA");
                }
                if (request.getParameter("thirdA") != null) {
                    thirdA = request.getParameter("thirdA");
                }
                
                // languages
                if (request.getParameter("firstL") != null) {
                    firstL = request.getParameter("firstL");
                }
                if (request.getParameter("secondL") != null) {
                    secondL = request.getParameter("secondL");
                }
                if (request.getParameter("thirdL") != null) {
                    thirdL = request.getParameter("thirdL");
                }
                
                // sites
                if (request.getParameter("firstS") != null) {
                    firstS = request.getParameter("firstS");
                }
                if (request.getParameter("secondS") != null) {
                    secondS = request.getParameter("secondS");
                }
                if (request.getParameter("thirdS") != null) {
                    thirdS = request.getParameter("thirdS");
                }
                
                // hobbies
                if (request.getParameter("firstH") != null) {
                    firstH = request.getParameter("firstH");
                }
                if (request.getParameter("secondH") != null) {
                    secondH = request.getParameter("secondH");
                }
                if (request.getParameter("thirdH") != null) {
                    thirdH = request.getParameter("thirdH");
                }
                
                
                
                CV person = new CV();

                result = person.insertPerson(firstName, lastName, city, address, country, email);
                result_courses = person.insertCourses(firstC, secondC, thirdC, person.person_id);
                result_projects = person.insertProjects(firstP, secondP, thirdP, person.person_id);
                
                // task
                result_languages = person.insertLanguages(firstL, secondL, thirdL, person.person_id);
                result_sites = person.insertSites(firstS, secondS, thirdS, person.person_id);
                result_hobbies = person.insertHobbies(firstH, secondH, thirdH, person.person_id);
                result_apps = person.insertApps(firstA, secondA, thirdA, person.person_id);
 

            }
        %>
    <center>
        <form name="myForm" action="index.jsp" method="POST">

            <table border="0">

                <tbody>
                    <tr>
                        <td>First Name:</td>
                        <td><input class ="tb" type="text" name="first" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Last Name:</td>
                        <td><input class ="tb" type="text" name="last" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>address:</td>
                        <td><input class ="tb" type="text" name="address" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>country:</td>
                        <td><select class ="tb" name="country">
                                <option>Egypt</option>
                                <option>England</option>
                                <option>US</option>
                                <option>Spain</option>
                                <option>Italy</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>city:</td>
                        <td><input class ="tb" type="text" name="city" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>email:</td>
                        <td><input class ="tb" type="text" name="email" value="" size="50" /></td>
                    </tr>

                    <tr>
                        <td>Latest 3 projects:</td>
                        <td>
                            <input  type="text" name="firstP" value="" size="50"  />
                            <input    type="text" name="secondP" value="" size="50"  />
                            <input type="text" name="thirdP" value="" size="50"  />
                        </td>

                    </tr>

                    <tr>
                        <td>Latest 3 courses:</td>
                        <td><input class ="tb"type="text" name="firstC" value="" size="50" />
                            <input class ="tb"type="text" name="secondC" value="" size="50" />
                            <input class ="tb" type="text" name="thirdC" value="" size="50" /></td>
                    </tr>

                    <tr>
                        <td>Languages:</td>
                        <td><input class ="tb" type="text" name="firstL" value="" size="50" />
                            <input class ="tb" type="text" name="secondL" value="" size="50" />
                            <input class ="tb" type="text" name="yhirdL" value="" size="50" /></td>
                    </tr>

                    <tr>
                        <td>Hobbies:</td>
                        <td><input class ="tb" type="text" name="firstH" value="" size="50" />
                            <input class ="tb" type="text" name="secondH" value="" size="50" />
                            <input class ="tb" type="text" name="thirdH" value="" size="50" /></td>
                    </tr>

                    <tr>
                        <td>Sites:</td>
                        <td><input class ="tb" type="text" name="firstS" value="" size="50" />
                            <input class ="tb" type="text" name="secondS" value="" size="50" />
                            <input class ="tb" type="text" name="thirdS" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>apps:</td>
                        <td><input class ="tb" type="text" name="firstA" value="" size="50" />
                            <input class ="tb" type="text" name="secondA" value="" size="50" />
                            <input class ="tb" type="text" name="thirdA" value="" size="50" /></td>
                    </tr>
                    

                </tbody>
            </table>
            <input  class ="btn" type="submit" value="Submit" name="submit" />

            <input class ="tb" type="hidden" name="hidden" value="<%= result %>" size="50" />
        </form>

    </center>

    <SCRIPT LANGUAGE="JavaScript">
        <!--
       function displayResults() {
            if (document.myForm.hidden.value == 1) {
                // alert("Thanks for inserting your Data");
                location.replace("/WebApp66666/aggregate.jsp")
            }


        }
        //-->
    </SCRIPT>
</body>
</html>
