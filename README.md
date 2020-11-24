# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| name       | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :comments
- has_many :prototypes

## prototypes テーブル

| Column       | Type       | Options                      |
| ------------ | ---------- | ---------------------------- |
| title        | string     | null: false                  |
| catch_copy   | text       | null: false                  |
| concept      | text       | null: false                  |
| user         | references | foreign_key: true            |

### Association

- has_many :comments
- belongs_to :user

## comments テーブル

| Column       | Type       | Options                     |
| ------------ | ---------- | --------------------------- |
| text         | text       | null: false                 |
| user         | references | foreign_key: true           |
| prototype    | references | foreign_key: true           |

### Association

- belongs_to :prototype
- belongs_to :user

