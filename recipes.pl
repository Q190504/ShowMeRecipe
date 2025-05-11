% The predicate `suggest_recipe/2` takes a list of ingredients and suggests a recipe that can be made with those ingredients.
suggest_recipe(Ingredients, Recipe) :-
recipe(Recipe, Required),
subset(Required, Ingredients)

% The predicate `recipe/2` defines the recipes and their required ingredients.
recipe('Salad Rau Trộn', ['rau thơm', 'dưa leo', 'cà chua']).
recipe('Trứng Chiên', ['trứng gà', 'hành lá']).
recipe('Gà Rán', ['thịt gà', 'bột mì', 'bột bắp']).
recipe('Bún Chả', ['thịt heo', 'bún', 'rau sống', 'nước mắm', 'tỏi', 'ớt']).
recipe('Cơm Chiên Hải Sản', ['gạo', 'tôm', 'mực', 'trứng gà', 'hành lá']).
recipe('Mì Xào Hải Sản', ['mì', 'tôm', 'mực', 'rau cải', 'hành lá', 'tỏi']).
recipe('Lẩu Thái', ['tôm', 'mực', 'thịt bò', 'nấm', 'rau thơm', 'sả', 'lá chanh']).
recipe('Phở Bò', ['thịt bò', 'bánh phở', 'hành lá', 'rau thơm', 'quế', 'sả', 'gừng', 'hoa hồi', 'nước mắm']).
recipe('Phở Gà', ['thịt gà', 'bánh phở', 'hành lá', 'rau thơm', 'quế', 'sả', 'gừng', 'hoa hồi', 'nước mắm']).
recipe('Bún Bò Huế', ['thịt bò', 'giò heo', 'bún', 'sả', 'ớt', 'rau thơm', 'hành lá', 'mắm ruốc']).
recipe('Bún Riêu Cua', ['cua đồng', 'bún', 'cà chua', 'đậu hũ', 'rau thơm', 'hành lá', 'mắm tôm']).
recipe('Bún Thịt Nướng', ['thịt heo', 'bún', 'rau sống', 'hành phi', 'nước mắm', 'đậu phộng']).
recipe('Bún Mắm', ['bún', 'cá lóc', 'tôm', 'mắm cá', 'rau sống', 'hành lá']).
recipe('Bún Ốc', ['ốc bươu', 'bún', 'cà chua', 'rau thơm', 'hành lá']).
recipe('Bún Măng Vịt', ['thịt vịt', 'bún', 'măng', 'hành lá', 'rau thơm']).
recipe('Bún Thang', ['thịt gà', 'chả lụa', 'trứng', 'bún', 'rau thơm', 'hành lá']).
recipe('Bún Mọc', ['mọc', 'bún', 'hành lá', 'rau thơm']).
recipe('Bún Bung', ['sườn heo', 'bún', 'rau thơm', 'hành lá']).
recipe('Bún Cá', ['cá lóc', 'bún', 'rau thơm', 'hành lá']).
recipe('Bún Chả Cá', ['chả cá', 'bún', 'rau thơm', 'hành lá']).
recipe('Bún Đậu Mắm Tôm', ['bún', 'đậu hũ', 'mắm tôm', 'rau sống', 'chả cốm']).
recipe('Bún Thịt Nướng Chả Giò', ['thịt heo', 'chả giò', 'bún', 'rau sống', 'nước mắm']).
recipe('Bún Mắm Nêm', ['bún', 'thịt heo', 'mắm nem', 'rau sống', 'đậu phộng']).
recipe('Bún Sườn', ['sườn', 'bún', 'rau thơm', 'hành lá']).
recipe('Bún Thịt Nướng Tôm', ['thịt heo', 'tôm', 'bún', 'rau sống', 'nước mắm']).
recipe('Bún Thịt Nướng Bò Lá Lốt', ['thịt bò', 'lá lốt', 'bún', 'rau sống', 'nước mắm']).
recipe('Bún Thịt Nướng Nem Nướng', ['thịt heo', 'nem nướng', 'bún', 'rau sống', 'nước mắm']).
recipe('Bún Thịt Nướng Chả Lụa', ['thịt heo', 'chả lụa', 'bún', 'rau sống', 'nước mắm']).
recipe('Bún Thịt Nướng Chả Cốm', ['thịt heo', 'chả cốm', 'bún', 'rau sống', 'nước mắm']).
recipe('Bún Thịt Nướng Nem Chua', ['thịt heo', 'nem chua', 'bún', 'rau sống', 'nước mắm']).
recipe('Bún Thịt Nướng Nem Rán', ['thịt heo', 'nem rán', 'bún', 'rau sống', 'nước mắm']).
recipe('Gỏi Cuốn', ['bánh tráng', 'tôm', 'thịt heo', 'bún', 'rau sống', 'nước mắm']).
recipe('Bánh Mì Thịt', ['bánh mì', 'thịt nguội', 'dưa chua', 'rau mùi', 'ớt', 'nước tương']).
recipe('Cá Kho Tộ', ['cá lóc', 'nước mắm', 'đường', 'tiêu', 'hành lá', 'tỏi']).
recipe('Canh Chua Cá', ['cá lóc', 'cà chua', 'dưa chua', 'rau thơm', 'me', 'ớt']).
recipe('Bò Lúc Lắc', ['thịt bò', 'tỏi', 'hành lá', 'rau sống', 'nước tương', 'đường']).
recipe('Chả Giò', ['bánh tráng', 'thịt heo', 'miến', 'nấm mèo', 'hành lá', 'trứng']).
recipe('Bánh Xèo', ['bột gạo', 'nước dừa', 'thịt heo', 'tôm', 'giá', 'hành lá']).
recipe('Hủ Tiếu', ['hủ tiếu', 'thịt heo', 'tôm', 'mực', 'rau thơm', 'hành lá']).
recipe('Bánh Cuốn', ['bột gạo', 'thịt heo', 'nấm mèo', 'hành phi', 'rau thơm', 'nước mắm']).
recipe('Bánh Bao', ['bột mì', 'thịt heo', 'trứng cút', 'nấm mèo', 'hành lá']).
recipe('Cháo Gà', ['thịt gà', 'gạo', 'hành lá', 'rau thơm', 'nước mắm', 'tiêu']).
recipe('Xôi Gà', ['gạo nếp', 'thịt gà', 'hành phi', 'rau thơm', 'nước mắm']).
recipe('Bánh Chưng', ['gạo nếp', 'thịt heo', 'đậu xanh', 'lá dong', 'hành lá']).
recipe('Bánh Tét', ['gạo nếp', 'thịt heo', 'đậu xanh', 'lá chuối', 'hành lá']).
recipe('Thịt Kho Trứng', ['thịt heo', 'trứng', 'nước dừa', 'nước mắm', 'đường', 'tiêu']).
recipe('Bánh Canh Cua', ['bánh canh', 'cua', 'hành lá', 'rau thơm', 'nước mắm']).
recipe('Lẩu Mắm', ['cá lóc', 'mắm cá', 'rau thơm', 'cà tím', 'ớt', 'sả']).
recipe('Cà Ri Gà', ['thịt gà', 'khoai tây', 'cà rốt', 'nước dừa', 'bột cà ri', 'hành lá']).
recipe('Bánh Bột Lọc', ['bột năng', 'tôm', 'thịt heo', 'hành phi', 'nước mắm']).
recipe('Bánh Bèo', ['bột gạo', 'tôm', 'hành phi', 'nước mắm', 'đậu phộng']).
recipe('Bánh It Trần', ['bột nếp', 'thịt heo', 'tôm', 'hành phi', 'nước mắm']).
recipe('Bánh Khoai', ['bột gạo', 'tôm', 'thịt heo', 'giá', 'rau thơm', 'nước mắm']).
recipe('Bánh Đa Cua', ['bánh đa', 'cua', 'rau muống', 'hành lá', 'rau thơm']).
recipe('Bánh Gai', ['bột gạo', 'lá gai', 'đậu xanh', 'dừa', 'đường']).
recipe('Bánh Trôi', ['bột nếp', 'đường', 'đậu xanh', 'hành phi']).
recipe('Bánh Rán', ['bột nếp', 'đậu xanh', 'đường', 'mè trắng']).
recipe('Bánh Pate Sò', ['bột mì', 'pate', 'thịt heo', 'hành lá']).
recipe('Bánh Da Lòn', ['bột gạo', 'bột năng', 'đường', 'nước dừa', 'lá dứa']).
recipe('Bánh Khoai Mì', ['khoai mì', 'đường', 'nước dừa', 'mè trắng']).
recipe('Bánh Chuối', ['chuối sứ', 'bột gạo', 'đường', 'nước dừa']).
recipe('Bánh Flan', ['trứng', 'sữa', 'đường', 'vanilla']).
recipe('Chè Ba Màu', ['đậu đỏ', 'đậu xanh', 'đậu đen', 'nước dừa', 'đường']).
recipe('Chè Thái', ['trái cây', 'thạch', 'nước dừa', 'đường']).
recipe('Chè Trôi Nước', ['bột nếp', 'đậu xanh', 'đường', 'gừng', 'nước dừa']).
recipe('Chè Đậu Trắng', ['đậu trắng', 'nước dừa', 'đường', 'muối']).
recipe('Chè Bắp', ['bắp mỹ', 'nước dừa', 'đường', 'bột năng']).
recipe('Chè Khoai Môn', ['khoai môn', 'nước dừa', 'đường', 'bột năng']).
recipe('Chè Khoai Lang', ['khoai lang', 'nước dừa', 'đường', 'bột năng']).
recipe('Chè Hạt Sen', ['hạt sen', 'đường', 'nước']).
recipe('Chè Đậu Xanh', ['đậu xanh', 'đường', 'nước', 'muối']).
recipe('Chè Đậu Đen', ['đậu đen', 'đường', 'nước', 'muối']).
recipe('Chè Đậu Đỏ', ['đậu đỏ', 'đường', 'nước', 'muối']).
recipe('Chè Đậu Nành', ['đậu nành', 'đường', 'nước', 'muối']).
recipe('Chè Đậu Phộng', ['đậu phộng', 'đường', 'nước', 'muối']).
recipe('Cơm Tấm', ['gạo', 'sườn heo', 'trứng gà', 'dưa chua', 'nước mắm']).
recipe('Hủ Tiếu Nam Vang', ['hủ tiếu', 'thịt heo', 'tôm', 'mực', 'rau thơm', 'hành phi']).
recipe('Lẩu Bò', ['thịt bò', 'rau', 'nấm', 'sả', 'nước', 'miến']).
recipe('Bún Bò Nam Bộ', ['bún', 'thịt bò', 'rau thơm', 'heo', 'nước mắm', 'chua']).
recipe('Canh Khoai Mỡ', ['khoai mỡ', 'thịt heo', 'hành lá', 'muối', 'nước mắm']).
recipe('Bánh Mì Pate', ['bánh mì', 'pate', 'thịt nguội', 'dưa chua', 'rau', 'ớt']).
recipe('Cháo Tôm', ['tôm', 'gạo', 'rau thơm', 'hành lá', 'nước mắm']).
recipe('Xôi Xéo', ['gạo nếp', 'thịt heo', 'đường', 'rau thơm', 'đậu phộng']).
recipe('Cháo Đậu Xanh', ['đậu xanh', 'gạo', 'nước dừa', 'đường', 'tiêu']).
recipe('Cà Ri Chay', ['rau', 'khoai tây', 'cà rốt', 'bột cà ri', 'nước dừa', 'rau thơm']).
recipe('Bánh Mì Xíu Mại', ['bánh mì', 'thịt heo', 'rau thơm', 'dưa chua', 'ớt', 'nước tương']).
recipe('Mì Xào Giòn', ['mì', 'thịt heo', 'rau cải', 'đậu hũ', 'nước tương']).
recipe('Cháo Cá', ['cá lóc', 'gạo', 'hành lá', 'rau thơm', 'nước mắm']).
recipe('Bún Nước Lèo', ['bún', 'rau', 'thịt heo', 'tôm', 'rau sống', 'nước mắm']).
recipe('Chả Lụa', ['thịt heo', 'bột mì', 'rau', 'nước mắm', 'dưa chua', 'ớt']).
recipe('Chè Chuối', ['chuối sứ', 'nước dừa', 'đậu xanh', 'đường', 'sữa đặc']).
recipe('Cơm Gà', ['gạo', 'thịt gà', 'hành lá', 'rau thơm', 'nước mắm']).
recipe('Canh Rong Biển', ['rong biển', 'thịt gà', 'rau thơm', 'đường', 'nước mắm']).
recipe('Bánh Cốm', ['cốm khô', 'đậu xanh', 'bột nếp', 'đường', 'dầu ăn', 'lá dứa']).
recipe('Bánh Đậu Xanh', ['đậu xanh', 'đường', 'bột gạo', 'nước dừa', 'gừng']).