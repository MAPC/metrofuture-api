module APIHelper

  def paginate(collection)
    current_page_num = collection.current_page
    last_page_num    = collection.total_pages
    @klass = params[:controller]

    { :first => first_page,
      :previous => previous_page(current_page_num),
      :self => current_page(current_page_num),
      :next => next_page(current_page_num, last_page_num),
      :last => last_page(last_page_num)
    }
  end

  def first_page
    send("#{ @klass }_path", params.merge({
      "page[number]" => 1,
      "page[size]"   => page_size
    }))
  end

  def previous_page(current_page_num)
    return nil if current_page_num <= 1
    send("#{ @klass }_path", params.merge({
      "page[number]" => current_page_num - 1,
      "page[size]"   => page_size
    }))
  end

  def current_page(current_page_num)
    send("#{ @klass }_path", params.merge({
      "page[number]" => current_page_num,
      "page[size]"   => page_size
    }))
  end

  def next_page(current_page_num, last_page_num)
    return nil if current_page_num >= last_page_num
    send("#{ @klass }_path", params.merge({
      "page[number]" => current_page_num + 1,
      "page[size]"   => page_size
    }))
  end

  def last_page(last_page_num)
    send("#{ @klass }_path", params.merge({
      "page[number]" => last_page_num,
      "page[size]"   => page_size
    }))
  end

  # TODO: Factor out this duplicate logic (also in ApplicationController)
  def page_size
    params[:page] ? ( params[:page][:size] || Kaminari.config.default_per_page ) : Kaminari.config.default_per_page
  end
end
