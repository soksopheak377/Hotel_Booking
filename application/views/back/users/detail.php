<script type="text/javascript" src="<?php echo base_url('assets/js/jquery.validate.js'); ?>"></script>

<div class="col-lg-12 main-chart">
<div class="col-md-12">
            <h4> User Detail</h4>
    <div class="box box-info col-md-12 thumbnail">
        <!-- /.box-header -->
        <form class="form-horizontal row-border form_validation" id="form_validation" action="<?php echo base_url('users/save'); ?>" method="post">
            <fieldset disabled>
            <div class="box-body pad">  
                <div class="form-group">
                    <label class="col-md-2 control-label text-right">User Name <em>*</em> : </label>
                        <input type="hidden" value="<?php echo @$rows[0]->uid; ?>" name="user_id">
                    <div class="col-md-9">
                        <input name="username" class="form-control" type="text" value=" <?php echo @$rows[0]->uName; ?>" placeholder="Please enter user name"  data-rule-required="true" data-msg-required="Enter the type Name.">
                    </div>
                </div>
                <div class="form-group">
                  <label class="col-md-2 control-label text-right">E-Mail <em>*</em> : </label>
                    <div class="col-md-9">
                        <input name="email" class="form-control" type="email" value="<?php echo @$rows[0]->email; ?>" placeholder="Enter the email" data-rule-required="true" data-msg-required="Enter the email.">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label text-right">Phone <em>*</em> :</label>
                    <div class="col-md-9">
                        <input name="phone" class="form-control" type="text" value="<?php echo @$rows[0]->phone; ?>" placeholder="Please enter phone"  data-rule-required="true" data-msg-required="Enter the phone.">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label text-right">National ID <em>*</em> :</label>
                    <div class="col-md-9">
                        <input name="nationa_id" class="form-control" type="text" value="<?php echo @$rows[0]->national_ID; ?>" placeholder="Please enter national id"  data-rule-required="true" data-msg-required="Enter the  national id.">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 control-label text-right">Passport <em>*</em> :</label>
                    <div class="col-md-9">
                        <input name="passwort" class="form-control" type="text" value="<?php echo @$rows[0]->passport; ?>" placeholder="Please enter passport"  data-rule-required="true" data-msg-required="Enter the passport.">
                    </div>
                </div>
            </div>
            </fieldset>
                <div class="box-footer">
                    <div class="col-md-12">
                        <div class="col-md-1"></div>
                        <div class="col-md-11">
                          <a href="<?php echo base_url('users'); ?>" class="btn btn-primary"></i> Cancel</a>
                        </div>
                     </div>
                    <div class="col-md-12"></div>
                </div>
            </div>
        </form>
    <!-- /.box -->
    </div>
</div>
</div>
<!-- Row end -->
<script type="text/javascript">
    $(document).ready(function() {
    //Validation form
        $("#form_validation").validate();
    });

  </script>

