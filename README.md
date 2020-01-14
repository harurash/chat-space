# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
## messageテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
## userテーブル

|Column|Type|Options|
|------|----|-------|
|pass|string|null: false,unique: true|
|name|string|null: false,unique: true,index: true|
|email|string|null: false,unique: true|


### Association
-  has_many :user_groups
-  has_many :groups, through: :users_groups
-  has_many :messages
## groupテーブル

|Column|Type|Options|
|------|----|-------|
|title|text|null: false|

### Association
-  has_many :user_groups
-  has_many :users, through: :user_groups
-  has_many :messages
## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
