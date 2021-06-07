# アプリケーション名

| Column   |
| -------- |
| SABAKATU |

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages 
- has_many :Photos

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## Photos テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## fields テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| field_name | string | null: false |
| address    | string | null: false |
| link       | string | null: false |

## shops テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| shopname   | string | null: false |
| address    | string | null: false |
| link       | string | null: false |