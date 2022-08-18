class User < ApplicationRecord
  # 验证邮箱
  validates :email, presence: true
end
