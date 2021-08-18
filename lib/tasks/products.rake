namespace :products do
  desc "set product's meta title, description, keywords"
  task set_meta: :environment do
    Spree::Product.all.each do |p|
      p.update(
        meta_title: "Купить #{p.name} по низкой цене с доставкой в Днепре | Интернет-магазин инвентаря для настольного тенниса",
        meta_description: "Купить #{p.name} в интернет магазине tt-life. Лучшие цены + Скидки. Доставляем по Украине.",
        meta_keywords: "#{p.name}, купить #{p.name}, цена на #{p.name}, #{p.name} в Днепре, #{p.name} характеристики"
      )
    end
  end

end
