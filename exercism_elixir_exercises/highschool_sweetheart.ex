defmodule HighSchoolSweetheart do
  def first_letter(name) do
    # Please implement the first_letter/1 function
    name = String.trim(name)
    String.first(name)
  end

  def initial(name) do
    # Please implement the initial/1 function
    name = first_letter(String.upcase(name))
    name <> "."
  end

  def initials(full_name) do
    # Please implement the initials/1 function
    name = String.split(full_name)
    x = initial(List.first(name))
    y = initial(List.last(name))
    x <> " " <> y
  end

  def pair(full_name1, full_name2) do
     i1 = initials(full_name1)
    i2 = initials(full_name2)
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{i1}  +  #{i2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
