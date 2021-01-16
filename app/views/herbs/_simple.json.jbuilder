json.extract! herb, :id, :name, :pinyin, :hanzi, :latin, :pharm_latin, :common_english
json.category herb.herb_category.name
json.url herb_url(herb, format: :json)
