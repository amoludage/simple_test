class BootstrapCheckBoxButtonGroupInput < SimpleForm::Inputs::CollectionCheckBoxesInput
  def input
    label_method, value_method = detect_collection_methods
    iopts = {
      :checked => 1,
      :item_wrapper_tag => false,
      :collection_wrapper_tag => 'div',
      :collection_wrapper_class => 'btn-group add-data-toggle clearfix'
    }
    return @builder.send(
      "collection_check_boxes",
      attribute_name,
      collection,
      value_method,
      label_method,
      iopts,
      input_html_options,
      &collection_block_for_nested_boolean_style
    )
  end

  protected

  def build_nested_boolean_style_item_tag(collection_builder)
    tag = String.new
    tag << collection_builder.label(class: 'btn btn-cc') { "#{collection_builder.check_box} #{collection_builder.text}".html_safe }

    return tag.html_safe
  end

end
