class Comment < ApplicationRecord
  belongs_to :blog            #tweetsテーブルとのアソシエーション
  belongs_to :user                #usersテーブルとのアソシエーション
end
