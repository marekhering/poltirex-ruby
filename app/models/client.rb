class Client < User
  before_create :add_language

  def add_language
    self.language = 'PL'
  end
end
