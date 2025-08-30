import requests
from bs4 import BeautifulSoup

UPBIT_SERVER_URL = "https://api.upbit.com"
BINANCE_SERVER_URL = "https://api.binance.com"
MARKETS_UPBIT = ["KRW-BTC", "KRW-ETH", "KRW-SHIB", "KRW-BTT"]
MARKETS_BINANCE = ["BTCUSDT", "ETHUSDT", "SHIBUSDT", "BTTUSDT"]
COIN_NAMES = ["비트코인", "이더리움", "시바이누", "비트토렌트"]

def get_usd_krw():
    try:
        url = "https://finance.naver.com/marketindex/?tabSel=exchange#tab_section"
        response = requests.get(url)
        response.raise_for_status()
        soup = BeautifulSoup(response.text, "html.parser")
        price_tag = soup.select_one("div.market1 span.value")
        if price_tag:
            return float(price_tag.text.replace(",", ""))
        else:
            print("환율 정보를 찾을 수 없습니다.")
            return None
    except Exception as e:
        print(f"환율 가져오기 오류: {e}")
        return None

def get_upbit_prices(markets):
    params = {"markets": ",".join(markets)}
    try:
        response = requests.get(f"{UPBIT_SERVER_URL}/v1/ticker", params=params)
        response.raise_for_status()
        return response.json()
    except Exception as e:
        print(f"Upbit Error: {e}")
        return None

def get_binance_prices(markets):
    prices = []
    for market in markets:
        try:
            response = requests.get(f"{BINANCE_SERVER_URL}/api/v3/ticker/price", params={"symbol": market})
            response.raise_for_status()
            data = response.json()
            prices.append(float(data["price"]))
        except Exception as e:
            print(f"Binance Error for {market}: {e}")
            prices.append(None)
    return prices

def main():
    usd_krw = get_usd_krw()
    if not usd_krw:
        print("환율 정보를 가져올 수 없습니다.")
        return

    upbit_prices = get_upbit_prices(MARKETS_UPBIT)
    binance_prices = get_binance_prices(MARKETS_BINANCE)

    if not upbit_prices or not binance_prices:
        print("시세 정보를 가져올 수 없습니다.")
        return

    for i, name in enumerate(COIN_NAMES):
        upbit_price = upbit_prices[i]['trade_price'] if upbit_prices[i] else "N/A"
        binance_price = binance_prices[i] if binance_prices[i] else "N/A"
        binance_price_krw = round(binance_price * usd_krw, 2) if isinstance(binance_price, float) else "N/A"
        print(f"{name}: 업비트 {upbit_price}원 / 바이낸스 {binance_price} USDT ({binance_price_krw}원)")

if __name__ == "__main__":
    main()