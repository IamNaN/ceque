module Shared

  module Steps
    def Given(any);any;end

    def I(any);any;end

    def And(any);any;end

    def When(any);any;end

    def Then(any);any;end

    def am(any);any;end
    def the(any);any;end

    def an_email; 'someone@example.com'; end
    def a_password; 'P@ssw0rd!!!!'; end
  end

  module Asserts
    def at_the(path)
      expect(page.current_path).to eq path
    end
  end

  module Navigation
    def can_visit(item)
      visit url_for(controller: item.class.name.parameterize.pluralize, action: 'show', id: item.id, only_path: true)
      expect(page.current_path).to eq "/#{item.class.name.parameterize.pluralize}/#{item.id}"
    end
  end
end
