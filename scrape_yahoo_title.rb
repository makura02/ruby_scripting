# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

# scraping先のurl
url = 'http://www.yahoo.co.jp/'

charset = nil
html = open(url) do |f|
  charset = f.charset
  f.read
end

#htmlをパース(解析)してオブジェクトを生成
doc = Nokogiri::HTML.parse(html, nil, charset)

# タイトルを表示
p doc.title

