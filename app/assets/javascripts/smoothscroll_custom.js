smoothScroll.init({
  speed: 500,           // 到達するまでの総時間(ミリ秒)
  easing: 'easeInOutCubic',     // スピードの種類
  offset: 0,              // 到達場所からズラすピクセル数
  updateURL: true,          // URLを[#〜]に変更するか？
  callback: function () {}        // コールバック関数 (到達時に実行される関数)
}) ;
