require 'guard/compat/plugin'
require 'berkshelf/cli'

module Guard
  class Berkshelf < Plugin
    def initialize(options = {})
      @berks = Berkshelf::Cli.new
      super
    end

    def start
      true
    end

    def stop
      true
    end

    def reload
      @berks = Berkshelf::Cli.new
    end

    def run_all
      _run
    end

    def run_on_additions(paths)
      _run
    end

    def run_on_modifications(paths)
      _run
    end

    def run_on_removals(paths)
      true
    end

    private

    def _run
      File.exists?('Berksfile.lock') ? berks.update : berks.install
    end
  end
end
