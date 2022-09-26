class WcagGuideline < WcagElement
  def name_with_details
    "#{sti_model_name_human} #{tree_prefix}: #{name}"
  end

  def tree_prefix
    (ancestors.map(&:position).reverse << position).join '.'
  end

  private

  def needed_parent_type
    WcagPrinciple
  end
end
