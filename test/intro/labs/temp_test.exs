defmodule Intro.Labs.TempTest do
  use ExUnit.Case
  doctest Intro.Labs.Temp

  # voltage = (sensor reading x 3.3) / 4095
  test "convert sensor reading to voltage" do
    assert 0.762 == Intro.Labs.Temp.sensor_to_voltage(946)
  end

  # Temperature (in Celsius) = (voltage - 0.5) x 100
  test "convert voltage to celcius" do
    assert 26.2 == Intro.Labs.Temp.voltage_to_celcius(0.762)
  end

  # Temperature (in Farenheiht) = Celcius x 1.8 + 32
  test "convert celcius to farenheit" do
    assert 79.2 == Intro.Labs.Temp.celcius_to_farenheit(26.2)
  end

  test "concert temperature sensor reading to farenheit" do
    assert 79.2 == Intro.Labs.Temp.sensor_to_farenheit(946)
  end
end
