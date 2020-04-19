<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="gctcms_login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>CMS Login</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet" />

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet'
        type='text/css' />
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <!-- Favicon -->
    <%--<link rel="shortcut icon" href="/images/favicon.ico"/>--%>
    <style>
        .btn-primary {
            color: #fff;
            background-color: #4063ad;
            border-color: #4063ad;
            display: block;
            padding: 6px 127px;
            margin-bottom: 0;
            font-size: 14px;
            font-weight: 400;
            line-height: 1.42857143;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            background-image: none;
            border: 1px solid transparent;
            border-radius: 4px;
            margin: 0 auto;
        }

        .login_box {
            width: 350px;
            margin: auto;
            border-radius: 5px;
            border: 1px solid #7eb916;
            background: #f6f6f6;
            left: 0;
            right: 0;
            overflow: hidden;
        }

        .form-signin {
            max-width: 330px;
            padding: 15px;
            margin: 0 auto;
        }

            .form-signin .form-signin-heading, .form-signin .checkbox {
                margin-bottom: 10px;
            }

            .form-signin .checkbox {
                font-weight: normal;
            }

            .form-signin .form-control {
                position: relative;
                font-size: 16px;
                height: auto;
                padding: 10px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }

                .form-signin .form-control:focus {
                    z-index: 2;
                }

            .form-signin input[type="text"] {
                margin-bottom: -1px;
                border-bottom-left-radius: 0;
                border-bottom-right-radius: 0;
            }

            .form-signin input[type="password"] {
                margin-bottom: 10px;
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }

        .account-wall {
            margin-top: 20px;
            padding: 20px 0px 20px 0px;
            border-radius: 5px;
            border: 1px solid #7e99d4;
            background: #fff;
            left: 0;
            right: 0;
            border-top: 5px solid #FFA500;
        }

        .login-title {
            font-size: 16px;
            text-align: center;
            color: #4063ad;
            padding: 5px;
            text-transform: uppercase;
            font-weight: bold;
        }

        .profile-img {
            text-align: center;
            align-content: center;
            display: block;
            margin: 0 auto;
        }

        .need-help {
            margin-top: 10px;
        }

        .new-account {
            display: block;
            margin-top: 10px;
        }

        .container {
            padding-top: 4%;
        }
    </style>
</head>
<body style="background-color: #4063ad">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 col-md-offset-4">

                    <div class="account-wall">
                        <div class="form-group">
                            <img class="profile-img" src="../images/logo.png" />
                        </div>
                        <fieldset style="background-color: #f6f6f6;">
                            <div class="form-group" style="margin-top: -16px;">
                                <h1 class="text-center login-title">Please Sign In</h1>
                            </div>
                            <div class="form-group">
                                <input id="usernameInput" class="form-control" placeholder="Username" name="username" autofocus runat="server" style="width: 85%; margin: 0 auto;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the Username" Display="Dynamic" ControlToValidate="usernameInput" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <input id="passwordInput" class="form-control" placeholder="Password" name="password" type="password" runat="server" style="width: 85%; margin: 0 auto;">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the Username" Display="Dynamic" ControlToValidate="passwordInput" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="SecurityCodeTextBox" class="form-control" autocomplete="off" MaxLength="10" runat="server" Style="width: 85%; margin: 0 auto;" placeholder="security code" />
                                <asp:Image ID="ImgCaptcha" runat="server" Height="30px" ImageUrl="../captcha.ashx" Style="margin-left: 27px; margin-top: 4px;" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="SecurityCodeTextBox" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">

                                <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn-primary" OnClick="LoginButton_Click" />
                            </div>
                            <asp:Label ID="MessageLabel" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </fieldset>
                    </div>

                </div>
            </div>
        </div>


        <!-- jQuery -->
        <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
        <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

        <!--  Checkbox, Radio & Switch Plugins -->
        <script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

        <!--  Charts Plugin -->
        <script src="assets/js/chartist.min.js"></script>

        <!--  Notifications Plugin    -->
        <script src="assets/js/bootstrap-notify.js"></script>

        <!--  Google Maps Plugin    -->


        <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
        <script src="assets/js/light-bootstrap-dashboard.js"></script>

        <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
        <script src="assets/js/demo.js"></script>
    </form>
</body>
</html>
