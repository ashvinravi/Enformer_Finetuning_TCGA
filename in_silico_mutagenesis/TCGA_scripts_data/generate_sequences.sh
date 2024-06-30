# Read the filename and shift_by values into separate arrays
filenames=()
shift_by_values=()

while IFS=$'\t' read -r filename shift_by_value; do
    filenames+=("$filename")
    shift_by_values+=("$shift_by_value")
done < "$1"

echo "Filenames: ${filenames[@]}"
echo "Shift_by values: ${shift_by_values[@]}"

# Loop over each filename
for ((i = 0; i < ${#filenames[@]}; i++)); do
    filename="${filenames[i]}"
    shift_by="${shift_by_values[i]}"
    # Append ".tsv" to the filename
    filename_with_extension="CRC_variant_sequences/input_txt/${filename}.txt"
    filename_output=${filename}_output
    # Run your command here, for example:
    echo "Processing $filename_with_extension with shift_by value $shift_by"
    # Execute the command with the filename and corresponding shift_by value
    python scripts/SuPreMo.py "$filename_with_extension" --dir CRC_variant_sequences/output_sequences --file ${filename_output} --get_seq --seq_len 49152 --shift_by "$shift_by"
done
