#sudo cracker
$sud = [
        [1,0,3],
        [3,0,0],
        [2,0,0]
        ]
puts $sud.inspect
        
sudT = $sud.transpose

#puts sud.inspect
 
for 
 
    def check_rows (arr)
        arr.each_with_index { |row, idxRow|
            row.each_with_index { |val, idxVal|
                for i in 1..3 do
                    if possibleVal(val, row, i) == true then
                       arr[idxRow][idxVal] = i
                    end
                end
            }
        }
        #return arr.inspect
    end
 
def possibleVal (numToCheck, row, possibleVal)
    if numToCheck == 0 && row.include?(possibleVal) == false then
        return true
    end
 end
 
puts check_rows($sud)
