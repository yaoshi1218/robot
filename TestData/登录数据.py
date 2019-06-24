# 用户成功

LIST__user_info_success = [{"username": "18175693696", "pwd": "12345","expected": "小蜜蜂"}]

# 错误数据
LIST__user_info_error = [{"id": '1', "username": "", "pwd": "", "expected": "请输入手机号"},
                         {"id": '2', "username": "12", "pwd": "111", "expected": "请输入正确的手机号"},
                         {"id": '3', "username": "18654321456", "pwd": "", "expected": "请输入密码"},
]

# 没有权限的数据
LIST__user_info_authorize = [{"id": '1', "username": "18654321456", "pwd": "12", "expected": "此账号没有经过授权，请联系管理员!"}]

