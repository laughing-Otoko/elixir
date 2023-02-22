defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
    adder = fn arg->
      arg + secret
    end
  end

  def secret_subtract(secret) do
    # Please implement the secret_subtract/1 function
    subtractor = fn arg->
      arg - secret
    end
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    multiplier = fn arg->
      arg * secret
    end
  end

  def secret_divide(secret) do
    # Please implement the secret_divide/1 function
    divider = fn arg->
      Kernel.div(arg, secret)
    end   
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    ander = fn arg->
      Bitwise.band(arg, secret)  
    end
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    xorer = fn arg->
      Bitwise.bxor(arg, secret)
    end