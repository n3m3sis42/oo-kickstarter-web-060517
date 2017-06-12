class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def find_backer_by_name(name)
    @backers.find{|backer| backer.name == name}
  end

  def add_backer(backer)
    @backers << backer
    backer.back_project(self) unless backer.find_project_by_title(self.title)
  end

end
