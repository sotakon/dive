class OwnerChangeMailer < ApplicationMailer
  def owner_change_mail(team)
    @team = team
    mail to: @team.owner.email, subject: "リーダー変更の確認メール"
  end
end
