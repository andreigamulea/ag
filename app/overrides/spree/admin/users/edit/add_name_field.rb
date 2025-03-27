Deface::Override.new(
  virtual_path: 'spree/admin/users/_form',
  name: 'add_name_field_to_user_edit',
  insert_after: "[data-hook='admin_user_edit_form_fields'] .field:last-child",
  text: <<-HTML
    <div class="field">
      <%= f.label :name, Spree.t(:name) %>
      <%= f.text_field :name, class: 'fullwidth' %>
      <%= error_message_on(f.object, :name) %>
    </div>
  HTML
)