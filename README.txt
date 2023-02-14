B1: Mở SQL Server lên và import file MHHHDL_DoAnQLTV.sql vào
B2: Mở file PhanMemQLTV.sln lên
B3: Chuột phải vào file "frmConfig.cs" chọn "View code"
B4: Chỉnh lại SERVER NAME theo máy đang dùng 
	Ví dụ trong bài có day: string chuoiKetNoi = "server =" + @"NDA\SQLEXPRESS; database = MHHDL_DoAnQLTV; integrated security = true";
	
	=> Cần thay "NDA\SQLEXPRESS" thành tên SERVER NAME trên máy
B5: Chạy project như thường!