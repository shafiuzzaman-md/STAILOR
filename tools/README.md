git clone https://gitlab.gnome.org/GNOME/libxml2.git ~/src/libxml2

python3 tools/get_release_from_arvo_id.py \
  --repo ~/src/libxml2 \
  --out libxm2.jsonl \
  57521


git clone https://github.com/bminor/binutils-gdb.git ~/src/binutils