mov ecx, array_size
 cmp ecx, 0 ;Check if the array is empty
je empty_array
 cmp ecx, [index] ; Check if index is greater than or equal to the size of array
jge out_of_bounds
 mov eax, [ebx+4*ecx] ; Access the array element after bounds checking
jmp end

empty_array:
 ;Handle empty array case here
jmp end

out_of_bounds:
 ;Handle out of bounds case here
jmp end
end: