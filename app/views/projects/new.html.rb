<h2>New Project</h2>
<%= form_for(@project) do |f| %>
  <p>
  ￼<%= f.label :name, "The name of the label" %>
    <!- other way to give a label %= f.label :yourLabel But it should be the same as in the creating_project_spec.rbfill_in 'Name', with: 'TextMate 2'. Note that ID or name of the field is also used by Capybara%><br />
    <%= f.text_field :name %>
</p>
  <p>
    <%= f.label :description %><br />
    <%= f.text_field :description %>
    <!- same at this : input id="project_name" name= "project[name]"
       size="30" type="text">
        <%= f.submit %>
 <!- other way to create a submit_button %= f.submit "Your button Submit", :disable_with = 'Submiting...' %>

 <% end %>
</p>
 
