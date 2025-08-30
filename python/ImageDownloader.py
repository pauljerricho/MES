import requests
from bs4 import BeautifulSoup
import os

# 다운로드할 웹 페이지 URL
url = "https://aifortunedoctor.com/s/bluemoonladysaju/ai/771897"

# 다운로드할 폴더 경로
download_path = "./downloaded_images"

# 폴더가 없으면 생성
if not os.path.exists(download_path):
    os.makedirs(download_path)

# 웹 페이지의 HTML 가져오기
try:
    response = requests.get(url, timeout=10)
    response.raise_for_status()  # 오류 발생 시 예외 발생
except requests.exceptions.RequestException as e:
    print(f"웹 페이지 다운로드 오류: {e}")
    exit()

# HTML 파싱
soup = BeautifulSoup(response.text, 'html.parser')

# 모든 img 태그 찾기
img_tags = soup.find_all('img')

# 이미지 다운로드 및 저장
for img_tag in img_tags:
    img_url = img_tag.get('src')

    if img_url:
        # 이미지 URL이 절대 경로가 아니면, 도메인 URL을 추가하여 절대 경로로 변환
        if not img_url.startswith('http'):
            img_url = url + '/' + img_url

        # 이미지 다운로드
        try:
            response = requests.get(img_url, stream=True, timeout=10)
            response.raise_for_status()
        except requests.exceptions.RequestException as e:
            print(f"이미지 다운로드 오류: {img_url}, {e}")
            continue

        # 파일 이름 생성 (URL에서 마지막 부분 사용)
        filename = os.path.basename(img_url)

        # 파일 저장 경로
        filepath = os.path.join(download_path, filename)

        # 이미지 파일 저장
        try:
            with open(filepath, 'wb') as f:
                for chunk in response.iter_content(chunk_size=8192):
                    if chunk:
                        f.write(chunk)
            print(f"이미지 다운로드 완료: {img_url} -> {filepath}")
        except Exception as e:
            print(f"이미지 파일 저장 오류: {img_url}, {e}")
        else:
            print("이미지 다운로드 및 저장 완료")