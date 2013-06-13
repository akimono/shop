<%= form_for @message, :url => contact_path do |form| %>
<fieldset class="fields">
	<div class="field">
		<%= form.label :name %>
		<%= form.text_field :name %>
	</div>

	<div class="field">
		<%= form.label :email %>
		<%= form.text_field :email %>
	</div>
	<div class="field">
		<%= form.label :subject %>
		<%= form.text_field :subject %>
	</div>
	<div class="field">
		<%= form.label :body%>
		<%= form.text_field :body %>
	</div>
</fieldset>
<fieldset class="actions">
	<%= form.submit "Send" %>
	</fieldset>
	<% end %>
