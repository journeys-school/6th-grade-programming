defmodule Intro.Labs.TempTest do
  use ExUnit.Case
  alias Intro.Labs.Temp
  doctest Temp

  # voltage = (sensor reading x 3.3) / 4095
  test "convert sensor reading to voltage" do
    assert 0.762 == Temp.sensor_to_voltage(946)
  end

  # Temperature (in Celsius) = (voltage - 0.5) x 100
  test "convert voltage to celcius" do
    assert 26.2 == Temp.voltage_to_celcius(0.762)
  end

  # Temperature (in Farenheiht) = Celcius x 1.8 + 32
  test "convert celcius to farenheit" do
    assert 79.2 == Temp.celcius_to_farenheit(26.2)
  end

  test "convert temperature sensor reading to farenheit" do
    assert 79.2 == Temp.sensor_to_farenheit(946)
  end

  test "Temperature with farenheit" do
    assert "The Temperature is 79.1° F" == Temp.to_string(79.1)
  end

  test "Display conditional messages based on temperature" do
    assert "Brrr! It's freezing!" == Temp.message(32)
    assert "Oooh! It's chilly!" == Temp.message(32.1)
    assert "Oooh! It's chilly!" == Temp.message(50)
    assert "Mmmm. It's nice out." == Temp.message(50.000000000001)
    assert "Mmmm. It's nice out." == Temp.message(80)
    assert "Whoa, it's hot!" == Temp.message(80.00000000000001)
  end
end
