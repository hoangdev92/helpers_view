# HelpersView

helpers_view Ruby Gem
The helpers_view gem is a versatile tool designed to simplify the process of rendering common HTML elements and templates in your Ruby on Rails applications. It provides convenient methods to generate dynamic and reusable components such as modals, buttons, and input fields, reducing the need for repetitive code.

Key Features:
Modal Rendering: Easily render customizable modals with various configurations for headers, footers, and body content.
Button Helpers: Generate consistent button styles and behaviors with flexible options for different sizes, colors, and actions.
Input Fields: Quickly create forms with inputs, labels, and error messages, fully customizable to match your UI requirements.
Currency Formatting: Effortlessly render currency values in Vietnamese (VND) and Japanese (JPY) formats, adhering to the localized number formatting conventions of each language.
With helpers_view, you can accelerate your development workflow, enhance code readability, and maintain a consistent user interface across your project.

## Important
-Currently only supports bootstrap version 4 and above

## Installation

Install the gem and add to the application's Gemfile by executing:

    bundle add helpers_view

If bundler is not being used to manage dependencies, install the gem by executing:

    gem install helpers_view

OR Add to Gemfile:

    gem 'helpers_view'

## Usage
--- example ---
- tooltips:

    <%= render_tooltip_html('button', 'click', 'sadsad', {class_name: 'btn btn-primary', placement: 'top', version_bootstrap: 5}) %>

- button:

    <%= render_button_html({text: 'button'}) %>

- money VND

    <%= render_monney_vnd_html(12031213) %>

- file size

    <%= render_file_size_html(12213213) %>

- modal and block

    <%= render_modal_html(id: 'id_modal', width_class: 'id_modal', body_class: 'aa') do %>
        <div class="primary">
            <span>hello world</span>
        </div>
    <% end %>

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hoangdev92/helpers_view. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hoangdev92/helpers_view/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the HelpersView project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/helpers_view/blob/master/CODE_OF_CONDUCT.md).
