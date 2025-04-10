<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #f8f9fa; padding: 20px;">

<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="card shadow-lg" style="width: 100%; max-width: 500px; border-radius: 15px;">
        <div class="card-body p-4">
            <p>Chào bạn,</p>
            <p>Bạn đã yêu cầu đặt lại mật khẩu. Nhấp vào liên kết bên dưới để đặt lại mật khẩu:</p>

            <div class="text-center my-4">
                <a href="{{ url('/reset-password/' . $token) }}" class="btn btn-primary btn-lg" style="border-radius: 10px;">Đặt lại mật khẩu</a>
            </div>

            <p>Nếu bạn không yêu cầu điều này, vui lòng bỏ qua email này.</p>

            <hr>
            <p class="text-muted text-center" style="font-size: 14px;">&copy; 2025 - {{ config('app.name') }}. All rights reserved.</p>
        </div>
    </div>
</div>

</body>
</html>
