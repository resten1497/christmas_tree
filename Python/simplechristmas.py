def chritmastree():
    first = "{: >7}".format('☆')
    second = "{: >7}".format('▲')
    third = "{: >7}".format('▲' + '▼' + '▲')
    fourth ="{: >7}".format('▲' + '▼' + '▲' + '▼' + '▲')
    fifth = '▲' + '▼' + '▲' + '▼' + '▲' + '▼' + '▲'
    sixth = "{: >7}".format('□')
    total = first + '\n' + second + '\n' + third + '\n' + fourth + '\n' + fifth + '\n' + sixth
    print(total)
chritmastree()