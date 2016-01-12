module BootstrapHelper
  def bs_form_for(record, options = {}, &block)
    options[:builder] = Bootstrap::FormBuilderSimple
    form_for record, options, &block
  end
end
