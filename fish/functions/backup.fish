function backup --argument filename
    if test -z "$filename"
        echo "Error: No filename provided."
        return 1
    end

    if not test -f "$filename"
        echo "Error: File '$filename' does not exist."
        return 1
    end

    set backupfile "$filename.bak"

    if test -e "$backupfile"
        echo "Warning: '$backupfile' already exists. Creating a numbered backup instead."
        set i 1
        while test -e "$filename.bak.$i"
            set i (math $i + 1)
        end
        set backupfile "$filename.bak.$i"
    end

    cp "$filename" "$backupfile"
    echo "Backup created as '$backupfile'"
end

