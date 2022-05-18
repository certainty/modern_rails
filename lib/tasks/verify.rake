namespace :app do
  namespace :verify do
    desc "Verify the project with all available integrity checkers"
    task all: [:types, :packages, :format, :style]

    desc "Verify types using sorbet"
    task types: ["sorbet:check"]

    desc "verify packages"
    task :packages do
      Bundler.with_unbundled_env do
        system("bundle exec packwerk check")
      end
    end

    desc "verify format"
    task :format do
      Bundler.with_unbundled_env do
        system("bundle exec rufo -c .")
      end
    end

    desc "verify format"
    task :style do
      Bundler.with_unbundled_env do
        system("bundle exec rubocop --parallel")
      end
    end
  end
end
