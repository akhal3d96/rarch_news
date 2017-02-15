# require 'pony'
#
# module RarchNews
#  module Mail
#    def send_mail
#      mail = load_mail_settings
#
#      Pony.mail(to: 'you@example.com',
#                via: :smtp,
#                via_options: {
#                  address: 'smtp.gmail.com',
#                  port: '587',
#                  enable_starttls_auto: true,
#                  user_name: 'user',
#                  password: 'password_see_note',
#                  authentication: :plain, # :plain, :login, :cram_md5, no auth by default
#                  domain: 'localhost.localdomain' # the HELO domain provided by the client to the server
#                })
#    end
#
#    private
#
#    def self.load_mail_settings
#      if File.exist? File.expand_path RarchNews.configuration.path, RarchNews.configuration.mail
#        YAML.load_file(File.join(RarchNews.configuration.path, RarchNews.configuration.last_article))
#      end
#      nil
#    end
#
#    def gmail
#    end
#  end
# end
