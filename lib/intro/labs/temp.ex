defmodule Intro.Labs.Temp do
  def sensor_to_voltage(reading) do
    Float.round(((reading * 3.3) / 4095), 3)
  end

  def voltage_to_celcius(voltage) do
    Float.round(((voltage - 0.5) * 100), 1)
  end

  def celcius_to_farenheit(celcius) do
    Float.round(((celcius * 1.8) + 32), 1)
  end

  def sensor_to_farenheit(reading) do
    v = sensor_to_voltage(reading)
    c = voltage_to_celcius(v)
    celcius_to_farenheit(c)
  end

end
