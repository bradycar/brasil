class User < ApplicationRecord
    git after_create_commit { broadcast_prepend_to :users }
    after_update_commit { broadcast_replace_to :users }
end
