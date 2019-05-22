FactoryGirl.define do
    factory :blog do
        sequence(:title) {
            |n| "news#{n}"
        }
        sequence(:content) {
            |n| "content#{n}"
        }
        time Date.today
    end
end