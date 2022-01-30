import numpy as np
a = np.array([[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12]])
print(a)

f = open(".\data\data.txt", "w")
f.write(str(a))
f.close()

# Write in volume
# created data-volume and mounted data-volume:/data from command line
f_volume = open("\data\data.txt", "w")
f_volume.write(str(a))
f_volume.close()