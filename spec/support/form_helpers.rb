module FormHelpers
  def submit_form
    find('input[name="commit"]').click
  end

  # Limitation: click will find and click the *last* element containing `text`
  def click(text)
    page.execute_script("$('*:contains(\"#{text}\"):last').click()")
  end

  def visit_signup_link
    mail = ActionMailer::Base.deliveries.last
    return if mail.nil?
    link = mail.body.encoded.match(/href=['"](?<url>.+?)['"]>/)[:url]
    visit link if link
  end

  def fill_in_editor_field(text)
    within ".CodeMirror" do
      # Click makes CodeMirror element active:
      current_scope.click

      # Find the hidden textarea:
      field = current_scope.find("textarea", visible: false)

      # Mimic user typing the text:
      field.send_keys([:meta, 'a'], text)
    end
  end

  def have_editor_display(options)
    editor_display_locator = ".CodeMirror-code"
    have_css(editor_display_locator, options)
  end

end
