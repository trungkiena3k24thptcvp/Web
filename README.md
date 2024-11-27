# WEBSITE BÁN HÀNG - 23021589 Nguyễn Trung Kiên Edition
## Giới Thiệu: Website bán hàng
Website hỗ trợ bán hàng và quản lý bán hàng.
 - [1. Hướng dẫn sử dụng](#1-hướng-dẫn-sử-dụng)
 - [2. Các thành phần](#2-các-thành-phần)
 - [a. Các trang web chính:](#các-trang-web-chính)
 - [b. Các bảng database:](#a-các-bảng-database)
## 1. Hướng dẫn sử dụng
- Đầu tiên bạn cần download source code từ trang github của mình nhấn vào download zip như hình bên dưới:
  ![image](https://github.com/user-attachments/assets/4ab236fa-ee80-444f-97a6-fa631272e0c0)
- Sau khi tải thành công, bạn cần import file web_db.sql lên xampp hoặc workbench.
- Bạn cần điều hướng đến thư mục chứa source code và khởi tạo cổng để chạy trang web.
VD: cd /Users/macos/Desktop/workspace/Web (Đầu tiên tôi điều hướng đến thư mục chứa code của tôi)
    php -S localhost:8000 (Sau đó cho trang web chạy trên cổng 8000) 
- Bước tiếp theo, bạn cần truy cập CSDL và tạo tài khoản admin cho mình để có thể truy cập trang web cho admin.
  Truy cập CSDL vào bảng admins và tạo cho mình tài khoản. Điền các cột như yêu cầu và cột type bạn có thể để role là admin hoặc staff.
- Sau đó truy cập localhost:8000/quantri/login.php để đăng nhập (Thay đổi cổng 8000 thành cổng mà bạn chạy trang web).










