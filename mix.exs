defmodule BroadwayRabbitMQ.MixProject do
  use Mix.Project

  @version "0.5.0"
  @description "A RabbitMQ connector for Broadway"

  def project do
    [
      app: :broadway_rabbitmq,
      version: @version,
      elixir: "~> 1.7",
      name: "BroadwayRabbitMQ",
      description: @description,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package()
    ]
  end

  def application do
    [
      extra_applications: [:lager, :logger]
    ]
  end

  defp deps do
    [

      {:broadway, git: "https://github.com/somersbmatthews/broadway_test.git"},
      {:amqp, "~> 1.3"},
      {:ex_doc, ">= 0.19.0", only: :docs}
    ]
  end

  defp docs do
    [

    ]
  end

  defp package do
    %{

    }
  end
end
