class PartyNameValidator < ActiveModel::EachValidator

    def validate_each(record, attribute, value)
        # byebug
        if value.split(" ").first != "The"
            record.errors.add(attribute, message: "Needs to start with 'The'")
        end
    end
end