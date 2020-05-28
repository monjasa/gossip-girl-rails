{:ru =>
     { :i18n =>
           { :plural =>
                 { :keys => [:one, :few, :other],
                   :rule => lambda { |n|
                     n ||= 0
                     mod10 = n % 10
                     mod100 = n % 100

                     if mod10 == 1 && mod100 != 11
                       :one
                     elsif (2..4).to_a.freeze.include?(mod10) && !(12..14).to_a.freeze.include?(mod100)
                       :few
                     elsif mod10 == 0 || (5..9).to_a.freeze.include?(mod10) || (11..14).to_a.freeze.include?(mod100)
                       :many
                     else
                       :other
                     end
                   }
                 }
           }
     }
}