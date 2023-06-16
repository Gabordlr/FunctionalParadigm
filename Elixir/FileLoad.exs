defmodule FileLoader do
  def read_files_from_folder(folder_path) do
    File.ls!(folder_path)
    |> Enum.map(&File.read(Path.join(folder_path, &1)))
  end
end

FileLoader.read_files_from_folder("PythonFiles")
