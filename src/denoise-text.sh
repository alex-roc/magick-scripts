# set input and output folders
input=$1
output=$2

# create output folder if it doesn't exist
mkdir -p $output

# loop through input folder
for file in $input/*.tiff; do

    # get filename without extension
    filename=$(basename -- "$file")
    filename="${filename%.*}"

    # denoise image
    convert $file -despeckle $output/$filename.tiff

done