class Thread::Backtrace::Location
  if defined?(ErrorHighlight) && Gem::Version.new(ErrorHighlight::VERSION) >= Gem::Version.new("0.4.0")
    def spot(ex)
      ErrorHighlight.spot(ex, backtrace_location: self)
    end
  else
    def spot(ex)
    end
  end
end
