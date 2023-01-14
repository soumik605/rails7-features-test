class HardWorkerJob
  include Sidekiq::Job

  def perform(title, id)
    puts("________starrting background job___________")
    sleep(15)
    puts(id, title)
    puts("________background job finished___________")
  end
end
