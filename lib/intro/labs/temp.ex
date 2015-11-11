defmodule Intro.Labs.Temp do
  def sensor_to_voltage(reading) do
    (reading * 3.3) / 4095
      |> Float.round(3)
  end

  def voltage_to_celcius(voltage) do
    (voltage - 0.5) * 100
      |> Float.round(1)
  end

  def celcius_to_farenheit(celcius) do
    (celcius * 1.8) + 32
      |> Float.round(1)
  end

  def sensor_to_farenheit(reading) do
    reading
      |> sensor_to_voltage
      |> voltage_to_celcius
      |> celcius_to_farenheit

  end

  def read_from_sensor do
    url = "https://api.spark.io/v1/devices/55ff6f065075555352271887/temperature\?access_token\=2e4be73f31cb910ded3da53275e5236b5eb129e1"

    json = HTTPotion.get(url).body
      |> Poison.decode!

    reading = json["result"]
    sensor_to_farenheit(reading)
  end
end
