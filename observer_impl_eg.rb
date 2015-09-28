require 'observer_impl'

class TelescopeScheduler
  include Observable
  def initialize
    @observer_list = {}
  end
  def add_viewer(viewer)
    @observer_list << viewer
  end
  #..
end
