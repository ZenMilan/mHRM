class EmploymentType < Enumeration
  has_many :positions

  OptionName = :enumeration_employment_type

  def option_name
    OptionName
  end

  def objects
    Position.where(:employment_type_id => self.id)
  end

  def objects_count
    objects.count
  end

  def transfer_relations(to)
    objects.update_all(:employment_type_id => to.id)
  end
end