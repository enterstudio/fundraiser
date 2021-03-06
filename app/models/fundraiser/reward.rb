module Fundraiser
  class Reward < ActiveRecord::Base
    include ActiveModel::ForbiddenAttributesProtection
    attr_accessible :description, :minimum_pledge, :title

    validates :title, :presence => true
    validates :minimum_pledge, :numericality => true

    has_many :pledges
  end
end
