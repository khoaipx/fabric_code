import pandas as pd


anno_file = ''


anno_result = pd.read_json(open(anno_file,"r"))
name_list = anno_result["name"].unique()
for img_name in tqdm(name_list):
    img_anno = anno_result[anno_result["name"] == img_name]
    if len(img_anno) > 100:
        print(img_name)
        continue

    bboxs = img_anno["bbox"].tolist()
    defect_names = img_anno["defect_name"].tolist()
    assert img_anno["name"].unique()[0] == img_name

    img_path=os.path.join(img_dir,img_name)
    # img = cv2.imread(img_path)
    if not os.path.exists(img_path):
        continue