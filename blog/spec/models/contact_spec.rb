<<<<<<< HEAD
# require "spec_helper"

# describe "something"  do
#   it "does something" do
#     #...
#   end
# end
=======
require "rails_helper"

    RSpec.describe Contact, type: :model do
        it { should validate_presence_of(:email) }
        it { should validate_presence_of(:message) }
    end
>>>>>>> origin/new_step_2
