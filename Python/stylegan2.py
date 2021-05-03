! git clone https://github.com/NVlabs/stylegan2-ada-pytorch.git
!pip install ninja
%cd /content/stylegan2-ada-pytorch/
from google_drive_downloader import GoogleDriveDownloader as gdd
gdd.download_file_from_google_drive(file_id='1d34d-AEJjj4uPTybbpz8c2u01oTo0B_6', dest_path='/content/models/model.pkl')
!python generate.py --outdir=out --trunc=0.45 --seeds=0 \
    --network=/content/models/model.pkl
from IPython.display import Image, display
display(Image('/content/stylegan2-ada-pytorch/out/seed0000.png'))
