class SalesRecord < ApplicationRecord
  belongs_to :sales_person
  validates :sell_date, presence: true
  validates :amount_sold, presence: true
  validates :sales_floor_hours, presence: true
  validates :project_hours, presence: true
  before_create :ensure_unique_sales_record
  before_update :ensure_unique_sales_record

  private

  def ensure_unique_sales_record
    
    duplicate = if persisted?
      SalesRecord.where(sales_person_id: sales_person_id, sell_date: sell_date)
      .where.not(id: id)
      .exists?
    else
      SalesRecord.exists?(sales_person_id: sales_person_id, sell_date: sell_date)
    end
    
    if duplicate
      errors.add(:base, "A Sales Record for this Sales Person already exists on that date")
      throw(:abort)
    end
  end
end