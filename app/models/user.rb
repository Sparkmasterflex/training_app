class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :event

  def event_title
    @event_title ||= event.title
  end

  def as_json options={}
    attributes.merge(event_title: event_title)
  end
end
