<!DOCTYPE html>
<html>
<head>
<style>
  .card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
  float: right;
 
}

.photo{
  float: right;
}
.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

/*profile card css stop*/ 
      .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 30px;
        border: 1px solid #eee;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
        font-size: 16px;
        line-height: 24px;
        font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
        color: #555;
      }

      .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
      }

      .invoice-box table td {
        padding: 5px;
        vertical-align: top;
      }

      .invoice-box table tr td:nth-child(2) {
        text-align: right;
      }

      .invoice-box table tr.top table td {
        padding-bottom: 20px;
      }

      .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
      }

      .invoice-box table tr.information table td {
        padding-bottom: 40px;
      }

      .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
      }

      .invoice-box table tr.details td {
        padding-bottom: 20px;
      }

      .invoice-box table tr.item td {
        border-bottom: 1px solid #eee;
      }

      .invoice-box table tr.item.last td {
        border-bottom: none;
      }

      .invoice-box table tr.total td:nth-child(2) {
        border-top: 2px solid #eee;
        font-weight: bold;
      }

      @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
          width: 100%;
          display: block;
          text-align: center;
        }

        .invoice-box table tr.information table td {
          width: 100%;
          display: block;
          text-align: center;
        }
      }

      .invoice-box.rtl {
        direction: rtl;
        font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
      }

      .invoice-box.rtl table {
        text-align: right;
      }

      .invoice-box.rtl table tr td:nth-child(2) {
        text-align: left;
      }
      .titletext{
        text-align: center;
        line-height: 100%;
      }
      .headline{
        text-align:center;
      }
  

/* CSS for Profile */
 
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}


</style>
</head>
<body>


{{-- <table id="customers">
  <tr>
    <td>
        <h2>
            <?php $image_path = '/upload/easyschool.png'; ?>
          <img src="{{ public_path() . $image_path }}" width="200" height="100">
        </h2>
    </td>
    <td>
        <h2>Roatek School ERP</h2>
        <p>School Address</p>
        <p>Phone : 07064245842</p>
        <p>Email : info@roatek.com.ng</p>
        <p><b> Employee Registration Page </b></p>
    </td> 
  </tr>
  
   
</table> --}}




{{-- <table id="customers">
  <tr>
    <th width="10%">Sl</th>
    <th width="45%">Employee Details</th>
    <th width="45%">Employee Data</th>
  </tr>
  <tr>
    <td>1</td>
    <td><b>Employee Name</b></td>
    <td>{{ $details->name }}</td>
  </tr>
  <tr>
    <td>2</td>
    <td><b>Employee ID No</b></td>
    <td>{{ $details->id_no }}</td>
  </tr>

    
  <tr>
    <td>3</td>
    <td><b>Father's Name</b></td>
    <td>{{ $details->fname }}</td>
  </tr>
  <tr>
    <td>5</td>
    <td><b>Mother's Name</b></td>
    <td>{{ $details->mname }}</td>
  </tr>
  <tr>
    <td>6</td>
    <td><b>Mobile Number </b></td>
    <td>{{ $details->mobile }}</td>
  </tr>
  <tr>
    <td>7</td>
    <td><b>Address</b></td>
    <td>{{ $details->address }}</td>
  </tr>
  <tr>
    <td>8</td>
    <td><b>Gender</b></td>
    <td>{{ $details->gender }}</td>
  </tr>

    <tr>
    <td>9</td>
    <td><b>Religion</b></td>
    <td>{{ $details->religion }}</td>
  </tr>


    <tr>
    <td>10</td>
    <td><b>Date of Birth</b></td>
    <td>{{ date('d-m-Y', strtotime($details->dob))  }}</td>
  </tr>
    <tr>
    <td>11</td>
    <td><b> Employee Designaton  </b></td>
    <td>{{ $details['designation']['name'] }}  </td>
  </tr>
    <tr>
    <td>12</td>
    <td><b>Join Date </b></td>
    <td>{{ date('d-m-Y', strtotime($details->join_date))  }}</td>
  </tr>
    <tr>
    <td>13</td>
    <td><b>Employee Slaray  </b></td>
    <td>{{ $details->salary }}</td>
  </tr>
    
   
</table> --}}

<div class="invoice-box">
  <table cellpadding="0" cellspacing="0">
    <tr class="top">
      <td colspan="2">
        <table>
          <tr>
            <td class="title">
             
              <h2>
                <?php $image_path = '/upload/easyschool.png'; ?>
              <img src="{{ public_path() . $image_path }}" width="180" height="80">
            </h2>
            </td>
            
            <td class="titletext">
              <h4>Roatek International School</h4> 
                  <p>Address: 12345 Sunny Road Lagos</p>
                  <p>Phone : 07064245842</p>
                  <p>Email : info@roatek.com.ng</p>
                 
                 
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr style="text-align: center;"><td colspan="2"><h1 >Employee Record</h1></td></tr>
    
    <tr class="information">
      
      <td colspan="2">
        <table>
  
          <tr>
              <td>{{ $details->name }}<br />{{ $details->id_no }}<br/>{{ $details->mobile }}</td>
             
            
          <td class="titletext">
               <div class="card">
                <img class="photo" src="https://source.unsplash.com/600x300/?student" alt="Avatar" style="width:150px; height:150px;">
              </div>

            </td>
          </tr>
        </table>
      </td>
    </tr>

    <tr class="heading">
      <td>Employee Details</td>

      <td>Employee Data</td>
    </tr>
    <tr class="details">
      <td><b>Employee Name</b></td>
      <td>{{ $details->name }}</td>
    </tr>

    <tr class="heading">
      <td><b>Employee ID No</b></td>
      <td>{{ $details->id_no }}</td>
    </tr>

    <tr class="item">
      <td><b>Father's Name</b></td>
      <td>{{ $details->fname }}</td>
    </tr>
    <tr class="item">
      <td><b>Mother's Name</b></td>
      <td>{{ $details->mname }}</td>
    </tr>

    <tr class="item">
      <td><b>Mobile Number </b></td>
    <td>{{ $details->mobile }}</td>
    </tr>
    <tr class="item">
      <td><b>Address</b></td>
    <td>{{ $details->address }}</td>
    </tr>
    <tr class="item">
      <td><b>Gender</b></td>
      <td>{{ $details->gender }}</td>
    </tr>
    <tr class="item">
      <td><b>Mobile Number </b></td>
    <td>{{ $details->mobile }}</td>
    </tr>
    <tr class="item">
      <td><b>Religion</b></td>
      <td>{{ $details->religion }}</td>
    </tr>
    <tr class="item">
      <td><b>Date of Birth</b></td>
    <td>{{ date('d-m-Y', strtotime($details->dob))  }}</td>
    </tr>
    <tr class="item">
      <td><b> Employee Designaton  </b></td>
      <td>{{ $details['designation']['name'] }}  </td>
    </tr>
    <tr class="item">
      <td><b>Join Date </b></td>
      <td>{{ date('d-m-Y', strtotime($details->join_date))  }}</td>
    </tr>
    <tr class="item">
      <td><b>Employee Salary  </b></td>
      <td>{{ $details->salary }}</td>
    </tr>

    <tr class="item last">
      <td>Domain name (1 year)</td>

      <td>$10.00</td>
    </tr>

    <tr class="total">
      <td></td>

      <td>Total: $385.00</td>
    </tr>
  </table>
</div>

<br> <br>
  <i style="font-size: 10px; float: right;">Print Data : {{ date("d M Y") }}</i>


</body>
</html>
