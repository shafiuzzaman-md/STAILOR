
# Ground Truth
git clone https://gitlab.gnome.org/GNOME/libxml2.git ~/src/libxml2

python3 ground_truth/get_release_from_arvo_id.py \
  --repo ~/src/libxml2 \
  --out libxm2.jsonl \
  57521


git clone https://github.com/bminor/binutils-gdb.git ~/src/binutils

# Project Metadata
cd <project_source>
sudo apt install cloc
cloc . --include-lang=C,C++