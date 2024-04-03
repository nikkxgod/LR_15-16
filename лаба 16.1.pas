var
  inputFile, outputFile: Text;
  List: array of Integer;
  i: Integer;

begin
  Assign(inputFile, 'input.txt');
  Reset(inputFile);

  SetLength(List, 0);
  while not Eof(inputFile) do
  begin
    SetLength(List, Length(List) + 1);
    Readln(inputFile, List[High(List)]);
  end;

  Close(inputFile);

  Assign(outputFile, 'output.txt');
  Rewrite(outputFile);

  for i := High(List) downto Low(List) do
    Writeln(outputFile, List[i]);

  Close(outputFile);
end.
