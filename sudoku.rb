#sudo cracker, works out the solution for a suduko puzzle
$sud2 = [
        [1,0,3],
        [3,0,0],
        [2,0,0]
        ]
        
        
$sud = [
        [6,0,0,1,0,8,2,0,3],
        [0,2,0,0,4,0,0,9,0],
        [8,0,3,0,0,5,4,0,0],
        [5,0,4,6,0,7,0,0,9],
        [0,3,0,0,0,0,0,5,0],
        [7,0,0,8,0,3,1,0,2],
        [0,0,1,7,0,0,9,0,6],
        [0,8,0,0,3,0,0,2,0],
        [3,0,2,9,0,4,0,0,5]
        ]
        
        
#puts $sud.inspect
        
$sudT = $sud.transpose
#puts $sudT.inspect
#puts $sud.inspect
 

 
def check_rows (arr) #checks each element within each inner array
    sudT = arr.transpose #used to look down a column
    sud2 = arr
        arr.each_with_index { |row, idxRow| #looks at each array
            row.each_with_index { |val, idxVal|#looks at each element
                if val == 0 then #0 = an empty position in the array.
                    for i in 1..9 do
                        if possibleVal(row, i) == true && possibleVal(sudT[idxVal], i) then
                            sud2[idxRow][idxVal] = i #new value added to the suduko table.
                            sudT = sud2.transpose
                        end
                    end
                end
            }
        }
    return arr.inspect
end

def possibleVal (row, possibleVal)#checks if a value already exists in the array
    if row.include?(possibleVal) == false  then
      return true
      else 
      return false
    end


end



 
puts check_rows($sud)

