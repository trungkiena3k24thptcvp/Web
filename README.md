# WEBSITE BÁN THIẾT BỊ CÔNG NGHỆ - 23021589 Nguyễn Trung Kiên Edition
## Giới Thiệu: Website bán thiết bị công nghệ
Website hỗ trợ bán hàng và quản lý bán hàng.
 - [1. Hướng dẫn sử dụng](#1-hướng-dẫn-sử-dụng)
 - [2. Các trang Web](#2-các-trang-web)
 - [3. Các bảng database và chức năng](#3-các-thành-phần)
 - [4. Các tài liệu tham khảo](#4-các-tài-liệu-tham-khảo)
 - [5. Một số tính năng chưa phát triển của trang web](#5-một-số-tính-năng-chưa-phát-triển-của-trang-web)
## 1. Hướng dẫn sử dụng
- Đầu tiên bạn cần download source code từ trang github của mình nhấn vào download zip như hình bên dưới:
  ![image](https://github.com/user-attachments/assets/4ab236fa-ee80-444f-97a6-fa631272e0c0)
- Sau khi tải thành công, bạn cần import file web_db.sql lên xampp hoặc workbench.
- Bạn cần điều hướng đến thư mục chứa source code và khởi tạo cổng để chạy trang web.
  + VD: cd /Users/macos/Desktop/workspace/Web (Đầu tiên tôi điều hướng đến thư mục chứa code của tôi);
  + php -S localhost:8000 (Sau đó cho trang web chạy trên cổng 8000) (Đối với macOS mở terminate lên và làm theo hướng dẫn, người dùng tự điều chỉnh theo phiên bản windows)
- Bước tiếp theo, bạn cần truy cập CSDL và tạo tài khoản admin cho mình để có thể truy cập trang web cho admin.
  + Truy cập CSDL vào bảng admins và tạo cho mình tài khoản. Điền các cột như yêu cầu và cột type bạn có thể để role là admin hoặc staff.
- Sau đó truy cập localhost:8000/quantri/login.php để đăng nhập (Thay đổi cổng 8000 thành cổng mà bạn chạy trang web). Nhập email và mật khẩu theo thông tin ở trên CSDL mà bạn vừa tạo.
- Sau khi đăng nhập bạn sẽ được chuyển đến trang chủ của Web quản lý như hình: 
![image](https://github.com/user-attachments/assets/9def6f63-e72e-43a7-9ecd-ff63adcc0cc4)
## 2. Các trang web 
- Có 2 trang web sau:
  + Thứ nhất là trang web quản lý bán hàng như trên. Trong trang web có các tính năng như là quản lý các thương hiệu, danh mục sản phẩm, sản phẩm, danh mục tin tức, tin tức, đơn hàng với các thao tác như Liệt kê và thêm mới (Chi tiết bạn hãy thử trên website). Lưu ý với những phần thêm ảnh file ảnh của bạn không nên chứa dấu space vì khi chứa space rất có thể khi đọc file ảnh có thể bị lỗi dẫn đến không thể load file lên trang web.
  + Thứ hai là trang web dành cho người mua hàng (trang web bán hàng). Bạn nhập lên thanh tìm kiếm của trình duyệt là localhost:8000/index.php. Sau đó sẽ ra trang web như hình: 
![image](https://github.com/user-attachments/assets/d2a79884-40c8-4137-b49e-acd82a05cab7)
  + Trong trang chủ web người mua hàng có thể nhìn thấy các thông tin như các sản phẩm hot của shop, và các tin tức mới nhất của shop như là chương trình giảm giá hay những mẫu đồ công nghệ mới nhất cập bến shop hoặc danh mục sản phẩm. 
  + Khi muốn mua hàng khác sẽ bấm vào chữ shop ở góc trên cùng của màn hình. Sau đó lựa chọn sản phẩm như hình: 
![image](https://github.com/user-attachments/assets/4f1f3180-4a56-4a8c-9aa0-4b9109bf2ede)
  + Bạn sẽ nhấn vào sản phẩm bạn muốn mua (Nhấn vào tên sản phẩm không nhấn vào ảnh) sau đó sẽ hiện ra như hình (VD với sản phẩm Macbook pro m1) 
![image](https://github.com/user-attachments/assets/4ebb8599-006a-4b63-bfbc-03268aaaecbe)
  + Bạn nhấn vào thêm vào giỏ hàng. Khi muốn thanh toán bạn hãy nhấn vào biểu tượng giỏ hàng ở góc phải màn hình và làm theo hướng dẫn để thanh toán.
## 3. Các bảng database
- Gồm 8 bảng database:
  + admins: Dùng để lưu trữ thông tin tài khoản đăng nhập để quản lý website bán hàng và các thông tin cơ bản về admin.
  + brands: Dùng để quản lý thông tin về các thương hiệu của shop.
  + categories: Dùng để quản lý các danh mục sản phẩm có sẵn của shop như máy tính, điện thoại, tv, máy tính bảng, các mặt hàng đồ công nghệ, ...
  + news: Dùng để quản lý các tin tức về shop như chương trình giảm giá hay sản phẩm mới.
  + newcategories: Dùng để quản lý các danh mục tin tức để dễ dàng phân loại tin tức như tin tức về sản phẩm hay tin tức về chương trình ưu đãi.
  + orders: Dùng để lưu trữ thông tin của các khách hàng orders.
  + order_details: Dùng để quản lý các sản phẩm có trong các đơn đặt hàng
  + products: Dùng để quản lý các sản phẩm có trong shop.
- Dưới đây là hình ảnh quan hệ giữa các bảng với nhau: 
![image](https://github.com/user-attachments/assets/d34ab59f-c1c5-46c8-abea-5b1cab4c38b6)
## 4. Các tài liệu tham khảo: 
- Chatgpt.
- Start Bootstrap.
- Theme wagon.
- Youtube.
## 5. Một số tính năng chưa phát triển của trang web
- Tính năng tìm sản phẩm trong website bán hàng.
- Quản lý doanh thu của shop.
Cảm ơn các bạn đã xem project website của mình. Nếu có thắc mắc hãy liên hệ SĐT: 0846010805 hoặc gmail: 23021589@vnu.edu.vn




















 
  















