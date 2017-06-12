class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def find_project_by_title(title)
    @backed_projects.find{|project| project.title == title}
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self) unless project.find_backer_by_name(self.name)
  end

end
