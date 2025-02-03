class MealsController < ApplicationController
  def index
    today = Date.today.day
    @meal = Meal.find_by(day: today) || Meal.new(day: today, breakfast: "Belirtilmemiş", lunch: "Belirtilmemiş", dinner: "Belirtilmemiş")

    # Türkçe tarih formatı için
    I18n.locale = :tr
    @formatted_date = l(Date.today, format: "%d %B %Y, %A") # 03 Şubat 2025, Pazartesi
  end
end
