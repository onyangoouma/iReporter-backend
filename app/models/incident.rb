class Incident < ApplicationRecord
    validates_acceptance_of :incident_type, :accept => ['redflag', 'intervention']
end
