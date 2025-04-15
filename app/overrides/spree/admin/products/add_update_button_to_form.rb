Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'add_update_button_to_form',
  insert_bottom: 'form[id*="edit_product"]',
  text: <<-HTML
    <div class="actions">
      <%= f.submit 'Actualizează', class: 'btn btn-primary' %>
    </div>
  HTML
)