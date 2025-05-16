<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title><?php if (isset($title)) {echo "ODRS - ".$title; } else {echo "SMCC";} ?></title>

    <link href="../public/css/bootstrap.min.css" rel="stylesheet">
    <link href="../public/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- iCheck -->
    <link href="../public/css/plugins/iCheck/custom.css" rel="stylesheet">
    <!-- Toastr style -->
    <link href="../public/css/plugins/toastr/toastr.min.css" rel="stylesheet">
    <!-- Sweet Alert -->
    <link href="../public/css/plugins/sweetalert2/sweetalert2.min.css" rel="stylesheet">
    <!-- Datatable -->
    <link href="../public/css/plugins/dataTables/datatables.min.css" rel="stylesheet">

	<link href="../public/css/plugins/ladda/ladda-themeless.min.css" rel="stylesheet">

    <link href="../public/css/animate.css" rel="stylesheet">
    <link href="../public/css/style.css" rel="stylesheet">
	<link href="../public/img/logo.png" rel="icon" type="image/png" sizes="180x180">
    
    <style>
        #parent {
            display: flex;
        }
        .children {
            align-items: stretch;
        }
 
        .header {
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            margin-bottom: 10px; /* Reduced space */
        }
        .logo {
            width: 80px; /* Adjust size as needed */
            height: 80px;
            margin-top: -50px;
            margin-left: -10px; /* Less space */
        }
        .header-content {
            max-width: 400px; /* Keeps text compact */
            margin: 0;
            padding: 0;
        }
    </style> 
</head>
