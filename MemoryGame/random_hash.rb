def rand_alph()
    rand_hash = {}
    rand_arr = []
    charset = Array("A".."Z")
    for i in 1..8
        temp = rand(1..8)
        while rand_arr.include?(temp)
            temp = rand(1..8)
        end
        rand_arr.push(temp)
    end

    for i in 0..rand_arr.length-1
        if rand_arr[i] > 4
            rand_arr[i] = rand_arr[i]%4 + 1
        end
    end

    for i in 1..rand_arr.length
        rand_hash[i] = charset[rand_arr[i-1]]
    end
    rand_hash = {1=>"A",2=>"A"}
    rand_hash = {1=>"A",2=>"A",3=>"C",4=>"C"}

    # rand_hash = {1=>"A",2=>"D",3=>"B",4=>"C",5=>"B",6=>"C",7=>"D",8=>"A"}
    return rand_hash
end
