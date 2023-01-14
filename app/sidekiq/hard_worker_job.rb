class HardWorkerJob
  include Sidekiq::Job

  def perform()
    puts("________starrting cron job___________")
    puts("________cron job finished___________")
  end
end
