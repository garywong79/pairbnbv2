# x = [[1,2],[3,4],[5,6]]
# x[1][0] == 3
#array[row][column]

table = [	["Number","Name","Position","Points Per Game"],
					[12,"Joe Schmo", "Center", [14,32,7,0,23]],
					[9,"Ms. Buckets","Point Guard", [19,0,11,22,0]],
					[31,"Harvey Kay","Shooting Guard",[0,30,16,0,25]],
					[18,"Sally Talls","Power Forward",[18,29,26,31,19]],
					[22,"MK Diboux","Small Forward",[11,0,23,17,0]]
				]
				p table[3][2] == "Shooting Guard" # outputs true
				p table[1][3] == [14, 32, 7, 0, 23] # outputs true