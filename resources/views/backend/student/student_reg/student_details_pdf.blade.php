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




<div class="invoice-box">
  <table cellpadding="0" cellspacing="0">
    <tr class="top">
      <td colspan="2">
        <table>
          <tr>
            <td class="title">
            <h2>
                <?php $image_path = '/upload/projectimage.png'; ?>
              <img src="{{ public_path() . $image_path }}" width="200" height="80">
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
    <tr style="text-align: center;"><td colspan="2"><h1 >Student Details</h1></td></tr>
    
    <tr class="information">
      
      <td colspan="2">
        <table>
  
          <tr>
              <td>{{ $details->name }}<br />{{ $details->id_no }}<br/>{{ $details->mobile }}</td>
             
            
          <td class="titletext">
               <div class="card">
                <img class="photo" src="{{ (!empty($details['student']['image']))? url('upload/student_images/'.$details['student']['image']):url('upload/no_image.jpg') }}" alt="Avatar" style="width:150px; height:150px;">
              </div>

            </td>
          </tr>
        </table>
      </td>
    </tr>

    <tr class="heading">
      <td>Student Details</td>

      <td>Student Data</td>
    </tr>
    <tr class="details">
      <td><b>Student Name</b></td>
    <td>{{ $details['student']['name'] }}</td>
    </tr>

    <tr class="heading">
      <td><b>Student ID No</b></td>
    <td>{{ $details['student']['id_no'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Student Role</b></td>
    <td>{{ $details->roll }}</td>
    </tr>
    <tr class="item">
      <td><b>Father's Name</b></td>
    <td>{{ $details['student']['fname'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Mother's Name</b></td>
      <td>{{ $details['student']['mname'] }}</td>
    </tr>

    <tr class="item">
     <td><b>Mobile Number </b></td>
    <td>{{ $details['student']['mobile'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Address</b></td>
    <td>{{ $details['student']['address'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Gender</b></td>
      <td>{{ $details['student']['gender'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Religion</b></td>
    <td>{{ $details['student']['religion'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Date of Birth</b></td>
    <td>{{ $details['student']['dob'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Discount </b></td>
    <td>{{ $details['discount']['discount'] }} %</td>
    </tr>
    <tr class="item">
      <td><b>Year </b></td>
    <td>{{ $details['student_year']['name'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Class  </b></td>
    <td>{{ $details['student_class']['name'] }}</td>
    </tr>
    <tr class="item">
      <td><b>Group </b></td>
    <td>{{ $details['group']['name'] }}</td>
    </tr>
    <tr class="item">
       <td><b>Shift </b></td>
    <td>{{ $details['shift']['name'] }}</td>
    </tr>

   
  </table>
</div>

<br> <br>
  <i style="font-size: 10px; float: right;">Print Data : {{ date("d M Y") }}</i>

</body>
</html>

