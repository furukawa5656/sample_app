module ApplicationHelper
  # ページごとの完全なタイトルを返します。
  def full_title(page_title = '')  #メソッド名に引数を設定　引数の値にデフォルト値を設定（空）
    base_title = "Ruby on Rails Tutorial Sample App"  #変数の設定
    if page_title.empty?  #論理値テスト
      base_title
    else
      page_title + " | " + base_title
    end
  end
end