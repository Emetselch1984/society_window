Rails.application.routes.draw do
  root "inquiries#index"
  post "confirm",to: "inquiries#confirm"
  post "thanks",to: "inquiries#thanks"

end
