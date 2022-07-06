class ChangesController < ApplicationController
  around_action :wrap_in_transaction, only: :show

    private

    def wrap_in_transaction
      ActiveRecord::Base.transaction do
        begin
          yield
        ensure
          raise ActiveRecord::Rollback
        end
      end
    end
  end
end
