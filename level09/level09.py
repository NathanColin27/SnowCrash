import sys

token = "f4kmm6p|=�p�n��DB�Du{��"

#This is the result of hexdumping the above token
hex_string = "66 34 6b 6d 6d 36 70 7c 3d 82 7f 70 82 6e 83 82 44 42 83 44 75 7b 7f 8c 89 0a"
hex_values = hex_string.split()

int_values = [int(hex_value, 16) for hex_value in hex_values]

# Increment each integer by its position in the list
result_values = [value - index for index, value in enumerate(int_values)]
for i, j in enumerate(result_values): 
    if j < 0: 
        result_values[i] += 127
# Print the resulting list of incremented integers
print(result_values)

print(''.join([chr(x) for x in result_values if x > 0]))

