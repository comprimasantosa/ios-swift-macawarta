//
//  DetailView.swift
//  MacaWarta
//
//  Created by Prima Santosa on 09/11/20.
//

import SwiftUI

struct ArticleDetailView: View {
  private let article: ArticleModel

  init(article: ArticleModel) {
    self.article = article
  }

  var body: some View {
    VStack {
      WebView(url: article.url)
    }
    .navigationBarTitle("Article Detail", displayMode: .inline)
    .navigationBarItems(
      trailing:
        Button(action: {}, label: {
          Image(systemName: "bookmark")
        })
    )
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    let article = ArticleModel(
//      id: "dummyID",
      source: "Kontan.co.id",
      title: "Bertahan di atas Rp 1 juta per gram, simak rincian harga emas Antam pada hari ini - Personal Finance Kontan",
      description: "Minggu (8/11), harga emas Antam bertahan di Rp 1.004.000 per gram dan buyback di level Rp 897.000 per gram",
      author: "Anna Suci Perwitasari",
      url: "https://personalfinance.kontan.co.id/news/bertahan-di-atas-rp-1-juta-per-gram-simak-rincian-harga-emas-antam-pada-hari-ini",
      image: "https://foto.kontan.co.id/5S8m-moJdxMkYgcGA-byH4YwCDU=/smart/2020/08/31/1881540474p.jpg",
      date: "2020-11-08T08:00:12Z"
    )

    ArticleDetailView(article: article)
  }
}