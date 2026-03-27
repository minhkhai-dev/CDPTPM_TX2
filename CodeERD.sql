Table books {
  book_id int [pk, increment]
  isbn varchar(20) [unique]
  title varchar(255) [not null]
  author varchar(150)
  publisher varchar(100)
  publication_year int
  quantity int [default: 1]
  available_quantity int [default: 1]
  created_at datetime [default: current_timestamp]
}

Table members {
  member_id int [pk, increment]
  full_name varchar(100) [not null]
  email varchar(100) [unique]
  phone varchar(20)
  address text
  membership_date date [default: current_date]
  status varchar(20) [default: 'active']  // active, suspended
}

Table borrowings {
  borrowing_id int [pk, increment]
  book_id int [ref: > books.book_id]
  member_id int [ref: > members.member_id]
  borrow_date date [not null]
  due_date date [not null]
  return_date date
  status varchar(20) [default: 'borrowed']  // borrowed, returned, overdue
  fine_amount decimal(10,2) [default: 0]
}

Table categories {
  category_id int [pk, increment]
  category_name varchar(50) [unique, not null]
}

Table book_categories {
  book_id int [ref: > books.book_id, pk]
  category_id int [ref: > categories.category_id, pk]
}