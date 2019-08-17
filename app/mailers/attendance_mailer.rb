class AttendanceMailer < ApplicationMailer
  default from: 'no-reply@vast-mountain-66901.fr'

  def confirmation_email(attendance)
    @participant = attendance.participant
    @url = 'vast-mountain-66901.herokuapp.com'
    @event = attendance.event
    mail(to: @participant.email, subject: 'Votre participation est bien prise en compte !')
  end
end
