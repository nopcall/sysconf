// _mouse_gestures.js -- js
// @Author: eric.zou (frederick.zou@gmail.com)
// @License: GPL (see http://www.gnu.org/licenses/gpl.txt)
// @Created: Sat 09 Jul 2011 02:10:43 PM CST
// @Last Change: Sun 09 Sep 2012 03:41:25 PM CST
// @Revision: 50
// @Description:
// @Usage:
// @TODO:
// @CHANGES:

// If you can read Chinese, please edit this piece of code
userContext.MGLIST = [
	//['UDLR', 'Description', '#id or function or ex commands or key mappings', noremap flag],
	['L' , 'BackWard' , '#Browser:Back'],
	['R' , 'ForWard' , '#Browser:Forward'],
	// ['DU' , '关闭当前标签页或者是窗口' , '#cmd_close'],
	// ['LD' , '停止加载当前页' , '#Browser:Stop'],
	// ['LR' , '撤销关闭标签页' , '#History:UndoCloseTab'],
	// ['DL' , '选择上一个标签页' , 'gT', true],
	// ['DR' , '选择下一个标签页' , 'gt', true],
	['DL' , 'PrevTab' , function() window.gBrowser.tabContainer.advanceSelectedTab(-1, true)],
	['DR' , 'NextTab' , function() window.gBrowser.tabContainer.advanceSelectedTab(+1, true)],
	['URD' , 'Refresh' , 'r', true],
	['UD' , 'RefreshSkipCache' , function() {BrowserReloadSkipCache();}],
	['DRULD' , 'Refresh' , 'r', true],
	['DU' , 'CloseTab' , 'd', true],
	['DRU' , 'CloseTab' , 'd', true],
	['DRUL' , 'CloseTab' , 'd', true],
	['DRULD' , 'CloseTab' , 'd', true],
	['DRULDR' , 'CloseTab' , 'd', true],
	// ['U' , 'GotoPageTop' , function() window.goDoCommand('cmd_scrollTop')],
	// ['D' , 'GotoPageBottom' , function() window.goDoCommand('cmd_scrollBottom')],
	['U' , 'GotoPageTop' , function() {content.scrollTo(0,0);}],
	['D' , 'GotoPageBottom' , function() {content.scrollTo(0,1e10);}],
	// ['UDR' , '添加当前页到书签' , ':dialog addbookmark'],
	['L>R' , '前进' , '#Browser:Forward'],
	['L<R' , '后退' , '#Browser:Back'],
	['W-' , 'PrevTab' , function() window.gBrowser.tabContainer.advanceSelectedTab(-1, true)],
	['W+' , 'NextTab' , function() window.gBrowser.tabContainer.advanceSelectedTab(+1, true)],
];

/**
 * code snippets, just copy out them into your configuration

 // 最大化和还原窗口
 ['', 'Maximize or Restore Window', ':js window.windowState == window.STATE_MAXIMIZED ? window.restore() : window.maximize();'],

 // 最小化窗口
 ['', 'Minimize Window', ':js window.moveTo(0,0);window.minimize();'],

 // 全屏或者取消全屏
 ['', 'Toggle Fullscreen', ':em View.Full Screen'],

 // 跳转到网站上一级目录
 ['', 'Go to Parent Directory', 'gu', true],
 */

// Please don't modify the code below
// 请不要修改下面的代码
if (commands.get("mousegestures"))
	ex.mousegestures("reload");
