package model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import model.domain.PremiumMarketBean;
import model.domain.PriceMarketBean;
import service.currency.CurrencyKRWUSD;
import service.currentAbroad.CurBinance;
import service.currentAbroad.CurBitFinex;
import service.currentAbroad.CurBittrex;
import service.currentAbroad.CurGdax;
import service.currentAbroad.CurKraken;
import service.currentKor.CurBitthum;
import service.currentKor.CurCoinone;
import service.currentKor.CurUpbit;
import util.KRWMarketNameNumber;
import util.PreminumCalCulate;
import util.USDMarketNameNumber;

public class PremiumDAO {
	static float currency = 0;
	static ArrayList<PriceMarketBean> krwList = new ArrayList<>();
	static ArrayList<PriceMarketBean> usdList = new ArrayList<>();
	static ArrayList<PremiumMarketBean> preList = new ArrayList<>();
	static ArrayList<PremiumMarketBean> sortedPreList = new ArrayList<>();
	static {
		Runnable runnable = new Runnable() {
			public void run() {
				calPremiumLists();
				System.out.println("======================");
					for(PremiumMarketBean p: sortedPreList) {
						System.out.println(p.getkMarket()+"/"+p.getuMarket()+"/"+p.getValue());
					}
				}
			};
			ScheduledExecutorService service = Executors.newSingleThreadScheduledExecutor();
			service.scheduleAtFixedRate(runnable, 0, 60, TimeUnit.SECONDS);
	}
	
	public static void calPremiumLists() {
		getKrwList();
		getUsdList();
		getCurrency();
		calculatePremium();
	}
	
	public static void getKrwList() {
		try {
			krwList.add(new PriceMarketBean(CurBitthum.getPrice()));
			krwList.add(new PriceMarketBean(CurCoinone.getPrice()));
			krwList.add(new PriceMarketBean(CurUpbit.getPrice()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("한국 거래소 코인 가져오는데 실패");
		}
	}
	public static void getUsdList() {
		try {
			usdList.add(new PriceMarketBean(CurBinance.getPrice()));
			usdList.add(new PriceMarketBean(CurBitFinex.getPrice()));
			usdList.add(new PriceMarketBean(CurBittrex.getPrice()));
			usdList.add(new PriceMarketBean(CurGdax.getPrice()));
			usdList.add(new PriceMarketBean(CurKraken.getPrice()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("외국 거래소 코인 가져오는데 실패");
		}
	}
	public static void getCurrency() {
		try {
			currency = CurrencyKRWUSD.getPrice();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("환율 가져오는데 실패");
		}
	}
	public static void calculatePremium() {
		for(int i  = 0 ; i < krwList.size(); i++) {
			for(int j = 0 ; j <usdList.size(); j++) {
				float pre = PreminumCalCulate.getPreminum(krwList.get(i).getValue(), usdList.get(j).getValue(), currency);
				preList.add(new PremiumMarketBean(pre,KRWMarketNameNumber.getName(i), USDMarketNameNumber.getName(j)));
				sortedPreList.add(new PremiumMarketBean(pre,KRWMarketNameNumber.getName(i), USDMarketNameNumber.getName(j)));
			}
		}
		sortList();
	}
	private static void sortList() {
		// TODO Auto-generated method stub
		Collections.sort(sortedPreList, new Comparator<PremiumMarketBean>() {
			@Override
			public int compare(PremiumMarketBean o1, PremiumMarketBean o2) {
				// TODO Auto-generated method stub
				if(o1.getValue() > o2.getValue()) {
					return -1;
				}else if(o1.getValue() <o2.getValue()) {
					return 1;
				}else {
					return 0;
				}
			}
		});
	}
	public static ArrayList<PremiumMarketBean>getPreList() {
		return preList;
	}
	public static ArrayList<PremiumMarketBean>getSortedPreList() {
		return sortedPreList;
	}
}