# テーブル設計


## users テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| nickname           | string     | null: false                    |
| email              | string     | null: false                    |
| password           | string     | null: false                    |
| encrypted_password | string     | null: false                    |
| first_name1        | string     | null: false                    |
| last_name1         | string     | null: false                    |
| first_name2        | string     | null: false                    |
| last_name2         | string     | null: false                    |
| birth_date         | date       | null: false,                   |

### Association
- has_many :items
- has_many :orders
- has_one :birth_date


## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| title                  | string     | null: false                    |
| price                  | integer    | null: false                    |
| text                   | text       | null: false                    |
| tag_category_id        | integer    | null: false, foreign_key: true |
| tag_state_id           | integer    | null: false, foreign_key: true |
| tag_address_id         | integer    | null: false, foreign_key: true |
| tag_delivery_charge_id | integer    | null: false, foreign_key: true |
| tag_delivery_day_id    | integer    | null: false, foreign_key: true |
| user                   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :consumer
- has_one :tag_category
- has_one :tag_state
- has_one :tag_delivery_day
- has_one :tag_address
- has_one :tag_delivery_charge

## consumers テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| postal_code    | string     | null: false                    |
| tag_address_id | integer    | null: false, foreign_key: true |
| city           | string     | null: false                    |
| address        | string     | null: false                    |
| building_name  | string     |                                |
| tel_number     | string     | null: false                    |

### Association

- has_one :order
- belongs_to :item
- has_one :tag_address

## ordersテーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user_id       | integer    | null: false, foreign_key: true |
| item_id       | integer    | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user




# プルダウン

## birth_dates テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| birth_date | string     | null: false                    |

### Association
- belongs_to :user




## tag_categories テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| tag_category | string     | null: false                    |

### Association

- belongs_to :item


## tag_states テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| tag_state    | string     | null: false                    |

### Association

- belongs_to :item


## tag_delivery_charges テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| tag_delivery_charge   | string     | null: false                    |

### Association

- belongs_to :item


## tag_delivery_days テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| tag_delivery_day      | string     | null: false                    |

### Association

- belongs_to :item

## tag_addresses テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| tag_address           | string     | null: false                    |

### Association

- belongs_to :item
- belongs_to :consumer

