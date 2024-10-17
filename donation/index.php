<?php 
if($_settings->userdata('id') != '' && $_settings->userdata('id') != 2){
	$qry = $conn->query("SELECT * FROM `customer_list` where id = '{$_settings->userdata('id')}'");
	if($qry->num_rows > 0){
		foreach($qry->fetch_array() as $k => $v){
			if(!is_numeric($k)){
				$$k = $v;
			}
		}
	}
}else{
	echo "<script>alert('You dont have access for this page'); location.replace('./');</script>";
}

$user_id = $_settings->userdata('id');

$donationAmt = isset($_POST['donationAmt']) ? $_POST['donationAmt'] : 0;

if(isset($_POST['donate']) && $donationAmt > 0){
    $d_date = date('Y-m-d');

    $sql = "INSERT INTO tbl_donation( donation, user_id, date) 
            VALUES ('$donationAmt','$user_id','$d_date')";
    $conn->query($sql);

    $donationAmt = 0;
    unset($_POST['donate']);
} else {
	echo "<script>alert('Can't donate 0 Amount');</script>";
}

$sql = "SELECT * from tbl_donation WHERE user_id = $user_id";
$d_res = $conn->query($sql);
$donations = $d_res->fetch_all(MYSQLI_ASSOC);
?>
<style>
	img#cimg{
      height: 5em;
      width: 5em;
      object-fit: cover;
      border-radius: 100% 100%;
    }
</style>
<section class="py-3">
	<div class="container">
		<div class="content bg-gradient-dark py-5 px-3">
			<h4 class="">Donation</h4>
		</div>
		<div class="row mt-n3 justify-content-center">
			<div class="col-lg-10 col-md-11 col-sm-12 col-xs-12">
				<div class="card card-navy my-2 rounded-0">
					<div class="card-body rounded-0">
					<form id="register-form" method="post">
						<input type="hidden" name="id" value="<?= isset($id) ? $id : '' ?>">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
								<div class="form-group">
									<label for="donationAmt" class="control-label">Donation Amount</label>
									<input type="number" min="1" max="99999999" class="form-control form-control-sm rounded-0" reqiured="" name="donationAmt" id="donationAmt" value="<?= isset($donationAmt) ? $donationAmt : '' ?>">
								</div>
							</div>
                            <div class="col-4">
                                <button type="submit" name="donate" class="btn btn-primary btn-block mt-4">Donate</button>
                            </div>
                        </div>
					</form>
					
					</div>
					<!-- /.card-body -->
				</div>
			</div>
		</div>
	</div>
    <br>
    <br>
    <div class="container">
        <div class="content py-5 px-3 bg-gradient-dark">
            <h3><b>My Donations</b></h3>
        </div>
        <div class="row mt-n4 justify-content-center align-items-center flex-column">
            <div class="col-lg-11 col-md-11 col-sm-12 col-xs-12">
                <div class="card rounded-0 shadow">
                    <div class="card-body">
                        <div class="container-fluid">
                            <table class="table table-stripped table-bordered">
                                <colgroup>
                                    <col width="10%">
                                    <col width="40%">
                                    <col width="40%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th class="p-1 text-center">#</th>
                                        <th class="p-1 text-center">Donation Amt</th>
                                        <th class="p-1 text-center">Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php 
                                    $sl = 0;
                                    foreach ($donations as $key => $value) { ?>
                                        <tr>
                                            <td class="p-1 align-middle text-center"><?=++$sl?></td>
                                            <td class="p-1 align-middle text-center"><?=$value['donation']?></td>
                                            <td class="p-1 align-middle text-center"><?=$value['date']?></td>
                                        </tr>
                                        <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>