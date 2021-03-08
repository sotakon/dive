class DestroyMailer < ApplicationMailer
  def destroy_mail(agenda)
    @agenda = agenda
    @users = @agenda.team.members
    mail to: @users.map(&:email), subject: 'アジェンダ削除通知メール'
  end
end
