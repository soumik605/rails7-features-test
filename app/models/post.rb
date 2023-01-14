class Post < ApplicationRecord
  after_create :start_background_job

  private

  def start_background_job
    HardWorkerJob.perform_async(self.try(:title), self.try(:id))
  end
end
