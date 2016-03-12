module Danger
  module CISource
    # "abstract" CI class
    class CI
      attr_accessor :repo_slug, :pull_request_id, :base_ref, :head_ref

      def self.validates?(_env)
        false
      end

      def initialize(_env)
        raise "Subclass and overwrite initialize"
      end
    end
  end
end
