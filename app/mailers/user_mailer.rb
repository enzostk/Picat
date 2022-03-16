class UserMailer < ApplicationMailer
    default from: 'armeedesquatre@gmail.com'

    def welcome_email(user)
        @user = user
        @url = 'http://picats.fr/login'
        mail(to: @user.email, subject: "Welcome to Picat's !")
    end







    def order_email(user, product)
        @user = user
        #@product = product
        mail(to :@user.email, subject: "Your last order")
    end

end
