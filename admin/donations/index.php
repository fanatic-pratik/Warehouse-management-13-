<?php if($_settings->chk_flashdata('success')): ?>
<script>
	alert_toast("<?php echo $_settings->flashdata('success') ?>",'success')
</script>
<?php endif;

$sql = "SELECT a.*, b.email from tbl_donation a JOIN customer_list b ON a.user_id = b.id";
$d_res = $conn->query($sql);
$donations = $d_res->fetch_all(MYSQLI_ASSOC);


?>
<style>
	.inquiry-logo{
		width:3em;
		height:3em;
		object-fit:cover;
		object-position:center center;
	}
</style>
<div class="card card-outline rounded-0 card-dark">
	<div class="card-header">
		<h3 class="card-title">List of Donations</h3>
	</div>
	<div class="card-body">
        <div class="container-fluid">
			<table class="table table-hover table-striped table-bordered" id="list">
				<colgroup>
					<col width="10%">
					<col width="30%">
					<col width="30%">
					<col width="30%">
				</colgroup>
				<thead>
					<tr>
						<th>#</th>
						<th>Donation Amt</th>
						<th>Date</th>
						<th>User email</th>
					</tr>
				</thead>
				<tbody>
                        <?php 
                            $sl = 0;
                            foreach ($donations as $key => $value) { ?>
						<tr>
							<td class="text-center"><?php echo ++$sl; ?></td>
							<td><?php echo $value['donation'] ?></td>
							<td><?php echo date("Y-m-d",strtotime($value['date'])) ?></td>
							<td><p class="mb-0 truncate-1"><?php echo ($value['email']) ?></p></td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		$('.delete_data').click(function(){
			_conf("Are you sure to delete this Inquiry permanently?","delete_inquiry",[$(this).attr('data-id')])
		})
		$('.table').dataTable({
			columnDefs: [
					{ orderable: false, targets: [6] }
			],
			order:[0,'asc']
		});
		$('.dataTable td,.dataTable th').addClass('py-1 px-2 align-middle')
	})
	function delete_inquiry($id){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_inquiry",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.reload();
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>