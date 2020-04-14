$(function()  {
  // タブのDOM要素を取得し、変数で定義
  let tabs = $(".mypage-menu_item");

  // クラスの切り替えをtabSwitch関数で定義
  function tabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $(".mypage-active").removeClass("mypage-active");

    // クリックしたタブにactiveクラスを追加

    $(this).addClass("mypage-active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = tabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".mypage-content").removeClass("mypage-show").eq(index).addClass("mypage-show");
  }

  // タブがクリックされたらtabSwitch関数を呼び出す
  tabs.click(tabSwitch);    
});