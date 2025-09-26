<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biểu Mẫu Thông Tin Cơ Bản</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        .form-container {
            width: 500px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .section-title {
            font-weight: bold;
            font-size: 1.2em;
            margin-bottom: 15px;
            border-bottom: 1px solid #000;
            padding-bottom: 5px;
        }
        .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .form-group label {
            width: 150px; /* Độ rộng cố định cho nhãn */
            font-weight: normal;
        }
        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group select,
        .form-group .input-box {
            flex-grow: 1;
            padding: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        .input-box {
            display: flex;
            align-items: center;
        }
        .input-box input {
            flex-grow: 1;
            border: none;
            padding: 0;
            margin: 0;
            outline: none;
        }
        .input-box .icon {
            margin-left: 5px;
            cursor: pointer;
            color: #666;
            font-size: 1.1em;
        }
        .gender-options {
            display: flex;
            gap: 15px;
            align-items: center;
        }
        .gender-options label {
            width: auto;
            margin-right: 5px;
        }
        .reports-to-field {
            display: flex;
            align-items: center;
            border: 1px solid #ccc;
            padding: 5px;
            width: calc(100% - 150px);
        }
        .reports-to-field span {
            margin-right: 10px;
            font-weight: bold;
        }
        .reports-to-field .icon {
            cursor: pointer;
            color: #666;
        }
        .help-icon {
            margin-left: 5px;
            cursor: pointer;
            color: #666;
            font-size: 1.1em;
            font-weight: bold;
        }
        .input-with-icon {
            display: flex;
            align-items: center;
            width: calc(100% - 150px);
        }
        .input-with-icon input,
        .input-with-icon select {
            flex-grow: 1;
        }
    </style>
</head>
<body>

<div class="form-container">
    <div class="section-title">Basic Info</div>
    <div class="form-group">
        <label for="employeeID">Employee ID</label>
        <div class="input-with-icon">
            <input type="text" id="employeeID" value="9" readonly style="background-color: #fff; border: 1px solid #ccc;">
        </div>
    </div>
    <div class="form-group">
        <label for="lastName">Last Name</label>
        <div class="input-with-icon">
            <input type="text" id="lastName" value="Dodsworth">
        </div>
    </div>
    <div class="form-group">
        <label for="firstName">First Name</label>
        <div class="input-with-icon">
            <input type="text" id="firstName" value="Anne">
            <span class="icon">&#x2630;</span> </div>
    </div>

    <div class="form-group">
        <label>Gender</label>
        <div class="gender-options">
            <input type="radio" id="male" name="gender" value="Male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="Female">
            <label for="female">Female</label>
            <input type="radio" id="xxx" name="gender" value="XXX">
            <label for="xxx">XXX</label>
            <input type="radio" id="zzz" name="gender" value="ZZZ" checked>
            <label for="zzz">ZZZ</label>
        </div>
    </div>

    <div class="form-group">
        <label for="title">Title</label>
        <div class="input-with-icon">
            <input type="text" id="title" value="Sales Representative">
        </div>
    </div>
    <div class="form-group">
        <label for="suffix">Suffix</label>
        <div class="input-with-icon">
            <input type="text" id="suffix" value="Ms.">
        </div>
    </div>
    <div class="form-group">
        <label for="birthDate">BirthDate</label>
        <div class="input-with-icon">
            <input type="text" id="birthDate" value="1969-07-02 00:00:00">
            <span class="help-icon">(?)</span>
        </div>
    </div>
    <div class="form-group">
        <label for="hireDate">HireDate</label>
        <div class="input-with-icon">
            <input type="text" id="hireDate" value="1994-11-15 00:00:00">
        </div>
    </div>
    <div class="form-group">
        <label for="ssn">SSN # (if applicable)</label>
        <div class="input-with-icon">
            <input type="text" id="ssn" value="">
            <span class="icon">&#x24D8;</span> </div>
    </div>
    <div class="form-group">
        <label for="reportsTo">Reports To</label>
        <div class="reports-to-field">
            <span>Buchanan</span>
            <span class="icon">▼</span>
        </div>
    </div>

    <hr style="border: 0; border-top: 1px solid #ccc; margin: 20px 0;">

    <div class="section-title">Contact Info</div>
    <div class="form-group">
        <label for="email">Email</label>
        <div class="input-with-icon">
            <input type="text" id="email" value="name@example.com">
        </div>
    </div>
    <div class="form-group">
        <label for="address">Address</label>
        <div class="input-with-icon">
            <input type="text" id="address" value="7 Houndstooth Rd.">
        </div>
    </div>
    <div class="form-group">
        <label for="city">City</label>
        <div class="input-with-icon">
            <input type="text" id="city" value="London">
        </div>
    </div>
    <div class="form-group">
        <label for="region">Region</label>
        <div class="input-with-icon">
            <input type="text" id="region" value="">
        </div>
    </div>
    <div class="form-group">
        <label for="postalCode">Postal Code</label>
        <div class="input-with-icon">
            <input type="text" id="postalCode" value="WG2 7LT">
        </div>
    </div>
    <div class="form-group">
        <label for="country">Country</label>
        <div class="input-with-icon">
            <select id="country" style="width: 100%;">
                <option value="Russian Federation" selected>Russian Federation</option>
                <option value="UK">United Kingdom</option>
                <option value="USA">United States</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="usHomePhone">US Home Phone</label>
        <div class="input-with-icon">
            <input type="text" id="usHomePhone" value="(234) 234-2342">
        </div>
    </div>
    <div class="form-group">
        <label for="photo">Photo</label>
        <div class="input-with-icon">
            <input type="text" id="photo" value="EmpID9.bmp">
        </div>
    </div>

</div>

</body>
</html>