class Todo < ApplicationRecord  
  def completed?
    completed_at?
  end
  
  def complete!
    touch(:completed_at) # updates attribute with current time
  end
  
end
