require './config/application'

use OTR::ActiveRecord::ConnectionManagement

SlackRubyBotServer::App.instance.prepare!
SlackRubyBotServer::Service.start!

run SlackRubyBotServer::Api::Middleware.instance
