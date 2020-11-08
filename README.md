# Website bán điện thoại di động online
### Hướng dẫn clone project laravel từ git về
- Clone project: **git clone tên_đường_dẫn_project**

- Sử dụng câu lệnh **cd Tên_thu_mục** đi tới thư mục chưa project mới clone về.

- Chạy câu lệnh trên terminal: **composer install**

- Copy file **.env.example** thành file **.env**

 + Đối với Window: **copy .env.example .env**

 + Đối với Ubuntu: **cp .env.example .env**

- Mở file **.env** thay đổi **DB_DATABASE, DB_USERNAME, DB_PASSWORD** cho phù hợp

- Chạy: **php artisan key:generate**

- Chạy: **php artisan migrate --seed**

- Chạy: **php artisan serve**

**Nhớ đổi đường dẫn localhost cho phù hợp với máy tính**

### Tài khoản admin để đăng nhập vào trang quản trị
- Tên tài khoản: phananhtai1
- Mật khẩu: 123456

### Tài khoản người dùng để đăng nhập vào trang người dùng
- Tên tài khoản: Nguyễn Ngọc Diễm
- Mật khẩu: 1234567
