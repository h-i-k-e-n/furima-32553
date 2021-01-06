


- belongs_to :user
- has_one :consumer
- has_one :tag_category
- has_one :tag_state
- has_one :tag_delivery_day
- has_one :tag_address
- has_one :tag_delivery_charge

## consumers テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | references | null: false                    |
| tag_address   | references | null: false, foreign_key: true |
| city          | string     | null: false                    |
| address       | string     | null: false                    |
| building_name | string     | null: false                    |
| tel_number    | string     | null: false                    |

### Association

- has_one :order
- belongs_to :item
- has_one :tag_address

## orders テーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| consumer      | references | null: false, foreign_key: true |
| item          | references | null: false, foreign_key: true |

### Association

- belongs_to :consumer
- belongs_to :user




#プルダウン

## tag_years テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| tag_year | string     | null: false                    |

### Association
- belongs_to :user



## tag_months テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| tag_month  | string     | null: false                    |

### Association
- belongs_to :user



## tag_days テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| tag_day     | string     | null: false                    |

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
>>>>>>> Stashed changes

* ...
