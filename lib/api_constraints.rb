class ApiConstraints

  attr_reader :version

  def initialize(options)
    @version = options.fetch(:version)
    @default = options.fetch(:default)
  end

  def matches?(request)
    request
      .headers
      .fetch(:accept)
  end
end