package ecom.crawler;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import ecom.entities.Product;
import ecom.entities.ProductOfSupplier;
import ecom.entities.Supplier;

public class CrawlerDataProduct {

	// @SuppressWarnings("null")
	public List<ProductOfSupplier> craw(List<Supplier> suppliers, Product product) throws IOException {
		List<ProductOfSupplier> ps = new ArrayList<ProductOfSupplier>();
		for (Supplier supplier : suppliers) {
			Document document = Jsoup.connect(supplier.getLinkSearch() + product.getName() + " " + product.getCode())
					.timeout(6000).get();
			Elements elements = document.select(supplier.getClassListProduct());
			for (Element element : elements) {
				// get name of list product search in web to check
				String nameOfProductSearch = element.select(supplier.getClassName()).text();
				System.out.println(nameOfProductSearch);

				if (org.apache.commons.lang3.StringUtils.containsIgnoreCase(nameOfProductSearch,
						product.getName()) == true
						&& org.apache.commons.lang3.StringUtils.containsIgnoreCase(nameOfProductSearch,
								product.getCode()) == true) {
					System.out.println(element.select(supplier.getClassPrice()).text());
					System.out.println(element.select("a").attr("href"));
					System.out.println(supplier.getName());
					System.out.println(product.getCode());
					System.out.println(supplier.getLogo());

					String stringPrice = element.select(supplier.getClassPrice()).text();
					String[] price0 = stringPrice.split("₫");
					String price3 = price0[0]; 
					String[] price1 = price3.split("\\.");
					String price = "";
					for (int i = 0; i < price1.length; i++) {
						price = price + price1[i];
					}

					System.out.println(price);

					ProductOfSupplier productOfSupplier = new ProductOfSupplier();
					if (org.apache.commons.lang3.StringUtils.containsIgnoreCase(element.select("a").attr("href"),
							supplier.getLinkHomePage())) {		
						if (org.apache.commons.lang3.StringUtils.containsIgnoreCase(element.select("a").attr("href"), "https://")) {
							productOfSupplier.setLinkToSupplier(element.select("a").attr("href"));
						}else{
							productOfSupplier.setLinkToSupplier("https://" + element.select("a").attr("href"));
						}
					} else {
						if(org.apache.commons.lang3.StringUtils.containsIgnoreCase(element.select("a").attr("href"), "https://")){
							productOfSupplier.setLinkToSupplier(supplier.getLinkHomePage() + element.select("a").attr("href"));							
						}else{
							productOfSupplier.setLinkToSupplier("https://" + supplier.getLinkHomePage() + element.select("a").attr("href"));	
						}
					}
					productOfSupplier.setSupplierName(supplier.getName());
					productOfSupplier.setProductName(product.getName() + " " + product.getCode());
					productOfSupplier.setLogoSupplier(supplier.getLogo());
					productOfSupplier.setPrice(price);
					ps.add(productOfSupplier);
					break;
				}
			}
		}
		return ps;
	}
}
