class WcagPrinciple < WcagElement
  def name_with_details
    "#{sti_model_name_human} #{tree_prefix}: #{name}"
  end

  def tree_prefix
    position
  end
end
