@extends('admin.admin_master')
@section('admin')
<style>
	.student-profile .card {
    border-radius: 10px;
}

.student-profile .card .card-header .profile_img {
    width: 150px;
    height: 150px;
    object-fit: cover;
    margin: 10px auto;
    border: 10px solid #fff;
    border-radius: 50%;
}

.student-profile .card h3 {
    font-size: 20px;
    font-weight: 700;
}

.student-profile .card p {
    font-size: 16px;
    color: #fff;
}

.student-profile .table th,
.student-profile .table td {
    font-size: 14px;
    padding: 5px 10px;
    color: #fff;
}
.mb-text{
	color:#fff !important;
}
</style>

 <div class="content-wrapper">
	  <div class="container-full">
		<!-- Content Header (Page header) -->
		 

		<!-- Main content -->
		<section class="content">
		  <div class="row">
		
<div class="col-12">
<div class="box bb-3 border-warning">
				  <div class="box-header">
					<h4 class="box-title">Student <strong>Search</strong></h4>
				  </div>

				  <div class="box-body">
				
		<form method="GET" action="{{ route('student.year.class.wise') }}">
			
			<div class="row">



<div class="col-md-4">

 		 <div class="form-group">
		<h5>Year <span class="text-danger"> </span></h5>
		<div class="controls">
	 <select name="year_id" required="" class="form-control">
			<option value="" selected="" disabled="">Select Year</option>
			 @foreach($years as $year)
 <option value="{{ $year->id }}" {{ (@$year_id == $year->id)? "selected":"" }} >{{ $year->name }}</option>
		 	@endforeach
			 
		</select>
	  </div>		 
	  </div>
	  
 			</div> <!-- End Col md 4 --> 



 			
 		<div class="col-md-4">

 		 <div class="form-group">
		<h5>Class <span class="text-danger"> </span></h5>
		<div class="controls">
	 <select name="class_id"  required="" class="form-control">
			<option value="" selected="" disabled="">Select Class</option>
			 @foreach($classes as $class)
			<option value="{{ $class->id }}" {{ (@$class_id == $class->id)? "selected":"" }}>{{ $class->name }}</option>
		 	@endforeach
			 
		</select>
	  </div>		 
	  </div>
	  
 			</div> <!-- End Col md 4 --> 


 			<div class="col-md-4" style="padding-top: 25px;">

 <input type="submit" class="btn btn-rounded btn-dark mb-5" name="search" value="Search">
	  
 			</div> <!-- End Col md 4 --> 

 

				
			</div><!--  end row --> 

		</form>
 
					 
				  </div>
				</div>
	</div> <!-- // end first col 12 -->


			 

			<div class="col-12">

			 <div class="box">
				<div class="box-header with-border">
				  <h3 class="box-title">Student List</h3>
	<a href="{{ route('student.registration.add') }}" style="float: right;" class="btn btn-rounded btn-success mb-5"> Add Student  </a>			  

				</div>
				<!-- /.box-header -->
				<div class="box-body">
					<div class="table-responsive">

	@if(!@search)					
	 <table id="example1" class="table table-bordered table-striped">
						<thead>
			<tr>
				<th width="5%">SL</th>  
				<th>Name</th>
				<th>ID No</th>
				<th>Roll</th>
				<th>Year</th>
				<th>Class</th>
				<th>Image</th>
				@if(Auth::user()->role == "Admin")
				<th>Code</th>
				 @endif
				<th>Action</th>
				<th>View</th>
				 
			</tr>
		</thead>
		<tbody>
			@foreach($allData as $key => $value )
			<tr>
				<td>{{ $key+1 }}</td>
				<td> {{ $value['student']['name'] }}</td>
				<td> {{ $value['student']['id_no'] }}</td>	
				<td> {{ $value->roll }}  </td>	
				<td> {{ $value['student_year']['name'] }}</td>	
				<td>  {{ $value['student_class']['name'] }}</td>	
				<td>
	 <img src="{{ (!empty($value['student']['image']))? url('upload/student_images/'.$value['student']['image']):url('upload/no_image.jpg') }}" style="width: 60px; width: 60px;"> 
				</td>	
				<td> {{ $value->year_id }}</td>				 
				<td>
					<a title="Edit" href="{{ route('student.registration.edit',$value->student_id) }}" class="btn btn-info"> <i class="fa fa-edit"></i> </a>
					<a title="Promotion" href="{{ route('student.registration.promotion',$value->student_id) }}" class="btn btn-primary" ><i class="fa fa-check"></i></a>
				</td>
				<td>
					<a target="_blank" title="Details" href="#!" data-toggle="modal" data-target=".bs-example-modal-lg" class="btn btn-success" ><i class="fa fa-eye"></i></a>
					<a target="_blank" title="Print" href="{{ route('student.registration.details',$value->student_id) }}" class="btn btn-danger"  style="margin-top:5px;" ><i class="fa fa-print"></i></i></a>
				</td>
				 
			</tr>

			
			@endforeach
							 
						</tbody>
						<tfoot>
							 
						</tfoot>
					  </table>

			@else

	  <table id="example1" class="table table-bordered table-striped">
						<thead>
			<tr>
				<th width="5%">SL</th>  
				<th>Name</th>
				<th>ID No</th>
				<th>Roll</th>
				<th>Year</th>
				<th>Class</th>
				<th>Image</th>
				@if(Auth::user()->role == "Admin")
				<th>Code</th>
				 @endif
				<th >Action</th>
				<th>View</th>
				 
			</tr>
		</thead>
		<tbody>
			@foreach($allData as $key => $value )
			<tr>
				<td>{{ $key+1 }}</td>
				<td> {{ $value['student']['name'] }}</td>
				<td> {{ $value['student']['id_no'] }}</td>	
				<td> {{ $value->roll }}  </td>	
				<td> {{ $value['student_year']['name'] }}</td>	
				<td>  {{ $value['student_class']['name'] }}</td>	
				<td>
					<img src="{{ (!empty($value['student']['image']))? url('upload/student_images/'.$value['student']['image']):url('upload/no_image.jpg') }}" style="width: 60px; width: 60px;"> 
				</td>	
				<td> {{ $value->year_id }}</td>				 
				<td >
					<a title="Edit" href="{{ route('student.registration.edit',$value->student_id) }}" class="btn btn-info" > <i class="fa fa-edit"></i> </a>
					<a title="Promotion" href="{{ route('student.registration.promotion',$value->student_id) }}" class="btn btn-primary"  style="margin-top:5px;"><i class="fa fa-check"></i></a>
				</td>
				<td>
					<a target="_blank" title="Details" href="#!" data-toggle="modal" data-target=".bs-example-modal-lg" class="btn btn-success" ><i class="fa fa-eye"></i></a>
					<a target="_blank" title="Print" href="{{ route('student.registration.details',$value->student_id) }}" class="btn btn-danger"  style="margin-top:5px;" ><i class="fa fa-print"></i></i></a>
				</td>
				 
			</tr>
			{{-- <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myLargeModalLabel">Student Details</h4>
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							<h4>Student Registration Details</h4>
							<section>
								<div class="rt-container">
									  <div class="col-rt-12">
										  <div class="Scriptcontent">
										  
								  <!-- Student Profile -->
								  <div class="student-profile py-4">
									<div class="container">
									  <div class="row">
										<div class="col-lg-4">
										  <div class="card shadow-sm">
											<div class="card-header bg-transparent text-center">
											  <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
											  
											</div>
											<div class="card-body">
											  <p class="mb-0 mb-text"><strong class="pr-1">Student ID:</strong>321000001</p>
											  <p class="mb-0 mb-text"><strong class="pr-1">Class:</strong>{{ $value['student']['name'] }}4</p>
											  <p class="mb-0 mb-text"><strong class="pr-1">Section:</strong>A</p>
											</div>
										  </div>
										</div>
										<div class="col-lg-8">
										  <div class="card shadow-sm">
											<div class="card-header bg-transparent border-0">
											  <h3 class="mb-0 mb-text"><i class="fa fa-clone pr-1"></i>General Information</h3>
											</div>
											<div class="card-body pt-0">
											  <table class="table table-bordered">
												<tr>
												  <th width="30%">Roll</th>
												  <td width="2%">:</td>
												  <td>125</td>
												</tr>
												<tr>
												  <th width="30%">Academic Year	</th>
												  <td width="2%">:</td>
												  <td>2020</td>
												</tr>
												<tr>
												  <th width="30%">Gender</th>
												  <td width="2%">:</td>
												  <td>Male</td>
												</tr>
												<tr>
												  <th width="30%">Religion</th>
												  <td width="2%">:</td>
												  <td>Group</td>
												</tr>
												<tr>
												  <th width="30%">blood</th>
												  <td width="2%">:</td>
												  <td>B+</td>
												</tr>
											  </table>
											</div>
										  </div>
											<div style="height: 26px"></div>
										  <div class="card shadow-sm">
											<div class="card-header bg-transparent border-0">
											  <h3 class="mb-0 mb-text"><i class="fa fa-clone pr-1"></i>Other Information</h3>
											</div>
											<div class="card-body pt-0">
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
											</div>
										  </div>
										</div>
									  </div>
									</div>
								  </div>
								  <!-- partial -->
									   
										</div>
									</div>
								</div>
							</section>
								 
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-danger btn-rounded text-left" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div> --}}
		  <!-- /.modal -->
			@endforeach
							 
						</tbody>
						<tfoot>
							 
						</tfoot>
					  </table>


			@endif



					</div>
				</div>
				<!-- /.box-body -->
			  </div>
			  <!-- /.box -->

			       
			</div>
			<!-- /.col -->
		  </div>
		  <!-- /.row -->
		</section>
		<!-- /.content -->
	  
	  </div>
  </div>

  <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="myLargeModalLabel">Student Details</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
			<div class="modal-body">
				<h4>Student Registration Details</h4>
				<section>
					<div class="rt-container">
						  <div class="col-rt-12">
							  <div class="Scriptcontent">
							  
					  <!-- Student Profile -->
					  <div class="student-profile py-4">
						<div class="container">
						  <div class="row">
							<div class="col-lg-4">
							  <div class="card shadow-sm">
								<div class="card-header bg-transparent text-center">
								  <img class="profile_img" src="https://source.unsplash.com/600x300/?student" alt="student dp">
								  
								</div>
								<div class="card-body">
								  <p class="mb-0 mb-text"><strong class="pr-1">Student ID:</strong>321000001</p>
								  <p class="mb-0 mb-text"><strong class="pr-1">Class:</strong>4</p>
								   {{-- {{ $value['student']['name'] }} --}}
								  <p class="mb-0 mb-text"><strong class="pr-1">Section:</strong>A</p>
								</div>
							  </div>
							</div>
							<div class="col-lg-8">
							  <div class="card shadow-sm">
								<div class="card-header bg-transparent border-0">
								  <h3 class="mb-0 mb-text"><i class="fa fa-clone pr-1"></i>General Information</h3>
								</div>
								<div class="card-body pt-0">
								  <table class="table table-bordered">
									<tr>
									  <th width="30%">Roll</th>
									  <td width="2%">:</td>
									  <td>125</td>
									</tr>
									<tr>
									  <th width="30%">Academic Year	</th>
									  <td width="2%">:</td>
									  <td>2020</td>
									</tr>
									<tr>
									  <th width="30%">Gender</th>
									  <td width="2%">:</td>
									  <td>Male</td>
									</tr>
									<tr>
									  <th width="30%">Religion</th>
									  <td width="2%">:</td>
									  <td>Group</td>
									</tr>
									<tr>
									  <th width="30%">blood</th>
									  <td width="2%">:</td>
									  <td>B+</td>
									</tr>
								  </table>
								</div>
							  </div>
								<div style="height: 26px"></div>
							  <div class="card shadow-sm">
								<div class="card-header bg-transparent border-0">
								  <h3 class="mb-0 mb-text"><i class="fa fa-clone pr-1"></i>Other Information</h3>
								</div>
								<div class="card-body pt-0">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
								</div>
							  </div>
							</div>
						  </div>
						</div>
					  </div>
					  <!-- partial -->
						   
							</div>
						</div>
					</div>
				</section>
					 
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger btn-rounded text-left" data-dismiss="modal">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>



@endsection
