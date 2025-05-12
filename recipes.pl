% The predicate `suggest_recipe/2` takes a list of ingredients and suggests a recipe that can be made with those ingredients.
suggest_recipe(UserIngredients, dish(Name, UsedIngredients)) :-
    recipe(Name, RequiredIngredients),
    match_ingredients(RequiredIngredients, UserIngredients, UsedIngredients).

% Match required ingredients to user-provided ones, considering replacements
match_ingredients([], _, []).

match_ingredients([Required | Rest], UserIngredients, [Used | MatchedRest]) :-
    ( member(Required, UserIngredients) ->
        Used = Required
    ; replacement(Required, Alt), member(Alt, UserIngredients) ->
        Used = Alt
    ),
    match_ingredients(Rest, UserIngredients, MatchedRest).


% The predicate `recipe/2` defines the recipes and their required ingredients.
recipe('Salad Rau Tron', ['rau thom', 'dua leo', 'ca chua']).
recipe('Trung Chien', ['trung ga', 'hanh la', 'dau an', 'muoi']).
recipe('Ga Ran', ['thit ga', 'bot mi', 'bot bap']).
recipe('Bun Cha', ['thit heo', 'bun', 'rau song', 'nuoc mam', 'toi', 'ot']).
recipe('Com Chien Hai San', ['gao', 'tom', 'muc', 'trung ga', 'hanh la']).
recipe('Mi Xao Hai San', ['mi', 'tom', 'muc', 'rau cai', 'hanh la', 'toi']).
recipe('Lau Thai', ['tom', 'muc', 'thit bo', 'nam', 'rau thom', 'sa', 'la chanh']).
recipe('Pho Bo', ['thit bo', 'banh pho', 'hanh la', 'rau thom', 'que', 'sa', 'gung', 'hoa hoi', 'nuoc mam']).
recipe('Pho Ga', ['thit ga', 'banh pho', 'hanh la', 'rau thom', 'que', 'sa', 'gung', 'hoa hoi', 'nuoc mam']).
recipe('Bun Bo Hue', ['thit bo', 'gio heo', 'bun', 'sa', 'ot', 'rau thom', 'hanh la', 'mam ruoc']).
recipe('Bun Rieu Cua', ['cua dong', 'bun', 'ca chua', 'dau hu', 'rau thom', 'hanh la', 'mam tom']).
recipe('Bun Thit Nuong', ['thit heo', 'bun', 'rau song', 'hanh phi', 'nuoc mam', 'dau phong']).
recipe('Bun Mam', ['bun', 'ca loc', 'tom', 'mam ca', 'rau song', 'hanh la']).
recipe('Bun Oc', ['oc buou', 'bun', 'ca chua', 'rau thom', 'hanh la']).
recipe('Bun Mang Vit', ['thit vit', 'bun', 'mang', 'hanh la', 'rau thom']).
recipe('Bun Thang', ['thit ga', 'cha lua', 'trung ga', 'bun', 'rau thom', 'hanh la']).
recipe('Bun Moc', ['moc', 'bun', 'hanh la', 'rau thom']).
recipe('Bun Bung', ['suon heo', 'bun', 'rau thom', 'hanh la']).
recipe('Bun Ca', ['ca loc', 'bun', 'rau thom', 'hanh la']).
recipe('Bun Cha Ca', ['cha ca', 'bun', 'rau thom', 'hanh la']).
recipe('Bun Dau Mam Tom', ['bun', 'dau hu', 'mam tom', 'rau song', 'cha com']).
recipe('Bun Thit Nuong Cha Gio', ['thit heo', 'cha gio', 'bun', 'rau song', 'nuoc mam']).
recipe('Bun Mam Nem', ['bun', 'thit heo', 'mam nem', 'rau song', 'dau phong']).
recipe('Bun Suon', ['suon', 'bun', 'rau thom', 'hanh la']).
recipe('Bun Thit Nuong Tom', ['thit heo', 'tom', 'bun', 'rau song', 'nuoc mam']).
recipe('Bun Thit Nuong Bo La Lot', ['thit bo', 'la lot', 'bun', 'rau song', 'nuoc mam']).
recipe('Bun Thit Nuong Nem Nuong', ['thit heo', 'nem nuong', 'bun', 'rau song', 'nuoc mam']).
recipe('Goi Cuon', ['banh trang', 'tom', 'thit heo', 'bun', 'rau song', 'nuoc mam']).
recipe('Banh Mi Thit', ['banh mi', 'thit nguoi', 'dua chua', 'rau mui', 'ot', 'nuoc tuong']).
recipe('Ca Kho To', ['ca loc', 'nuoc mam', 'duong', 'tieu', 'hanh la', 'toi']).
recipe('Canh Chua Ca', ['ca loc', 'ca chua', 'dua chua', 'rau thom', 'me', 'ot']).
recipe('Bo Luc Lac', ['thit bo', 'toi', 'hanh la', 'rau song', 'nuoc tuong', 'duong']).
recipe('Cha Gio', ['banh trang', 'thit heo', 'mien', 'nam meo', 'hanh la', 'trung ga']).
recipe('Banh Xeo', ['bot gao', 'nuoc dua', 'thit heo', 'tom', 'gia', 'hanh la']).
recipe('Hu Tieu', ['hu tieu', 'thit heo', 'tom', 'muc', 'rau thom', 'hanh la']).
recipe('Banh Cuon', ['bot gao', 'thit heo', 'nam meo', 'hanh phi', 'rau thom', 'nuoc mam']).
recipe('Banh Bao', ['bot mi', 'thit heo', 'trung cut', 'nam meo', 'hanh la']).
recipe('Chao Ga', ['thit ga', 'gao', 'hanh la', 'rau thom', 'nuoc mam', 'tieu']).
recipe('Xoi Ga', ['gao nep', 'thit ga', 'hanh phi', 'rau thom', 'nuoc mam']).
recipe('Banh Chung', ['gao nep', 'thit heo', 'dau xanh', 'la dong', 'hanh la']).
recipe('Banh Tet', ['gao nep', 'thit heo', 'dau xanh', 'la chuoi', 'hanh la']).
recipe('Thit Kho Trung', ['thit heo', 'trung ga', 'nuoc dua', 'nuoc mam', 'duong', 'tieu']).
recipe('Banh Canh Cua', ['banh canh', 'cua', 'hanh la', 'rau thom', 'nuoc mam']).
recipe('Lau Mam', ['ca loc', 'mam ca', 'rau thom', 'ca tim', 'ot', 'sa']).
recipe('Ca Ri Ga', ['thit ga', 'khoai tay', 'ca rot', 'nuoc dua', 'bot ca ri', 'hanh la']).
recipe('Banh Bot Loc', ['bot nang', 'tom', 'thit heo', 'hanh phi', 'nuoc mam']).
recipe('Banh Beo', ['bot gao', 'tom', 'hanh phi', 'nuoc mam', 'dau phong']).
recipe('Banh It Tran', ['bot nep', 'thit heo', 'tom', 'hanh phi', 'nuoc mam']).
recipe('Banh Khoai', ['bot gao', 'tom', 'thit heo', 'gia', 'rau thom', 'nuoc mam']).
recipe('Banh Da Cua', ['banh da', 'cua', 'rau muong', 'hanh la', 'rau thom']).
recipe('Banh Gai', ['bot gao', 'la gai', 'dau xanh', 'dua', 'duong']).
recipe('Banh Troi', ['bot nep', 'duong', 'dau xanh', 'hanh phi']).
recipe('Banh Ran', ['bot nep', 'dau xanh', 'duong', 'me trang']).
recipe('Banh Pateso', ['bot mi', 'pate', 'thit heo', 'hanh la']).
recipe('Banh Da Lon', ['bot gao', 'bot nang', 'duong', 'nuoc dua', 'la dua']).
recipe('Banh Khoai Mi', ['khoai mi', 'duong', 'nuoc dua', 'me trang']).
recipe('Banh Chuoi', ['chuoi', 'bot gao', 'duong', 'nuoc dua']).
recipe('Banh Flan', ['trung ga', 'sua', 'duong', 'vanilla']).
recipe('Che Ba Mau', ['dau do', 'dau xanh', 'dau den', 'nuoc dua', 'duong']).
recipe('Che Troi Nuoc', ['bot nep', 'dau xanh', 'duong', 'gung', 'nuoc dua']).
recipe('Che Dau Trang', ['dau trang', 'nuoc dua', 'duong', 'muoi']).
recipe('Che Bap', ['bap my', 'nuoc dua', 'duong', 'bot nang']).
recipe('Che Khoai Mon', ['khoai mon', 'nuoc dua', 'duong', 'bot nang']).
recipe('Che Khoai Lang', ['khoai lang', 'nuoc dua', 'duong', 'bot nang']).
recipe('Che Hat Sen', ['hat sen', 'duong', 'nuoc']).
recipe('Che Dau Xanh', ['dau xanh', 'duong', 'nuoc', 'muoi']).
recipe('Che Dau Den', ['dau den', 'duong', 'nuoc', 'muoi']).
recipe('Che Dau Do', ['dau do', 'duong', 'nuoc', 'muoi']).
recipe('Che Dau Nanh', ['dau nanh', 'duong', 'nuoc', 'muoi']).
recipe('Che Dau Phong', ['dau phong', 'duong', 'nuoc', 'muoi']).
recipe('Com Tam', ['com tam', 'suon nuong', 'trung op la', 'dua chua', 'nuoc mam']).
recipe('Lau Bo', ['thit bo', 'rau thom', 'nam', 'sa', 'nuoc', 'mi']).
recipe('Bun Bo', ['bun', 'thit bo', 'rau thom', 'thit heo', 'nuoc mam', 'chua']).
recipe('Canh Khoai Muc', ['khoai muc', 'thit heo', 'hanh la', 'muoi', 'nuoc mam', 'rau thom']).
recipe('Banh Mi Pate', ['banh mi', 'pate', 'thit nguoi', 'dua chua', 'rau thom', 'ot']).
recipe('Chao Tom', ['tom', 'gao', 'rau thom', 'hanh la', 'nuoc mam']).
recipe('Xoi Xeo', ['gao nep', 'thit heo', 'duong', 'rau thom', 'dau phong']).
recipe('Goi Cuon Chay', ['banh trang', 'rau thom', 'mi', 'dua', 'gia', 'nuoc mam chay']).
recipe('Chao Dau Xanh', ['dau xanh', 'gao', 'nuoc dua', 'duong', 'tieu']).
recipe('Ca Ri Chay', ['rau thom', 'khoai tay', 'ca rot', 'bot ca ri', 'nuoc dua', 'rau thom']).
recipe('Banh Mi Xiu Mai', ['banh mi', 'xiu mai', 'rau thom', 'dua chua', 'ot', 'nuoc tuong']).
recipe('Mi Xao Gion', ['mi', 'thit heo', 'rau cai', 'dau hu', 'nuoc tuong']).
recipe('Chao Ca', ['ca loc', 'gao', 'hanh la', 'rau thom', 'nuoc mam']).
recipe('Bun Nuoc Leo', ['bun', 'rau thom', 'thit heo', 'tom', 'rau song', 'nuoc mam']).
recipe('Cha Lua', ['thit heo', 'bot mi', 'rau thom', 'nuoc mam', 'dua chua', 'ot']).
recipe('Che Chuoi', ['chuoi', 'nuoc dua', 'dau xanh', 'duong', 'sua dac']).
recipe('Com Ga', ['gao', 'thit ga', 'hanh la', 'rau thom', 'nuoc mam']).
recipe('Canh Rong Bien', ['rong bien', 'thit ga', 'rau thom', 'duong', 'nuoc mam']).
recipe('Banh Com', ['com kho', 'dau xanh', 'duong', 'bot nep', 'dau an', 'la dua']).
recipe('Banh Dau Xanh', ['dau xanh', 'duong', 'bot gao', 'nuoc dua', 'gung']).

% The predicate `replacement/2` defines the alternative ingredients that can be used in place of the original ones.
replacement('nuoc mam', 'nuoc tuong').
replacement('com tam', 'gao').
replacement('rau song', 'rau thom').
replacement('dua leo', 'ca rot').
replacement('trung ga', 'trung cut').