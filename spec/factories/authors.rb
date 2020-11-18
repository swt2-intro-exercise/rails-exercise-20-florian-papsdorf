# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    first_name { 'Alan' }
    last_name { 'Turing' }
    homepage { 'http://wikipedia.de/Alan_Turing' }
  end
end
