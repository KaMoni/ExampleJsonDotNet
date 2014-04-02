<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExampleJsonDotNET.aspx.cs" Inherits="ExampleJsonDotNET.ExampleJsonDotNET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>a simple Json.NET example</title>
    <script src="JavaScript/jquery-2.1.0.js" type="text/javascript"></script>
    <link href="CSS/style.css" rel="stylesheet" />
    <script>
        $(document).ready(function(){
            $('#javascriptDiv').hide();
        });

        var getData = function () {
            $('#firstnameP').html(personJson.Firstname);
            $('#lastnameP').html(personJson.LastName);
            $('#eyecolorP').html(personJson.Eyecolor);
            $('#javascriptDiv').show();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="mother">
            <div class="infobox">
                <table>
                    <thead>
                        <tr>
                            <th colspan="2">Data to build your C#-object</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                             <td colspan="2">
                                <asp:Button runat="server" ID="transform" OnClick="JsonConvertPerson" Text="  JsonConvert.SerializeObject(person)  " />
                            </td>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr>
                            <td>First Name:</td>
                            <td>
                                <asp:TextBox runat="server" type="text" ID="firstname" Style="padding-right: 0" />
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td>
                                <asp:TextBox runat="server" type="text" ID="lastname" />
                            </td>
                        </tr>
                        <tr>
                            <td>Eye Color:</td>
                            <td>
                                <asp:TextBox runat="server" type="text" ID="eyecolor" /></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div runat="server" id="jsonDiv" class="infobox">
                <table>
                    <thead>
                        <tr>
                            <th>JSON output from Json.NET</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="json" rowspan="3"></asp:Label>
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td>
                                <input type='button' value='  Get data from JSON  ' onclick='getData()' /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div id="javascriptDiv" class="infobox">
                <table>
                    <thead>
                        <tr>
                            <th>Data retrieved from Json</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <p id="firstnameP">First Name?</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p id="lastnameP">Last Name?</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p id="eyecolorP">Eye Color?</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
