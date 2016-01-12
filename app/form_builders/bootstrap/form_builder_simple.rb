module Bootstrap
  # FormBuilderNormal is just form_for plus bootstrap
  class FormBuilderSimple < ActionView::Helpers::FormBuilder

    delegate :content_tag, :tag, :to => :@template

    CONTAINER_CLASS = 'form-group'
    LABEL_CLASS = 'col-sm-4 control-label'
    COMPONENT_CLASS = 'col-sm-8'

    def text_field(method, options={})
      add_class_form_control! options
      content_tag :div, :class => CONTAINER_CLASS do
        super(method, options)
      end
    end

    def label_check_box(label, method, options={}, checked_value = "1", unchecked_value = "0")
      content_tag :div, class: "checkbox" do
        content_tag :label do
          check_box(method, options, checked_value, unchecked_value) + "#{label}"
        end
      end
    end

    def radio_button(tag_value, options = {})
      super(tag_value, options)
    end

    def submit(value=nil, options={})
      options[:class] = 'btn btn-default'
      super(value, options)
    end

    def collection_select(method, collection, value_method, text_method, options={}, html_options={})
      add_class_form_control! html_options
      content_tag :div, :class => CONTAINER_CLASS do
        super(method, collection, value_method, text_method, options, html_options)
      end
    end

    private
    def add_class_form_control!(options)
      if options[:class]
        options[:class] = 'form-control '+options[:class]
      else
        options[:class] = 'form-control'
      end
    end
  end # Class
end # Module
