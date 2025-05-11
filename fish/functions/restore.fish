function restore --argument filename
    set backupfile "$filename.bak"

    if not test -e "$backupfile"
        echo "Error: Backup file '$backupfile' does not exist."
        return 1
    end

    mv "$backupfile" "$filename"
    echo "Restored '$filename' from '$backupfile'"
end

