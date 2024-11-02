# frozen_string_literal: true

users_params = [
  {
    id: 1,
    name: '八神太一',
    email: 'taichi@example.com'
  },
  {
    id: 2,
    name: '石田ヤマト',
    email: 'yamato@example.com'
  },
  {
    id: 3,
    name: '武之内空',
    email: 'sora@example.com'
  },
  {
    id: 4,
    name: '泉光子郎',
    email: 'koshiro@example.com'
  },
  {
    id: 5,
    name: '太刀川ミミ',
    email: 'mimi@example.com'
  },
  {
    id: 6,
    name: '城戸丈',
    email: 'jo@example.com'
  },
  {
    id: 7,
    name: '赤石タケル',
    email: 'takeru@example.com'
  },
  {
    id: 8,
    name: '八神ヒカリ',
    email: 'hikari@example.com'
  }
]

users_params.each do |user_params|
  User.seed do |s|
    s.id = user_params[:id]
    s.name = user_params[:name]
    s.email = user_params[:email]
  end
end
