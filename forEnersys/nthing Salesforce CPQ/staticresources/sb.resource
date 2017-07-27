@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Light.woff") format("woff");
  font-style: normal;
  font-weight: 300;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Regular.woff") format("woff");
  font-style: normal;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Italic.woff") format("woff");
  font-style: italic;
  font-weight: 400;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-Bold.woff") format("woff");
  font-style: normal;
  font-weight: 700;
}
@font-face {
  font-family: "Salesforce Sans";
  src: url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff2") format("woff2"), url("https://www2.sfdcstatic.com/system/shared/common/assets/fonts/SalesforceSans/SalesforceSans-BoldItalic.woff") format("woff");
  font-style: italic;
  font-weight: 700;
}
/*
Rotates an element

$r - the rotate function paramter, e.g. 90deg
 */
.sb h1,
.sb h2,
.sb h3,
.sb h4,
.sb h5,
.sb h6 {
  color: #16325c;
  font-weight: 300;
  font-family: inherit;
  display: inline-block;
  margin: 0;
  padding: 0;
}
.sb h1 {
  font-size: 24px;
}
.sb h2 {
  font-size: 18px;
}
.sb h3 {
  font-size: 16px;
}
.sb h4 {
  font-size: 12px;
}
.sb h5 {
  font-size: 10px;
}
.sb h6 {
  font-size: 9px;
}
.sb a,
.sb a:visited,
.sb a:hover,
.sb a:active {
  text-decoration: none;
  color: #0070d2;
  cursor: pointer;
}
.sb a:hover {
  color: #16325c;
}
/*
Button

A standard, standalone button

*/
.sbBtn,
.btn.sbBtn {
  padding: 8px 12px;
  background: #ffffff;
  color: #0070d2;
  cursor: pointer;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  font-weight: 400;
  font-size: 14px;
  margin: 0;
  vertical-align: middle;
  text-align: center;
  height: 36px;
}
.sbBtn:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbBtn:hover {
  background: #f4f6f9;
}
.sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border: 1px solid #0070d2;
  color: #ffffff;
}
.sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.sbBtn.sbEnabled {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.sbBtn.sbEnabled:hover {
  background-color: #005fb2;
}
.sbButtons,
.sbPageButtons {
  text-align: center;
  background: #f4f6f9;
  padding: 7px 0 7px;
  display: inline-block;
}
.sbButtons > .sbBtn,
.sbButtons > div > .sbBtn,
.sbPageButtons > .sbBtn,
.sbPageButtons > div > .sbBtn {
  border-top: 1px solid #d8dde6;
  border-bottom: 1px solid #d8dde6;
  border-right: 1px solid #d8dde6;
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbButtons > .sbBtn.sbPrimaryAction,
.sbButtons > div > .sbBtn.sbPrimaryAction,
.sbPageButtons > .sbBtn.sbPrimaryAction,
.sbPageButtons > div > .sbBtn.sbPrimaryAction {
  border: 1px solid #0070d2;
}
.sbButtons > .sbBtn:first-of-type,
.sbButtons > div > .sbBtn:first-of-type,
.sbPageButtons > .sbBtn:first-of-type,
.sbPageButtons > div > .sbBtn:first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbButtons > div > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > .sbBtn:first-of-type.sbPrimaryAction,
.sbPageButtons > div > .sbBtn:first-of-type.sbPrimaryAction {
  border-left: #0070d2;
}
.sbButtons > .sbBtn:last-of-type,
.sbButtons > div > .sbBtn:last-of-type,
.sbPageButtons > .sbBtn:last-of-type,
.sbPageButtons > div > .sbBtn:last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbButtons > .center,
.sbPageButtons > .center {
  display: inline-block;
}
.sbPageButtons {
  width: 100%;
  border-top: 1px solid #d0d0d0;
}
.sbPageButtons.bottom {
  width: auto;
  position: fixed;
  bottom: 0px;
  left: 10px;
  right: 10px;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  display: none;
}
.sbPageButtons.inline {
  background: #f4f6f9;
  border-bottom-right-radius: 4px;
  border-bottom-left-radius: 4px;
  margin-top: 80px;
}
.sbPageTitle > .sbPageButtons {
  border: 0;
  display: inline-block;
  width: auto;
  float: right;
}
.sbTools {
  display: inline-block;
}
.sbTools > .sbTool {
  border-left: 0;
  border-radius: 0;
  float: left;
}
.sbTools > .sbTool > .sb-icon-triangle-down {
  margin-left: -5px;
}
.sbTools > .sbTool:not(.ng-hide):not(.sbBtnClear):first-of-type {
  border-left: 1px solid #d8dde6;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.sbTools > .sbTool:not(.ng-hide):last-of-type {
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
.sbTool {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  padding: 5px 7px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
  /* the down triangle in a tool */
}
.sbTool > .sb-icon-down-dir {
  position: relative;
}
.sbTool.active {
  background: #0070d2;
  color: #ffffff;
}
.sbTool:hover {
  background: #f4f6f9;
  color: #0070d2;
}
.sbTool:focus {
  outline-offset: -2px;
  outline-width: 2px;
}
.sbTool > menu {
  position: absolute;
  right: -1px;
  top: 16px;
  font-weight: normal;
  background-color: #ffffff;
  padding: 8px 14px;
  white-space: nowrap;
  border-radius: 4px;
  border-top-right-radius: 0;
  border: 1px solid #d8dde6;
  display: none;
  z-index: 4;
  text-align: left;
}
.sbTool > menu.dt {
  top: 20px;
  max-height: 300px;
  overflow: auto;
}
.sbTool > menu > header {
  text-transform: uppercase;
  color: #777;
  margin-bottom: 4px;
}
.sbTool > menu *[class^=sb-icon] {
  margin-right: 6px;
  vertical-align: middle;
  color: #777;
}
.sbTool.open > menu {
  display: block;
}
.sbTool > menu ul {
  list-style: none;
  padding: 0;
  margin: 0;
}
.sbTool > menu ul > li {
  padding: 3px 3px 3px 0px;
}
.sbTool > menu ul > li > a {
  display: block;
}
.sbTool > menu ul > li .sb-icon-ok {
  display: none;
}
.sbTool > menu ul > li.selected .sb-icon-ok {
  display: inline-block;
  float: right;
  margin-right: 0;
}
.sbTool > menu.multi > header:last-of-type {
  margin-top: 16px;
}
.sbTool > menu.multi > ul:last-of-type li {
  min-width: 130px;
}
.sb menu a {
  color: #0070d2;
}
.sb menu a:hover {
  color: #0070d2;
}
/*
Modal dialog mask

The layer behind the dialog that masks the entire page.
*/
.sbModalMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
/*
Modal Dialog

A dialog with modality that takes up the entire page.
 */
.sbModalDialog {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
}
.sbModalDialog > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
.sbModalDialog > header > i {
  color: #16325c;
  font-size: 20px;
}
.sbModalDialog > header > * {
  vertical-align: middle;
}
.sbModalDialog > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
.sbModalDialog > header > h3 {
  color: #16325c;
}
.sbModalDialog > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
.sbModalDialog > header > .sf-icon-close:hover {
  cursor: pointer;
}
.sbModalDialog > header > .sf-icon-close:before {
  color: #fff;
}
.sbModalDialog .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
.sbModalDialog .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
.sbModalDialog .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
.sbModalDialog .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
.sbModalDialog .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
.sbModalDialog .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
.sbModalDialog .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
.sbModalDialog .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#DescriptionEditorDialog {
  min-height: 429px;
}
.sbDialogMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(126, 140, 153, 0.8);
  display: block;
  visibility: hidden;
  z-index: 9000;
}
.sbDialogMask.open,
.sbDialog.open {
  visibility: visible;
}
.sbDialog,
.sbDialog * {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}
.sbDialog {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 9001;
  display: block;
  visibility: hidden;
}
.sbDialog > .sbDialogCon {
  border-radius: 4px;
  position: relative;
  margin: 0 auto;
  background: #fff;
}
.sbDialog > .sbDialogCon > header {
  display: block;
  position: relative;
  padding: 24px 16px;
  text-align: center;
  border-bottom: 2px solid #d8dde6;
}
.sbDialog > .sbDialogCon > header > h2 {
  line-height: 20px;
  font-size: 24px;
}
.sbDialog > .sbDialogCon > header > button {
  position: absolute;
  display: inline-block;
  top: -46px;
  right: -8px;
  width: 48px;
  height: 48px;
  color: #fff;
  background: none;
  border: 0;
  outline: 0;
  font-size: 24px;
}
.sbDialog > .sbDialogCon > .sbDialogBody {
  padding: 16px;
}
.ui-tooltip {
  padding: 8px;
  position: absolute;
  z-index: 9999;
  max-width: 300px;
  background: #ffffff;
  border: 1px solid #d0d0d0;
  box-shadow: 0 0 2px #D8DDE6;
}
.ui-tooltip > .ui-tooltip-content {
  font-size: 14px;
}
.ui-tooltip > .arrow {
  width: 70px;
  height: 16px;
  overflow: hidden;
  position: absolute;
  left: 50%;
  margin-left: -35px;
  bottom: -16px;
}
.ui-tooltip > .arrow.top {
  top: -16px;
  bottom: auto;
}
.ui-tooltip > .arrow.top:after {
  bottom: -20px;
  top: auto;
}
.ui-tooltip > .arrow.left {
  left: 28%;
}
.ui-tooltip > .arrow:after {
  background: #ffffff;
  border: #d0d0d0;
  content: "";
  position: absolute;
  left: 20px;
  top: -20px;
  width: 25px;
  height: 25px;
  box-shadow: 6px 5px 9px -9px black;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
.ui-helper-hidden-accessible {
  border: 0;
  clip: rect(0 0 0 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}
#sbCustomActionContainer {
  margin: 18px;
  top: 0px;
  height: 95%;
}
#sbCustomActionContainer > .sf-icon-cancel-circled {
  font-size: 35px;
  position: absolute;
  top: -9px;
  right: -4px;
  width: 20px;
  height: 20px;
  background-color: #A8B7C7;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:hover {
  cursor: pointer;
}
#sbCustomActionContainer > .sf-icon-cancel-circled:before {
  color: #fff;
  position: relative;
  right: 15px;
  top: -10px;
}
#easyXDM_SBQQ_provider {
  width: 100%;
  height: 100%;
}
#sbPricebookModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 640px;
}
#sbPricebookModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbPricebookModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbPricebookModal > header > * {
  vertical-align: middle;
}
#sbPricebookModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbPricebookModal > header > h3 {
  color: #16325c;
}
#sbPricebookModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbPricebookModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbPricebookModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbPricebookModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbPricebookModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbPricebookModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbPricebookModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbPricebookModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbPricebookModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbPricebookModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbPricebookModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbPricebookModal > .sbModalContentContainer {
  padding: 20px;
  text-align: center;
}
#sbPricebookModal > .sbModalContentContainer > select {
  height: 34px;
  font-size: 16px;
  width: 100%;
  margin: 14px 0;
}
.sbPageTitle {
  padding: 24px 24px 16px;
  color: #54698d;
  background: #f4f6f9;
  border-bottom: 1px solid #d0d0d0;
  font-size: 10px;
  transition: padding 0.25s ease-in;
}
.sbPageTitle h1,
.sbPageTitle h2 {
  white-space: nowrap;
  transition: all 0.25s ease-in;
}
.sbPageTitle h2 {
  font-size: 14px;
  color: #54698d;
  display: block;
  font-weight: 400;
  padding-bottom: 4px;
}
.sbPageTitle > .sbPageTitleTable {
  display: table;
  width: 100%;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable.sbResultsSection > .sbPageTitleLeft {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  display: table-cell;
  vertical-align: top;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft {
  display: inline-flex;
  width: 30%;
  vertical-align: top;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  vertical-align: top;
  display: inline-block;
  transition: all 0.25s ease-in;
  -webkit-transition-delay: 0s, 0s, 0s;
  -webkit-transition-duration: 0.25s, 0.25s, 0.25s;
  -webkit-transition-property: -webkit-transform, opacity, left;
  -webkit-transition-timing-function: ease-in, ease-in, ease;
  -webkit-user-drag: none;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 50px;
  height: 50px;
  width: 50px;
  border-radius: 4px;
  margin-right: 12px;
  text-align: center;
  display: inline-block;
  transition: all 0.25s ease-in;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 30px;
  padding: 13px 10px 0 10px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  color: #fff;
  margin: 0;
  position: relative;
  top: -7px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft .resetHeight[class^=sf-icon]:before {
  top: 0px;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
  width: 200px;
}
@media screen and (-ms-high-contrast: none), (-ms-high-contrast: active) {
  .sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft > span {
    width: auto;
  }
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight {
  width: 100%;
}
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbTools,
.sbPageTitle > .sbPageTitleTable > .sbPageTitleRight > .sbButtons {
  float: right;
}
.sbPageTitle .sbResults {
  margin: 7px 0 0 62px;
  font-size: 14px;
  transition: all 0.25s ease-in;
}
.sbPageTitle .sbResults.sbWarning {
  margin-top: 2px;
  color: #cc7824;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning] {
  font-size: 16px;
  width: 13px;
  height: 20px;
}
.sbPageTitle .sbResults.sbWarning [class=sf-icon-warning]:before {
  color: #cc7824;
  margin: 0 6px 0 0;
  position: relative;
  top: 2px;
}
.sbPageTitle.squeezed {
  padding: 20px 15px 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon] {
  font-size: 36px;
  height: 36px;
  width: 36px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon].resize {
  font-size: 23px;
  padding-top: 8px;
  padding-left: 7px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  top: -5px;
}
.sbPageTitle.squeezed > .sbPageTitleTable > .sbPageTitleLeft .sbTitles {
  transform: translate3d(0px, -12px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -8);
}
.sbPageTitle.squeezed > .sbPageTitleTable .sbButtons {
  padding: 0;
}
.sbPageTitle.squeezed > .sbPageTitleTable.sbResultsSection {
  opacity: 0;
  display: none;
  transform: translate3d(0px, -17px, 0px);
  -webkit-transform: matrix(1, 0, 0, 1, 0, -17);
}
.sbHeaderFixed .sbPageTitle {
  position: fixed;
  top: 114px;
  left: 10px;
  right: 10px;
  z-index: 5;
  visibility: hidden;
}
#sidebarCell:not(.sidebarCollapsed) + #bodyCell .sbHeaderFixed .sbPageTitle {
  left: 230px;
}
#mainContent {
  margin-left: 1px;
}
.sbPageBlock {
  font-size: 10px;
}
.sbPageBlockSection {
  margin: 15px;
  background: #f4f6f9;
  border: 1px solid #d0d0d0;
  border-radius: 4px;
  padding: 14px;
  font-size: 10px;
}
.sbPageBlockSection > header {
  margin-bottom: 10px;
}
.sbLoadingMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 10001;
}
.sbLoading {
  position: fixed;
  top: 37%;
  left: 50%;
  margin-left: -74px;
}
.sbSearchResults .sbTable {
  font-size: 10px;
}
.sbSearchResults .sbTable > thead > tr > th:first-of-type,
.sbSearchResults .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
.sbSearchResults .sbTable > tbody > tr > td {
  vertical-align: middle;
}
.sbSearchResults .sbTools {
  float: right;
}
.sb input[type=text],
.sb input:not([type]) {
  height: 25px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  font-size: 14px;
}
.sb input[type=text].hasDatepicker,
.sb input:not([type]).hasDatepicker {
  min-width: 95px;
  width: 85%;
}
.sb input[type=text].hasDatepicker.invalidDate,
.sb input:not([type]).hasDatepicker.invalidDate {
  border-color: #c00;
}
.sb select:not([multiple]) {
  font-size: 14px;
  -webkit-appearance: none;
  -moz-appearance: none;
  min-width: 100px;
  padding: 0 14px;
  margin: 0;
  height: 25px;
  background-image: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB2ZXJzaW9uPSIxLjEiIGlkPSJMYXllcl8xIiB4PSIwcHgiIHk9IjBweCIgdmlld0JveD0iMCAwIDI3LjYgMjEiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDI3LjYgMjEiIHhtbDpzcGFjZT0icHJlc2VydmUiPg0KICA8Zz4NCiAgICA8ZGVmcz4NCiAgICAgIDxwYXRoIGlkPSJTVkdJRF8xXyIgZD0iTTUuNiA1aDE2LjRjMC40IDAgMC44IDAuNiAwLjQgMWwtOCA5LjhjLTAuMyAwLjMtMC45IDAuMy0xLjIgMGwtOC05LjhDNC44IDUuNiA1LjEgNSA1LjYgNXoiLz4NCiAgICA8L2RlZnM+DQogICAgPGNsaXBQYXRoIGlkPSJTVkdJRF8yXyI+DQogICAgICA8dXNlIHhsaW5rOmhyZWY9IiNTVkdJRF8xXyIgb3ZlcmZsb3c9InZpc2libGUiLz4NCiAgICA8L2NsaXBQYXRoPg0KICAgIDxyZWN0IHg9IjAiIHk9IjAiIGNsaXAtcGF0aD0idXJsKCNTVkdJRF8yXykiIGZpbGw9IiM1NTY5OEQiIHdpZHRoPSIyNy42IiBoZWlnaHQ9IjIxIi8+DQogIDwvZz4NCjwvc3ZnPg0K');
  background-color: #ffffff;
  background-position: 95% 50%;
  background-repeat: no-repeat;
  background-size: 14px 14px;
  border: 1px solid #D8DDE6;
  border-radius: 3px;
}
.sb select:not([multiple])::-ms-expand {
  display: none;
}
.sb input[type=checkbox] {
  width: 22px;
  height: 22px;
  margin: 0;
  border: 0;
}
.sb input,
.sb button,
.sb select,
.sb textarea {
  font-family: inherit;
}
/*
Dualing List box

A control with two list boxes and arrows to move items left/right and up/down between those two.
 */
.sbDualListBox {
  font-size: 14px;
  color: inherit;
  border-collapse: collapse;
  border-spacing: 0;
}
.sbDualListBox > thead > tr > th {
  font-weight: normal;
  text-align: center;
}
.sbDualListBox > thead > tr > th > [class^=sb-icon] {
  font-size: 14px;
  color: #888;
}
.sbDualListBox > tbody > tr > td:nth-child(2),
.sbDualListBox > tbody > tr > td:nth-child(4) {
  text-align: center;
  vertical-align: middle;
}
.sbDualListBox a {
  color: inherit;
  padding: 2px;
  margin: 0 8px;
  border: 1px solid #d8dde6;
  border-bottom: 0;
  display: block;
}
.sbDualListBox a:hover {
  background: #0069d9;
  color: #fff;
  border-color: #0069d9;
}
.sbDualListBox a .sf-icon-right,
.sbDualListBox a .sf-icon-left {
  padding: 2px;
}
.sbDualListBox a [class^=sb-icon] {
  font-size: 15px;
}
.sbDualListBox a [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
  font-size: 8.5px;
}
.sbDualListBox a:nth-child(4) [class^=sb-icon-to-end]:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
  font-size: 8.5px;
}
.sbDualListBox a:first-of-type {
  border-top-right-radius: 3px;
  border-top-left-radius: 3px;
}
.sbDualListBox a:last-of-type {
  border-bottom: 1px solid #d8dde6;
  border-bottom-right-radius: 3px;
  border-bottom-left-radius: 3px;
}
.sbDualListBox select {
  font-size: inherit;
  height: 350px;
  width: 180px;
  padding: 8px;
}
.sbDualListBox select > option {
  padding: 4px;
}
.sbDualListBox select > option.required {
  color: #af2626;
  font-weight: bold;
  -webkit-font-smoothing: subpixel-antialiased;
}
#ui-datepicker-div {
  display: none;
}
.ui-datepicker {
  background-color: #F4F6F9;
  border-left: 1px solid #d0d0d0;
  border-right: 1px solid #d0d0d0;
  border-radius: 3px;
  box-shadow: 0 2px 6px #aaa;
  padding: 7px 5px 6px;
  overflow: hidden;
  text-align: center;
  white-space: nowrap;
  width: auto;
  z-index: 4;
}
.ui-datepicker .ui-datepicker-header {
  padding: 0 0 3px;
}
.ui-datepicker .ui-datepicker-title {
  display: inline-block;
}
.ui-datepicker .ui-datepicker-month {
  float: left;
}
.ui-datepicker .ui-datepicker-year {
  float: right;
}
.ui-datepicker .ui-datepicker-prev,
.ui-datepicker .ui-datepicker-next {
  margin-top: 4px;
  display: inline-block;
  width: 19px;
  height: 16px;
  margin: 2px 4px 0 0;
  background-repeat: no-repeat;
  line-height: 400%;
  float: left;
}
.ui-datepicker .ui-datepicker-prev {
  background-image: url('/img/func_icons/cal/leftArrow.gif');
}
.ui-datepicker .ui-datepicker-next {
  background-image: url('/img/func_icons/cal/rightArrow.gif');
}
.ui-datepicker .ui-datepicker-calendar {
  padding: 0 5px;
  margin-left: auto;
  margin-right: auto;
}
.ui-datepicker .ui-datepicker-calendar > thead > tr > th {
  text-align: center;
  font-weight: normal;
  font-size: .9em;
  width: 14%;
}
.ui-datepicker .ui-datepicker-calendar td {
  padding: 2px;
}
.ui-datepicker .ui-datepicker-calendar a {
  width: auto;
  border-bottom: none;
  text-decoration: none;
  font-size: .95em;
}
.ui-datepicker .ui-datepicker-calendar > tbody > tr > td:hover {
  background-color: #e0f0fb;
  font-weight: bold;
}
.ui-datepicker .ui-datepicker-other-month a {
  color: #999;
}
.ui-datepicker .ui-datepicker-today {
  background-color: #1797c0;
  color: #fff;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-today:hover {
  background-color: #e0f0fb;
  color: #333;
}
.ui-datepicker .ui-datepicker-current-day {
  background-color: #c6e1ff;
  border: 1px solid #9cf;
  font-weight: bold;
  text-decoration: none;
}
.ui-datepicker .ui-datepicker-current-day > a {
  color: #333;
}
.ui-datepicker .ui-datepicker-buttonpane {
  padding: 1px;
  clear: both;
}
.ui-datepicker .ui-datepicker-buttonpane > button {
  background: transparent;
  border: none !important;
  color: #015ba7;
  cursor: pointer;
  font-weight: normal;
  padding: 0;
  margin: 0;
}
.ui-datepicker .ui-datepicker-buttonpane > button:hover {
  text-decoration: underline;
}
.ui-datepicker .ui-datepicker-close {
  display: none;
}
table > tbody > tr > td {
  color: #16325C;
}
.sbTable {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  background-color: #ffffff;
}
.sbTable td {
  height: 49px;
}
.sbTable tr.sbUpgradeOption > td {
  color: #aaaaaa;
}
.sbTable > tbody > tr > td.center,
.sbTable > tbody > tr > td.sbActions,
.sbTable > thead > tr > th.sbActions,
.sbTable > thead > tr > th.center,
.sbTable > tfoot > tr > td.center {
  text-align: center;
}
.sbTable > thead > tr > th.right,
.sbTable > tbody > tr > td.right,
.sbTable > tfoot > tr > td.right {
  text-align: right;
}
.sbTable a {
  color: inherit;
}
.sbTable tbody .sbActions i {
  color: #0070d2;
}
.sbTable tbody .sbActions i:hover {
  color: #16325c;
  cursor: pointer;
}
.sbTable tbody .sbMaster input[type=checkbox] {
  -ms-transform: scale(0.7);
  /* IE */
  -moz-transform: scale(0.7);
  /* FF */
  -webkit-transform: scale(0.7);
  /* Safari and Chrome */
}
.sbTable tbody .sbMaster i {
  font-size: 200%;
  color: #ffffff;
  background-color: #CFD7E6;
  border-radius: .18rem;
  text-align: center;
}
.sbTable tbody .sbMaster i.selectedMaster {
  background: #7F8DE1;
}
.sbTable tbody .sbMaster i.selectedMaster:hover {
  cursor: pointer;
}
.sbTable tbody .sbMaster i.notSelectedMaster {
  background: #CFD7E6;
}
.sbTable tbody .sbMaster i.notSelectedMaster:hover {
  cursor: pointer;
}
.sbTable input :not(.sbBtn),
.sbTable select {
  font-size: inherit;
}
.sbTable > thead > tr > th {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  font-size: 12px;
  font-weight: normal;
  text-transform: uppercase;
  color: #16325C;
  text-align: left;
  white-space: nowrap;
}
.sbTable > thead > tr > th > *[class^="sb-icon"] {
  margin-left: 4px;
  font-size: 12px;
}
.sbTable > tbody > tr > td {
  border-bottom: 1px solid #D8DDE6;
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 14px;
}
.sbTable > tbody > tr > td i {
  color: #888;
}
.sbTable > tbody > tr:hover {
  background: #F4F6F9;
}
.sbTable > tfoot > tr > td {
  padding: 8px 6px 6px;
  color: #16325C;
  font-size: 14px;
}
/*
Side Panels 

Panel that slides out from the right side of the screen
*/
.sbPanel {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbPanel.open {
  right: 0px;
  display: block;
}
.sbPanel > a {
  text-align: right;
  font-size: 14px;
}
.sbPanel > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbPanel > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbPanel fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbPanel fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbPanel fieldset input,
.sbPanel fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbPanel .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbPanel .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
@font-face {
  font-family: 'sf-icons';
  src: url('../font/sf-icons.eot?13067676');
  src: url('../font/sf-icons.eot?13067676#iefix') format('embedded-opentype'), url('../font/sf-icons.svg?13067676#sf-icons') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sf-icons';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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AEAAAOhAAADoQAAAAEEAAOhBAADoQQAAAEIAAOhCAADoQgAAAEMAAOhDAADoQwAAAEQAAOhEAADoRAAAAEUAAOhFAADoRQAAAEYAAOhGAADoRgAAAEcAAOhHAADoRwAAAEgAAOhIAADoSAAAAEkAAOhJAADoSQAAAEoAAOhKAADoSgAAAEsAAOhLAADoSwAAAEwAAOhMAADoTAAAAE0AAOhNAADoTQAAAE4AAOhOAADoTgAAAE8AAOhPAADoTwAAAFAAAOhQAADoUAAAAFEAAOhRAADoUQAAAFIAAOhSAADoUgAAAFMAAOhTAADoUwAAAFQAAOhUAADoVAAAAFUAAOhVAADoVQAAAFYAAOhWAADoVgAAAFcAAOhXAADoVwAAAFgAAOhYAADoWAAAAFkAAOhZAADoWQAAAFoAAOhaAADoWgAAAFsAAOhbAADoWwAAAFwAAOhcAADoXAAAAF0AAOhdAADoXQAAAF4AAOheAADoXgAAAF8AAOhfAADoXwAAAGAAAOhgAADoYAAAAGEAAOhhAADoYQAAAGIAAOhiAADoYgAAAGMAAOhjAADoYwAAAGQAAOhkAADoZAAAAGUAAOhlAADoZQAAAGYAAOhmAADoZgAAAGcAAOhnAADoZwAAAGgAAOhoAADoaAAAAGkAAOhpAADoaQAAAGoAAOhqAADoagAAAGsAAOhrAADoawAAAGwAAOhsAADobAAAAG0AAOhtAADobQAAAG4AAOhuAADobgAAAG8AAOhvAADobwAAAHAAAOhwAADocAAAAHEAAOhxAADocQAAAHIAAOhyAADocgAAAHMAAOhzAADocwAAAHQAAOh0AADodAAAAHUAAOh1AADodQAAAHYAAOh2AADodgAAAHcAAOh3AADodwAAAHgAAOh4AADoeAAAAHkAAOh5AADoeQAAAHoAAOh6AADoegAAAHsAAOh7AADoewAAAHwAAOh8AADofAAAAH0AAOh9AADofQAAAH4AAOh+AADofgAAAH8AAOh/AADofwAAAIAAAOiAAADogAAAAIEAAOiBAADogQAAAIIAAOiCAADoggAAAIMAAOiDAADogwAAAIQAAOiEAADohAAAAIUAAOiFAADohQAAAIYAAOiGAADohgAAAIcAAOiHAADohwAAAIgAAAADAAAAAAPCAdIADAAZACYAOkA3CAQHAgYFAAEBAFQI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cHJvamVjdC5odHRwOi8vZm9udGVsbG8uY29tAEMAbwBwAHkAcgBpAGcAaAB0ACAAKABDACkAIAAyADAAMQA2ACAAYgB5ACAAbwByAGkAZwBpAG4AYQBsACAAYQB1AHQAaABvAHIAcwAgAEAAIABmAG8AbgB0AGUAbABsAG8ALgBjAG8AbQBzAGYALQBpAGMAbwBuAHMAUgBlAGcAdQBsAGEAcgBzAGYALQBpAGMAbwBuAHMAcwBmAC0AaQBjAG8AbgBzAFYAZQByAHMAaQBvAG4AIAAxAC4AMABzAGYALQBpAGMAbwBuAHMARwBlAG4AZQByAGEAdABlAGQAIABiAHkAIABzAHYAZwAyAHQAdABmACAAZgByAG8AbQAgAEYAbwBuAHQAZQBsAGwAbwAgAHAAcgBvAGoAZQBjAHQALgBoAHQAdABwADoALwAvAGYAbwBuAHQAZQBsAGwAbwAuAGMAbwBtAAAAAAIAAAAAAAAACgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiQECAQMBBAEFAQYBBwEIAQkBCgELAQwBDQEOAQ8BEAERARIBEwEUARUBFgEXARgBGQEaARsBHAEdAR4BHwEgASEBIgEjASQBJQEmAScBKAEpASoBKwEsAS0BLgEvATABMQEyATMBNAE1ATYBNwE4ATkBOgE7ATwBPQE+AT8BQAFBAUIBQwFEAUUBRgFHAUgBSQFKAUsBTAFNAU4BTwFQAVEBUgFTAVQBVQFWAVcBWAFZAVoBWwFcAV0BXgFfAWABYQFiAWMBZAFlAWYBZwFoAWkBagFrAWwBbQFuAW8BcAFxAXIBcwF0AXUBdgF3AXgBeQF6AXsBfAF9AX4BfwGAAYEBggGDAYQBhQGGAYcBiAGJAYoABTNkb3RzA2FkZAVjbG9zZQlwcmljZWJvb2sEaGVscAhub3RlYm9vawRyb3dzBnVwbG9hZAVjbG9jawZncm91cHMLb3Blbl9mb2xkZXIQcmlnaHRfYWxpZ25fdGV4dAdwcm9kdWN0DXF1ZXN0aW9uX2ZlZWQHd2FybmluZwR1c2VyBXJpZ2h0DG5vdGlmaWNhdGlvbgRob21lCGNvbnRyYWN0B2FkZHVzZXIEYXBwcwRjb3B5BWltYWdlBG9wZW4Ic2V0dGluZ3MGem9vbWluBnJlY29yZAlhcnJvd2Rvd24DY3V0D2luc2VydF90ZW1wbGF0ZQ1vcGVuZWRfZm9sZGVyCXNpZGVfbGlzdAd6b29tb3V0BnF1b3RlcwxyZWxhdGVkX2xpc3QEZ2RvYwdzbmlwcGV0BHBhZ2ULY3VzdG9tX2FwcHMHYXJyb3d1cAZhdHRhY2gHZGF5dmlldwRpbmZvEGluc2VydF90YWdfZmllbGQFcGFzdGUEc29ydANwZGYGcmVwb3J0BHRhc2sIYXBwcm92YWwLc29jaWFsc2hhcmUGcGVvcGxlBml0YWxpYwZkZWxldGUEYmFjawNiYW4FZW1haWwEYm9sZAdwcmV2aWV3BXNoYXJlCWRhc2hib2FyZAZ0aGFua3MFdG9kYXkKY29udHJhY3QtMQdzcGlubmVyBXBob3RvBWV2ZW50B2J1aWxkZXIManVzdGlmeV90ZXh0EWNlbnRlcl9hbGlnbl90ZXh0BGVkaXQGbGF5b3V0CHByaW9yaXR5EHN0YW5kYXJkX29iamVjdHMHY29udGFjdAhjdXN0b205MwdlbWFpbC0xB3N1Y2Nlc3MHcmVmcmVzaA9sZWZ0X2FsaWduX3RleHQEZG93bgVjaGFydARjaGF0BWVycm9yBGxlZnQLcmVtb3ZlX2xpbmsHc3VtbWFyeQhkb2N1bWVudAZkcmFmdHMNc3VtbWFyeWRldGFpbAdyZXBsYWNlBGxpa2UIZG93bmxvYWQFY2hlY2sLY2hldnJvbmxlZnQGZXhwYW5kBGxpbmsFcmVwbHkFdGFibGUEZmVlZAdldmVudC0xDnRpbGVfY2FyZF9saXN0FHJpY2h0ZXh0YnVsbGV0ZWRsaXN0BGxpc3QIZmF2b3JpdGUMY2hldnJvbnJpZ2h0C2NoZXZyb25kb3duBmZpbHRlcgRtb3ZlDnJpY2h0ZXh0aW5kZW50CXVuZGVybGluZQhmZWVkYmFjawRmaWxlBHVuZG8UcmljaHRleHRudW1iZXJlZGxpc3QEbG9jawpmaWx0ZXJsaXN0CWNoZXZyb251cAVjbGVhcgdmb3J3YXJkCm5ld193aW5kb3cPcmljaHRleHRvdXRkZW50BnVubG9jawtvcHBvcnR1bml0eQRwb3N0AnVwBnNlYXJjaANuZXcGZnJvemVuCGNvbW1lbnRzBnJlY2VudAltYWdpY3dhbmQYZGlzY291bnRzY2hlZHVsZWljb25zLTAy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') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sf-icons';
    src: url('../font/sf-icons.svg?13067676#sf-icons') format('svg');
  }
}
*/
[class^="sf-icon-"]:before,
[class*=" sf-icon-"]:before {
  font-family: "sf-icons";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: .2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transforml: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: .2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sf-icon-3dots:before {
  content: '\e800';
}
/* '' */
.sf-icon-add:before {
  content: '\e801';
}
/* '' */
.sf-icon-close:before {
  content: '\e802';
}
/* '' */
.sf-icon-pricebook:before {
  content: '\e803';
}
/* '' */
.sf-icon-help:before {
  content: '\e804';
}
/* '' */
.sf-icon-notebook:before {
  content: '\e805';
}
/* '' */
.sf-icon-rows:before {
  content: '\e806';
}
/* '' */
.sf-icon-upload:before {
  content: '\e807';
}
/* '' */
.sf-icon-clock:before {
  content: '\e808';
}
/* '' */
.sf-icon-groups:before {
  content: '\e809';
}
/* '' */
.sf-icon-open_folder:before {
  content: '\e80a';
}
/* '' */
.sf-icon-right_align_text:before {
  content: '\e80b';
}
/* '' */
.sf-icon-product:before {
  content: '\e80c';
}
/* '' */
.sf-icon-question_feed:before {
  content: '\e80d';
}
/* '' */
.sf-icon-warning:before {
  content: '\e80e';
}
/* '' */
.sf-icon-user:before {
  content: '\e80f';
}
/* '' */
.sf-icon-right:before {
  content: '\e810';
}
/* '' */
.sf-icon-notification:before {
  content: '\e811';
}
/* '' */
.sf-icon-home:before {
  content: '\e812';
}
/* '' */
.sf-icon-contract:before {
  content: '\e813';
}
/* '' */
.sf-icon-adduser:before {
  content: '\e814';
}
/* '' */
.sf-icon-apps:before {
  content: '\e815';
}
/* '' */
.sf-icon-copy:before {
  content: '\e816';
}
/* '' */
.sf-icon-image:before {
  content: '\e817';
}
/* '' */
.sf-icon-open:before {
  content: '\e818';
}
/* '' */
.sf-icon-settings:before {
  content: '\e819';
}
/* '' */
.sf-icon-zoomin:before {
  content: '\e81a';
}
/* '' */
.sf-icon-record:before {
  content: '\e81b';
}
/* '' */
.sf-icon-arrowdown:before {
  content: '\e81c';
}
/* '' */
.sf-icon-cut:before {
  content: '\e81d';
}
/* '' */
.sf-icon-insert_template:before {
  content: '\e81e';
}
/* '' */
.sf-icon-opened_folder:before {
  content: '\e81f';
}
/* '' */
.sf-icon-side_list:before {
  content: '\e820';
}
/* '' */
.sf-icon-zoomout:before {
  content: '\e821';
}
/* '' */
.sf-icon-quotes:before {
  content: '\e822';
}
/* '' */
.sf-icon-related_list:before {
  content: '\e823';
}
/* '' */
.sf-icon-gdoc:before {
  content: '\e824';
}
/* '' */
.sf-icon-snippet:before {
  content: '\e825';
}
/* '' */
.sf-icon-page:before {
  content: '\e826';
}
/* '' */
.sf-icon-custom_apps:before {
  content: '\e827';
}
/* '' */
.sf-icon-arrowup:before {
  content: '\e828';
}
/* '' */
.sf-icon-attach:before {
  content: '\e829';
}
/* '' */
.sf-icon-dayview:before {
  content: '\e82a';
}
/* '' */
.sf-icon-info:before {
  content: '\e82b';
}
/* '' */
.sf-icon-insert_tag_field:before {
  content: '\e82c';
}
/* '' */
.sf-icon-paste:before {
  content: '\e82d';
}
/* '' */
.sf-icon-sort:before {
  content: '\e82e';
}
/* '' */
.sf-icon-pdf:before {
  content: '\e82f';
}
/* '' */
.sf-icon-report:before {
  content: '\e830';
}
/* '' */
.sf-icon-task:before {
  content: '\e831';
}
/* '' */
.sf-icon-approval:before {
  content: '\e832';
}
/* '' */
.sf-icon-socialshare:before {
  content: '\e833';
}
/* '' */
.sf-icon-people:before {
  content: '\e834';
}
/* '' */
.sf-icon-italic:before {
  content: '\e835';
}
/* '' */
.sf-icon-delete:before {
  content: '\e836';
}
/* '' */
.sf-icon-back:before {
  content: '\e837';
}
/* '' */
.sf-icon-ban:before {
  content: '\e838';
}
/* '' */
.sf-icon-email:before {
  content: '\e839';
}
/* '' */
.sf-icon-bold:before {
  content: '\e83a';
}
/* '' */
.sf-icon-preview:before {
  content: '\e83b';
}
/* '' */
.sf-icon-share:before {
  content: '\e83c';
}
/* '' */
.sf-icon-dashboard:before {
  content: '\e83d';
}
/* '' */
.sf-icon-thanks:before {
  content: '\e83e';
}
/* '' */
.sf-icon-today:before {
  content: '\e83f';
}
/* '' */
.sf-icon-contract-1:before {
  content: '\e840';
}
/* '' */
.sf-icon-spinner:before {
  content: '\e841';
}
/* '' */
.sf-icon-photo:before {
  content: '\e842';
}
/* '' */
.sf-icon-event:before {
  content: '\e843';
}
/* '' */
.sf-icon-builder:before {
  content: '\e844';
}
/* '' */
.sf-icon-justify_text:before {
  content: '\e845';
}
/* '' */
.sf-icon-center_align_text:before {
  content: '\e846';
}
/* '' */
.sf-icon-edit:before {
  content: '\e847';
}
/* '' */
.sf-icon-layout:before {
  content: '\e848';
}
/* '' */
.sf-icon-priority:before {
  content: '\e849';
}
/* '' */
.sf-icon-standard_objects:before {
  content: '\e84a';
}
/* '' */
.sf-icon-contact:before {
  content: '\e84b';
}
/* '' */
.sf-icon-custom93:before {
  content: '\e84c';
}
/* '' */
.sf-icon-email-1:before {
  content: '\e84d';
}
/* '' */
.sf-icon-success:before {
  content: '\e84e';
}
/* '' */
.sf-icon-refresh:before {
  content: '\e84f';
}
/* '' */
.sf-icon-left_align_text:before {
  content: '\e850';
}
/* '' */
.sf-icon-down:before {
  content: '\e851';
}
/* '' */
.sf-icon-chart:before {
  content: '\e852';
}
/* '' */
.sf-icon-chat:before {
  content: '\e853';
}
/* '' */
.sf-icon-error:before {
  content: '\e854';
}
/* '' */
.sf-icon-left:before {
  content: '\e855';
}
/* '' */
.sf-icon-remove_link:before {
  content: '\e856';
}
/* '' */
.sf-icon-summary:before {
  content: '\e857';
}
/* '' */
.sf-icon-document:before {
  content: '\e858';
}
/* '' */
.sf-icon-drafts:before {
  content: '\e859';
}
/* '' */
.sf-icon-summarydetail:before {
  content: '\e85a';
}
/* '' */
.sf-icon-replace:before {
  content: '\e85b';
}
/* '' */
.sf-icon-like:before {
  content: '\e85c';
}
/* '' */
.sf-icon-download:before {
  content: '\e85d';
}
/* '' */
.sf-icon-check:before {
  content: '\e85e';
}
/* '' */
.sf-icon-chevronleft:before {
  content: '\e85f';
}
/* '' */
.sf-icon-expand:before {
  content: '\e860';
}
/* '' */
.sf-icon-link:before {
  content: '\e861';
}
/* '' */
.sf-icon-reply:before {
  content: '\e862';
}
/* '' */
.sf-icon-table:before {
  content: '\e863';
}
/* '' */
.sf-icon-feed:before {
  content: '\e864';
}
/* '' */
.sf-icon-event-1:before {
  content: '\e865';
}
/* '' */
.sf-icon-tile_card_list:before {
  content: '\e866';
}
/* '' */
.sf-icon-richtextbulletedlist:before {
  content: '\e867';
}
/* '' */
.sf-icon-list:before {
  content: '\e868';
}
/* '' */
.sf-icon-favorite:before {
  content: '\e869';
}
/* '' */
.sf-icon-chevronright:before {
  content: '\e86a';
}
/* '' */
.sf-icon-chevrondown:before {
  content: '\e86b';
}
/* '' */
.sf-icon-filter:before {
  content: '\e86c';
}
/* '' */
.sf-icon-move:before {
  content: '\e86d';
}
/* '' */
.sf-icon-richtextindent:before {
  content: '\e86e';
}
/* '' */
.sf-icon-underline:before {
  content: '\e86f';
}
/* '' */
.sf-icon-feedback:before {
  content: '\e870';
}
/* '' */
.sf-icon-file:before {
  content: '\e871';
}
/* '' */
.sf-icon-undo:before {
  content: '\e872';
}
/* '' */
.sf-icon-richtextnumberedlist:before {
  content: '\e873';
}
/* '' */
.sf-icon-lock:before {
  content: '\e874';
}
/* '' */
.sf-icon-filterlist:before {
  content: '\e875';
}
/* '' */
.sf-icon-chevronup:before {
  content: '\e876';
}
/* '' */
.sf-icon-clear:before {
  content: '\e877';
}
/* '' */
.sf-icon-forward:before {
  content: '\e878';
}
/* '' */
.sf-icon-new_window:before {
  content: '\e879';
}
/* '' */
.sf-icon-richtextoutdent:before {
  content: '\e87a';
}
/* '' */
.sf-icon-unlock:before {
  content: '\e87b';
}
/* '' */
.sf-icon-opportunity:before {
  content: '\e87c';
}
/* '' */
.sf-icon-post:before {
  content: '\e87d';
}
/* '' */
.sf-icon-up:before {
  content: '\e87e';
}
/* '' */
.sf-icon-search:before {
  content: '\e87f';
}
/* '' */
.sf-icon-new:before {
  content: '\e880';
}
/* '' */
.sf-icon-frozen:before {
  content: '\e881';
}
/* '' */
.sf-icon-comments:before {
  content: '\e882';
}
/* '' */
.sf-icon-recent:before {
  content: '\e883';
}
/* '' */
.sf-icon-magicwand:before {
  content: '\e884';
}
/* '' */
.sf-icon-discountscheduleicons-02:before {
  content: '\e885';
}
/* '' */
.sf-icon-custom90:before {
  content: '\e886';
}
/* '' */
.sf-icon-cancel-circled:before {
  content: '\e886';
}
/* '' */
.sf-icon-custom26:before {
  content: '\e887';
}
/* '' */
/* The following is copied from icons/css/sb-embedded.css as less-plugin-clean-css could handle a @import */
@font-face {
  font-family: 'sb';
  src: url('../font/sb.eot?49340248');
  src: url('../font/sb.eot?49340248#iefix') format('embedded-opentype'), url('../font/sb.svg?49340248#sb') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'sb';
  src: url('data:application/octet-stream;base64,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') format('woff'), url('data:application/octet-stream;base64,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') format('truetype');
}
/* Chrome hack: SVG is rendered more smooth in Windozze. 100% magic, uncomment if you need it. */
/* Note, that will break hinting! In other OS-es font will be not as sharp as it could be */
/*
@media screen and (-webkit-min-device-pixel-ratio:0) {
  @font-face {
    font-family: 'sb';
    src: url('../font/sb.svg?49340248#sb') format('svg');
  }
}
*/
[class^="sb-icon-"]:before,
[class*=" sb-icon-"]:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-right: .2em;
  text-align: center;
  /* opacity: .8; */
  /* For safety - reset parent styles, that can break glyph codes*/
  font-variant: normal;
  text-transform: none;
  /* fix buttons height, for twitter bootstrap */
  line-height: 1em;
  /* Animation center compensation - margins should be symmetric */
  /* remove if not needed */
  margin-left: .2em;
  /* you can be more comfortable with increased icons size */
  /* font-size: 120%; */
  /* Uncomment for 3D effect */
  /* text-shadow: 1px 1px 1px rgba(127, 127, 127, 0.3); */
}
.sb-icon-filter:before {
  content: '\e800';
}
/* '' */
.sb-icon-th-large:before {
  content: '\e801';
}
/* '' */
.sb-icon-th:before {
  content: '\e802';
}
/* '' */
.sb-icon-th-list:before {
  content: '\e803';
}
/* '' */
.sb-icon-pencil:before {
  content: '\e804';
}
/* '' */
.sb-icon-cancel:before {
  content: '\e805';
}
/* '' */
.sb-icon-plus:before {
  content: '\e806';
}
/* '' */
.sb-icon-cog:before {
  content: '\e807';
}
/* '' */
.sb-icon-align-justify:before {
  content: '\e808';
}
/* '' */
.sb-icon-ok:before {
  content: '\e809';
}
/* '' */
.sb-icon-lock:before {
  content: '\e80a';
}
/* '' */
.sb-icon-exchange:before {
  content: '\e80b';
}
/* '' */
.sb-icon-down:before {
  content: '\e80c';
}
/* '' */
.sb-icon-up:before {
  content: '\e80d';
}
/* '' */
.sb-icon-help-circled:before {
  content: '\e80e';
}
/* '' */
.sb-icon-info-circled:before {
  content: '\e80f';
}
/* '' */
.sb-icon-sort-name-up:before {
  content: '\e810';
}
/* '' */
.sb-icon-sort-name-down:before {
  content: '\e811';
}
/* '' */
.sb-icon-down-dir:before {
  content: '\e812';
}
/* '' */
.sb-icon-up-dir:before {
  content: '\e813';
}
/* '' */
.sb-icon-compass:before {
  content: '\e814';
}
/* '' */
.sb-icon-right-dir:before {
  content: '\e815';
}
/* '' */
.sb-icon-left-dir:before {
  content: '\e816';
}
/* '' */
.sb-icon-docs:before {
  content: '\e817';
}
/* '' */
.sb-icon-circle-empty:before {
  content: '\e818';
}
/* '' */
.sb-icon-dot-circled:before {
  content: '\e819';
}
/* '' */
.sb-icon-to-end:before {
  content: '\e81a';
}
/* '' */
.sb-icon-to-start:before {
  content: '\e81b';
}
/* '' */
.sb-icon-fast-forward:before {
  content: '\e81c';
}
/* '' */
.sb-icon-fast-backward:before {
  content: '\e81d';
}
/* '' */
.sb-icon-cw:before {
  content: '\e81e';
}
/* '' */
.sb-icon-level-down:before {
  content: '\e81f';
}
/* '' */
.sb-icon-attention:before {
  content: '\e820';
}
/* '' */
.sb-icon-attention-circled:before {
  content: '\e821';
}
/* '' */
.sb-icon-search:before {
  content: '\e822';
}
/* '' */
.sb-icon-ccw:before {
  content: '\e823';
}
/* '' */
.sb-icon-star:before {
  content: '\e824';
}
/* '' */
.sb-icon-star-empty:before {
  content: '\e825';
}
/* '' */
/* end of import from sb-embedded.css */
.sb *[class^="sb-icon-"]:before,
.sb *[class*=" sb-icon-"]:before {
  font-family: 'sb';
  color: inherit;
  /* Better Font Rendering =========== */
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.sb-icon-exchange:before {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.sb-icon-loading {
  width: 148px;
  text-align: center;
}
.sb-icon-loading > div {
  width: 36px;
  height: 18px;
  margin: 2px;
  background-color: #0070d2;
  border-radius: 10%;
  display: inline-block;
  -webkit-animation: bouncedelay 1.4s infinite ease-in-out;
  animation: bouncedelay 1.4s infinite ease-in-out;
  /* Prevent first frame from flickering when animation starts */
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}
.sb-icon-loading .sb-icon-bounce1 {
  -webkit-animation-delay: -0.32s;
  animation-delay: -0.32s;
}
.sb-icon-loading .sb-icon-bounce2 {
  -webkit-animation-delay: -0.16s;
  animation-delay: -0.16s;
}
.sbPageTitle .sf-icon-custom90 {
  background-color: #5A9CDD;
}
.sbPageTitle .sf-icon-custom93 {
  background-color: #904D4C;
}
.sbPageTitle .sf-icon-product {
  background-color: #B781D3;
}
.sbPageTitle .sf-icon-settings {
  background-color: #EDB566;
}
.sbPageTitle .sf-icon-download {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-contract-1 {
  background-color: #6EC06E;
}
.sbPageTitle .sf-icon-approval {
  background-color: #00C6B7;
}
.sbPageTitle .sf-icon-post {
  background-color: #65CAE4;
}
.sbPageTitle .sf-icon-gdoc {
  background-color: #54698D;
}
.sbPageTitle .sf-icon-document {
  background-color: #baac93;
}
.sbPageTitle .sf-icon-recent {
  background-color: #6CA1E9;
}
.sbPageTitle .sf-icon-copy {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-favorite {
  background-color: #FF7B84;
}
.sbPageTitle .sf-icon-refresh.resize {
  background-color: #6CA0E9;
}
.sbPageTitle .sf-icon-replace {
  background-color: #54698D;
}
@-webkit-keyframes bouncedelay {
  0%,
  80%,
  100% {
    -webkit-transform: scale(0);
  }
  40% {
    -webkit-transform: scale(1);
  }
}
@keyframes bouncedelay {
  0%,
  80%,
  100% {
    transform: scale(0);
    -webkit-transform: scale(0);
  }
  40% {
    transform: scale(1);
    -webkit-transform: scale(1);
  }
}
#bodyCell {
  position: relative;
  overflow: hidden;
  padding: 0px;
  display: inline-block;
  width: 100%;
  min-height: 500px;
}
#bodyDiv_setup > .outer {
  background-color: #ffffff !important;
}
#bodyDiv_setup > .outer .oLeft {
  background-color: #f4f6f9 !important;
}
#sidebarCell.sidebarCollapsed {
  padding-left: 0;
}
#sidebarCell.sidebarCollapsed + #bodyCell {
  margin-left: -1px;
}
#MoreTabs_Tab > #MoreTabs_List {
  z-index: 10;
}
table td {
  font-family: inherit;
}
.sb ul li,
.sb ol li {
  margin: 0;
  padding: 0;
}
.sb .message {
  border-radius: 3px;
  margin: 15px 15px 0 24px;
  padding: 12px;
  font-size: 14px;
  color: #16325C;
  display: inline-block;
  background: none;
}
.sb .message .msgIcon {
  background: none;
  width: 0;
  height: 0;
}
.sb .message .messageText {
  margin: 0 0 0 30px;
}
.sb .message .messageText > span,
.sb .message .messageText h4,
.sb .message .messageText > div {
  display: inline-block;
  vertical-align: top;
  line-height: 20px;
}
.sb .message .messageText h4 {
  margin-left: 10px;
  margin-right: 6px;
}
.sb .message .messageText > div:not(:first-of-type) {
  display: block;
}
.sb .message .messageText:before {
  font-family: "sb";
  font-style: normal;
  font-weight: normal;
  font-size: 20px;
  speak: none;
  display: inline-block;
  text-decoration: inherit;
  width: 1em;
  margin-left: -30px;
  text-align: center;
  font-variant: normal;
  text-transform: none;
  line-height: 1em;
}
.sb .message.errorM2 .messageText,
.sb .message.errorM3 .messageText,
.sb .message.errorM4 .messageText,
.sb .message.errorM5 .messageText,
.sb .message.errorM6 .messageText {
  color: #cc0000;
}
.sb .message.errorM2 .messageText:before,
.sb .message.errorM3 .messageText:before,
.sb .message.errorM4 .messageText:before,
.sb .message.errorM5 .messageText:before,
.sb .message.errorM6 .messageText:before {
  content: '\e821';
}
.sb .message.warningM2 .messageText,
.sb .message.warningM3 .messageText,
.sb .message.warningM4 .messageText,
.sb .message.warningM5 .messageText,
.sb .message.warningM6 .messageText {
  color: #d98633;
}
.sb .message.warningM2 .messageText:before,
.sb .message.warningM3 .messageText:before,
.sb .message.warningM4 .messageText:before,
.sb .message.warningM5 .messageText:before,
.sb .message.warningM6 .messageText:before {
  content: '\e820';
}
.sb .message.infoM2 .messageText,
.sb .message.infoM3 .messageText,
.sb .message.infoM4 .messageText,
.sb .message.infoM5 .messageText,
.sb .message.infoM6 .messageText {
  color: #0000cc;
}
.sb .message.infoM2 .messageText:before,
.sb .message.infoM3 .messageText:before,
.sb .message.infoM4 .messageText:before,
.sb .message.infoM5 .messageText:before,
.sb .message.infoM6 .messageText:before {
  content: '\e80f';
}
.sb,
.ui-tooltip {
  font-size: 10px;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif !important;
}
.sb * {
  box-sizing: border-box;
}
.sb *.hidden {
  display: none;
}
.sbClear,
.sbPageBlockSection:after {
  content: "";
  display: table;
  clear: both;
}
.sbLink {
  color: #0070D2;
}
#sbCpqSettings {
  padding: 15px;
}
#sbCpqSettings .bPageBlock {
  border: 0 !important;
  background: none !important;
}
#sbCpqSettings .sbTabs {
  font-family: inherit;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line {
  border-bottom: 1px solid #d0d0d0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-cell-active {
  border-bottom: 4px solid #166bbf;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-border {
  display: none;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tabhdr-side-cell {
  border: 0;
}
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-active,
#sbCpqSettings .sbTabs > tbody > tr:nth-child(1) > .rich-tab-bottom-line .rich-tab-inactive {
  background: none !important;
  font-size: 14px !important;
  padding: 0 16px 6px 16px;
}
#sbCpqSettings .sbTabs .rich-tab-header,
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  font-family: inherit !important;
  font-size: inherit !important;
}
#sbCpqSettings .sbTabs .rich-tabpanel-content {
  background: none !important;
  border: 0 !important;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .dataCol {
  padding-top: 8px;
  padding-bottom: 8px;
  vertical-align: middle;
}
#sbCpqSettings .sbTabs .labelCol,
#sbCpqSettings .sbTabs .data2Col {
  font-size: 14px;
  font-weight: normal;
}
#sbCpqSettings .sbTabs input:not([type=submit]):not([type=checkbox]),
#sbCpqSettings .sbTabs select {
  font-size: 14px;
  width: 220px !important;
}
#sbCpqSettings .sbTabs .sbBtn {
  font-size: inherit;
}
.themePage .sbHeaderBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderSecondaryBgColor {
  color: #f4f6f9;
}
.themePage .sbHeaderBorderColor {
  color: #d0d0d0;
}
.themePage .sbHeaderFontColor {
  color: #16325c;
}
.themePage .sbHeaderSupportFontColor {
  color: #54698d;
}
.themePage .sbBgColor {
  color: #ffffff;
}
.themePage .sbDetailBgColor {
  color: #f4f6f9;
}
.themePage .sbFontColor {
  color: #16325C;
}
.themePage .sbSecondaryFontColor {
  color: #696969;
}
.themePage .sbBorderColor {
  color: #D8DDE6;
}
.themePage .sbTableHeaderFontColor {
  color: #54698d;
}
.themePage .sbTableRowHoverColor {
  color: #F4F6F9;
}
.themePage .sbGroupBtnBgColor {
  color: #ffffff;
}
.themePage .sbGroupBtnBorderColor {
  color: #d8dde6;
}
.themePage .sbGroupBtnFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnHoverBgColor {
  color: #f4f6f9;
}
.themePage .sbGroupBtnHoverFontColor {
  color: #0070d2;
}
.themePage .sbGroupBtnDisabledFontColor {
  color: #bebebe;
}
.themePage .sbPrimaryBtnBgColor {
  color: #0070d2;
}
.themePage .sbPrimaryBtnFontColor {
  color: #ffffff;
}
.themePage .sbPrimaryBtnHoverBgColor {
  color: #005fb2;
}
.themePage .sbAccentIconColor {
  color: #0070d2;
}
.themePage .sbAccentIconHoverColor {
  color: #16325c;
}
.themePage .sbAccentIconDisabledColor {
  color: #888888;
}
.themePage .sbIconColor {
  color: #888;
}
.themePage .sbTabSelectedColor {
  color: #166bbf;
}
.themePage {
  color: #16325C;
  background-color: #ffffff;
}
.themePage .sbTitles h2 {
  color: #54698d;
}
.themePage .sbBtn {
  background: #ffffff;
  color: #0070d2;
  border-color: #d8dde6;
}
.themePage .sbBtn:hover {
  background: #f4f6f9;
  color: #0070d2;
}
.themePage .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  border-color: #0070d2;
  color: #ffffff;
}
.themePage .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
.themePage .normal.sf-icon-copy:before {
  color: #888;
}
.themePage .accent.sf-icon-copy:before {
  color: #0070d2;
}
.themePage .accent.sf-icon-copy:hover::before {
  color: #16325c;
}
.themePage .disabled.sf-icon-copy:before {
  color: #888888;
}
.themePage .sf-icon-copy {
  font-size: 24px;
  padding-right: 40px;
}
.themePage .sbTable > tbody > tr > td {
  font-size: 10px;
}
.themePage .demoItems {
  border: 1px solid #000000;
  padding: 0px;
  margin-left: 60px;
  margin-right: 60px;
  padding-top: 20px;
  padding-bottom: 20px;
  padding-left: 20px;
  padding-right: 20px;
  margin-top: 40px;
  border-color: #D8DDE6 !important;
}
.themePage .bottomPadding {
  padding-bottom: 40px;
}
.themePage .themeHeader {
  padding-top: 40px;
  padding-left: 60px;
  padding-bottom: 10px;
  border-bottom-style: solid !important;
  border-bottom-width: 1px !important;
  border-bottom-color: #D8DDE6 !important;
}
.themePage .themeHeader h3 {
  color: #16325C !important;
}
.themePage .colorPickWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .colorPickWrapper span {
  position: relative;
  top: 11px;
}
.themePage .fieldWrapper {
  width: 300px;
  display: inline-block;
  margin-left: 55px;
  margin-right: 55px;
  margin-top: 40px;
}
.themePage .fieldWrapper > input {
  float: right;
  margin-right: 25px;
  margin-top: 9px;
}
.themePage .fieldWrapper span {
  position: relative;
  top: 11px;
}
.themePage .backgroundHide {
  display: none;
}
.themePage .sp-replacer.sp-light.full-spectrum {
  float: right;
  margin-right: 10px;
}
.themePage .content {
  font-size: 14px;
}
.themePage .sbButtons {
  margin-left: 10px;
}
.themePage .sp-replacer {
  border-color: #d8dde6 !important;
  padding: 0 !important;
  background-color: inherit !important;
  border-radius: 5px;
}
.themePage .sp-dd {
  line-height: 40px !important;
  height: 40px!important;
}
.themePage .sp-preview {
  margin-right: 0px !important;
  width: 40px !important;
  height: 40px !important;
  border-width: 0px !important;
}
.themePage .sp-container {
  background-color: #ffffff !important;
  border: 1px solid #d8dde6 !important;
  border-radius: 5px!important;
}
#sbTranslate .sbDescription {
  width: 90%;
}
#sbTranslate .sbLongTextArea {
  width: 90%;
  border: 1px solid #D8DDE6;
}
#sbTranslate .sbPageBlockSection {
  background: none;
  border: none;
}
#sbTranslate .sbPageBlockSection select {
  min-width: 200px;
  font-size: 14px;
}
#sbTranslate .sbPageBlockSection > span {
  font-size: 14px;
  padding: 0 20px 0 40px;
}
#sbTranslate .sbFieldsTable {
  margin-top: 0;
  padding-top: 0;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(1),
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 20%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 60%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(1) {
  width: 15%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(2) {
  width: 30%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td:nth-child(3) {
  width: 55%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > input,
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td textarea {
  width: 100%;
}
#sbTranslate .sbUserDefinedFieldsTable > .sbTable > tbody > tr > td > textarea {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 35px;
}
#sbTranslate .sbTable .sbButtons {
  background: none;
}
#sbTranslate .sbTable .sbButtons .sbBtn {
  width: 35px;
  height: 40px;
}
#sbTranslate .cke_textarea_inline {
  border: 1px solid #D8DDE6;
  border-radius: 3px;
  padding: 0 5px;
  min-height: 70px;
}
#sbAssetSearch .sbTable {
  font-size: 10px;
}
#sbAssetSearch .sbTable > thead > tr > th:first-of-type,
#sbAssetSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbAssetSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbAssetSearch .sbTools {
  float: right;
}
#sbAssetSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbAssetSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbAssetSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbAssetSearch .sbPageBlockSection {
  background: none;
  border: none;
}
#sbAssetSearch .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbAssetSearch table.sbTable {
  margin-bottom: 50px;
}
#sbAssetSearch .paginationControlsWrapper {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  pointer-events: none;
}
#sbAssetSearch .paginationControls {
  padding: 4px;
  text-align: center;
  vertical-align: middle;
  margin-left: auto;
  margin-right: auto;
  width: 250px;
  pointer-events: auto;
  background-color: #ffffff;
  -webkit-border-top-left-radius: 4px;
  -webkit-border-top-right-radius: 4px;
  -moz-border-radius-topleft: 4px;
  -moz-border-radius-topright: 4px;
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
  -webkit-box-shadow: 3px 0px 5px 0px #aaaaaa;
  -moz-box-shadow: 3px 0px 5px 0px #aaaaaa;
  box-shadow: 3px 0px 5px 0px #aaaaaa;
}
#sbAssetSearch .paginationControls span {
  vertical-align: middle;
}
#sbAssetSearch .paginationControls input {
  height: auto;
  width: 30px;
  margin: 0 5px;
  font-size: 10px;
  padding: 2px;
  text-align: center;
}
#sbAssetSearch .paginationControls [class^=sb-icon] {
  font-size: 20px;
  margin-right: -5px;
  vertical-align: middle;
}
#sbAssetSearch .paginationControls [class^=sb-icon].disabled {
  color: #888888;
}
#sbAssetSearch .paginationControls [class^=sb-icon]:not(.disabled) {
  cursor: pointer;
}
#sbAssetSearch .paginationControls .sb-icon-left-dir,
#sbAssetSearch .paginationControls .sb-icon-right-dir {
  font-size: 20px;
}
.sbAssetFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 113px;
}
.sbAssetFilter.open {
  right: 0px;
  display: block;
}
.sbAssetFilter > a {
  text-align: right;
  font-size: 14px;
}
.sbAssetFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbAssetFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbAssetFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbAssetFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbAssetFilter fieldset input,
.sbAssetFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbAssetFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbAssetFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbAssetFilter input {
  display: inline;
}
.sbAssetFilter div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
#sbSelectContract .sbTable {
  font-size: 10px;
}
#sbSelectContract .sbTable > thead > tr > th:first-of-type,
#sbSelectContract .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbSelectContract .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbSelectContract .sbTools {
  float: right;
}
#sbSelectContract .sbPageBlockSection {
  background: #ffffff;
  border: none;
}
#sbAmendContract .sbTable {
  font-size: 10px;
}
#sbAmendContract .sbTable > thead > tr > th:first-of-type,
#sbAmendContract .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbAmendContract .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbAmendContract .sbTools {
  float: right;
}
#sbAmendContract .sbPageBlockSection {
  background: #ffffff;
  border: none;
}
#sbAmendContract .sbPageTitle > .sbPageTitleTable > .sbPageTitleLeft [class^=sf-icon]:before {
  top: 0px;
}
#sbAmendContract .sbLoadingMask {
  visibility: hidden;
}
@media only screen and (min-device-width: 320px) and (max-device-width: 640px) {
  #sbAmendContract .sbPageTitleRight {
    display: block;
    text-align: center;
  }
  #sbAmendContract .sbPageTitleRight .sbButtons {
    float: none;
  }
}
/*
Document Generation Preview page

Previews a document in the browser with chosen template, additional docs, etc.
*/
#sbDocGenPreview .sbPageBlockSection {
  display: inline-block;
  padding: 0;
  background: none;
  border: none;
  margin-right: 44px;
}
#sbDocGenPreview .sbPageBlockSection:last-of-type {
  margin-right: inherit;
}
#sbDocGenPreview .sbDualListBox select {
  width: 320px;
}
/*
Document Generation options

Choices for document generation such as template, output format, etc.
*/
#sbDocGenOptions {
  margin: 0 0 0 40px;
}
#sbDocGenOptions label {
  font-size: 14px;
}
#sbDocGenOptions > tbody > tr > td {
  vertical-align: middle;
  padding-bottom: 8px;
}
#sbDocGenOptions > tbody > tr > td:first-of-type {
  text-align: right;
}
#sbDocGenOptions > tbody > tr > td:first-of-type > [class^=sb-icon] {
  font-size: 15px;
  color: #888;
}
#sbDocGenOptions input,
#sbDocGenOptions select {
  width: 325px;
}
#sbDocGenOptions .sbDualListBox select {
  width: 320px;
}
#sbImportLines #sbImportOptions {
  margin: 0 0 0 40px;
}
#sbImportLines #sbImportOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbImportLines #sbImportOptions fieldset > label {
  margin-right: 10px;
  font-size: 14px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbImportLines #sbImportOptions fieldset > input,
#sbImportLines #sbImportOptions fieldset select {
  width: 200px;
}
#sbImportLines .sbPageBlockSection {
  background: none;
  border: none;
}
#sbImportLines .sbPageBlockSection header {
  margin-bottom: 10px;
}
#sbLineEditor .sbPageTitle .sbPageTitleRight {
  text-align: right;
}
#sbLineEditor .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbLineEditor .sbPageTitle .sbTools {
  margin-left: 16px;
  padding: 7px 0;
  transition: all 0.25s ease-in;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool {
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.icon {
  padding: 8px 7px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool.sf-icon-down {
  padding-top: 8px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool .sf-icon-refresh:before {
  font-size: 1.1em;
  margin-top: 0.3em;
  margin-bottom: 0.3em;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > menu .separator {
  border-bottom: 1px solid #D8DDE6;
  margin-bottom: 6px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbTool > [class^=sb-icon] {
  font-size: 14px;
}
#sbLineEditor .sbPageTitle .sbTools > .sbToolSeparator {
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbLineEditor .sbPageTitle #sbRollupMenuQuote > ul.sbTools > li.sbToolSeparator {
  display: none;
}
#sbLineEditor .sbPageTitle #sbRollupMenuQuote > span.sf-icon-down {
  display: inline-block;
  padding: 8px 12px;
}
#sbLineEditor .sbQuoteActions .renewSubscriptionsBtn,
#sbLineEditor .sbGroupActions .renewSubscriptionsBtn,
#sbLineEditor .sbQuoteActions .upgradeAssetsBtn,
#sbLineEditor .sbGroupActions .upgradeAssetsBtn,
#sbLineEditor .sbQuoteActions .resetDiscBtn,
#sbLineEditor .sbGroupActions .resetDiscBtn,
#sbLineEditor .sbQuoteActions .optionalAllBtn,
#sbLineEditor .sbGroupActions .optionalAllBtn,
#sbLineEditor .sbQuoteActions .optionalNoneBtn,
#sbLineEditor .sbGroupActions .optionalNoneBtn,
#sbLineEditor .sbQuoteActions .deleteLinesBtn,
#sbLineEditor .sbGroupActions .deleteLinesBtn,
#sbLineEditor .sbQuoteActions .addGroupBtn,
#sbLineEditor .sbGroupActions .addGroupBtn,
#sbLineEditor .sbQuoteActions .ungroupBtn,
#sbLineEditor .sbGroupActions .ungroupBtn {
  display: none;
}
#sbLineEditor .sbQuoteActions .sbTool.first,
#sbLineEditor .sbGroupActions .sbTool.first {
  border: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.end,
#sbLineEditor .sbGroupActions .sbTool.end,
#sbLineEditor .sbQuoteActions .sbTool.last,
#sbLineEditor .sbGroupActions .sbTool.last {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator {
  padding: 0;
  border: none;
  background-color: inherit;
}
#sbLineEditor .sbQuoteActions .sbTool.sbToolSeparator + .sbTool,
#sbLineEditor .sbGroupActions .sbTool.sbToolSeparator + .sbTool {
  border-left: 1px solid #d8dde6;
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction),
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) {
  padding: 0;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction):hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction):hover {
  background-color: #fff;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i {
  display: inline-block;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span:hover,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i:hover,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) i:hover {
  background-color: #F4F6F9;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span.sf-icon-down,
#sbLineEditor .sbGroupActions > .sbTools > .sbTool:not(#sbRollupMenuQuote):not(.sbPrimaryAction) > span.sf-icon-down {
  border-left: 1px solid #d8dde6;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction {
  padding: 0;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction > span,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction > span,
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction i,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction i {
  display: inline-block;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbPrimaryAction > span.sf-icon-down,
#sbLineEditor .sbGroupActions > .sbTools > .sbPrimaryAction > span.sf-icon-down {
  border-left: 1px solid #d8dde6;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > span.label,
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > i {
  padding: 8px 12px;
}
#sbLineEditor .sbQuoteActions > .sbTools > .sbTool:not(#sbRollupMenuQuote) > span.sf-icon-down {
  padding: 8px 4px;
}
#sbLineEditor.upgradable li.upgradeAssetsBtn {
  display: block;
}
#sbLineEditor.renewable li.renewSubscriptionsBtn {
  display: block;
}
#sbLineEditor.discountable li.resetDiscBtn {
  display: block;
}
#sbLineEditor.optional:not(.allSelected) .sbQuoteActions li.optionalAllBtn,
#sbLineEditor.optional.allSelected .sbQuoteActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.optional .sbGroupActions li.optionalAllBtn,
#sbLineEditor.optional .sbGroupActions li.optionalNoneBtn {
  display: block;
}
#sbLineEditor.multiDelete .sbQuoteActions .deleteLinesBtn {
  display: block;
}
#sbLineEditor.groupable li.addGroupBtn {
  display: block;
}
#sbLineEditor.ungroupable li.addGroupBtn {
  display: none;
}
#sbLineEditor.ungroupable li.addGroupBtn,
#sbLineEditor.ungroupable li.ungroupBtn {
  display: block;
}
#sbLineEditor .sbQuoteActions ul,
#sbLineEditor .sbGroupActions ul {
  list-style-type: none;
}
#sbLineEditor .sbQuoteActions ul.sbTools,
#sbLineEditor .sbGroupActions ul.sbTools {
  padding: 0;
  margin: 0;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction),
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) {
  display: block;
  position: relative;
  color: #0070D2;
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction).action > .label:hover,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction).action > .label:hover {
  cursor: pointer;
  color: #0070d2;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down {
  cursor: pointer;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul {
  display: block;
}
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul.sbSolutionGroups,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-right.open + ul.sbSolutionGroups,
#sbLineEditor .sbQuoteActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul.sbSolutionGroups,
#sbLineEditor .sbGroupActions ul li:not(.sbPrimaryAction) span.sf-icon-down.open + ul.sbSolutionGroups {
  max-height: 450px;
  overflow-y: auto;
}
#sbLineEditor .sbQuoteActions ul ul,
#sbLineEditor .sbGroupActions ul ul {
  display: none;
  position: absolute;
  top: 100%;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbQuoteActions ul ul li,
#sbLineEditor .sbGroupActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbQuoteActions ul ul ul,
#sbLineEditor .sbGroupActions ul ul ul {
  top: -1px;
}
#sbLineEditor .sbQuoteActions > ul,
#sbLineEditor .sbGroupActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbQuoteActions > ul > li > ul,
#sbLineEditor .sbGroupActions > ul > li > ul {
  right: -1px;
}
#sbLineEditor .sbQuoteActions > ul > li.action > .label:hover,
#sbLineEditor .sbGroupActions > ul > li.action > .label:hover {
  color: #0070d2;
}
#sbLineEditor .sbQuoteActions ul li {
  font-size: 14px;
}
#sbLineEditor .sbQuoteActions > ul > li {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteActions > ul > li.last ul ul {
  right: 100%;
}
#sbLineEditor .sbQuoteActions > ul > li:not(.last) ul ul {
  left: 100%;
}
#sbLineEditor .sbQuoteFields {
  margin: 15px 15px;
}
#sbLineEditor .sbQuoteFields header {
  margin-bottom: 10px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td {
  padding: 5px 0;
  vertical-align: middle;
  font-size: 14px;
  white-space: nowrap;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td input,
#sbLineEditor .sbQuoteFields table > tbody > tr > td select {
  font-size: inherit;
  width: 140px;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search] {
  color: #0070d2;
  margin-left: 3px;
  vertical-align: middle;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td [class=sb-icon-search]:hover {
  color: #16325c;
}
#sbLineEditor .sbQuoteFields table > tbody > tr > td.sbLabel {
  text-align: right;
  vertical-align: middle;
  padding-right: 12px;
  width: 15%;
}
#sbLineEditor .sbTable input,
#sbLineEditor .sbTable select {
  font-size: inherit;
}
#sbLineEditor .sbTable input.sbSmall,
#sbLineEditor .sbTable select.sbSmall {
  max-width: 80px;
}
#sbLineEditor .sbTable input:disabled,
#sbLineEditor .sbTable select:disabled {
  background-color: #f4f6f9;
}
#sbLineEditor .sbTable input.hasDatepicker,
#sbLineEditor .sbTable select.hasDatepicker {
  min-width: 95px;
  width: 85%;
}
#sbLineEditor .sbTable > thead > tr > th:first-of-type,
#sbLineEditor .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor .sbTable > thead > tr > th:last-of-type,
#sbLineEditor .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable select {
  min-width: 20px;
  margin-left: 4px;
}
#sbLineEditor .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbLineEditor .sbTable > tbody > tr > td.right input {
  text-align: right;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor .sbTable > tbody > tr > td a > span[class^=sb-icon]:hover {
  color: #16325c;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbTable > tbody > tr > td .sf-icon-edit.sbMDQicon {
  margin-right: -11em;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions {
  text-align: left;
  white-space: nowrap;
  width: 1%;
  padding-left: 15px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .action:hover,
#sbLineEditor .sbTable > tbody > tr > td.sbActions .url:hover {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul {
  display: inline-block;
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul > li.menu {
  padding: 5px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions > ul > li.menu .sbAction {
  padding: 5px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul {
  padding: 0;
  margin: 0;
  list-style-type: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li {
  display: inline-block;
  position: relative;
  color: #0070D2;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li.action > .label:hover {
  cursor: pointer;
  color: #16325C;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right {
  cursor: pointer;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li span.sf-icon-right.open + ul {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul li ul li {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul {
  display: none;
  position: absolute;
  top: -1px;
  white-space: nowrap;
  background-color: #ffffff;
  border-radius: 4px;
  border: 1px solid #d8dde6;
  z-index: 4;
  text-align: left;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions ul ul li {
  padding: 5px 10px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction {
  padding: 2px;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions .sbAction.action {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.removable) .sb-icon-info-circled:hover {
  cursor: auto;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable .deleteBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .removeFromFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable ul ul .deleteBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable.favorite ul ul .addToFavBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.removable:not(.favorite) ul ul .removeFromFavBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) .cloneBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions:not(.component) ul ul .cloneBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable .reconfigureBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.configurable ul ul .reconfigureBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable .resegmentBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .desegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable ul ul .resegmentBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable.segmented .resegmentBtn,
#sbLineEditor .sbTable > tbody > tr > td.sbActions.convertable:not(.segmented) .desegmentBtn {
  display: none;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable .viewDSBtn {
  display: inline-block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbActions.dsEditable ul ul .viewDSBtn {
  display: block;
}
#sbLineEditor .sbTable > tbody > tr > td.sbDeleteCheckbox {
  width: 1%;
}
#sbLineEditor .sbTable tbody > tr > td:first-of-type.sbActions ul ul {
  left: 100%;
}
#sbLineEditor .sbTable tbody > tr > td:last-of-type.sbActions ul ul {
  right: 100%;
}
#sbLineEditor .sbTable > tbody > tr > td:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td {
  vertical-align: middle;
  white-space: nowrap;
  font-size: 14px;
}
#sbLineEditor .sbTable > tfoot > tr.sbTotalRow td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbTable .sbBundleOption {
  color: #696969;
}
#sbLineEditor .sbTable .sbIndent2 {
  padding-left: 25px;
}
#sbLineEditor .sbTable .sbIndent3 {
  padding-left: 50px;
}
#sbLineEditor .sbTable .sbIndent4 {
  padding-left: 75px;
}
#sbLineEditor .sbTable .sbIndent5 {
  padding-left: 100px;
}
#sbLineEditor .sbTable .sbIndent6 {
  padding-left: 125px;
}
#sbLineEditor .sbTable .sbIndent7 {
  padding-left: 150px;
}
#sbLineEditor .sbTable .sbIndent8 {
  padding-left: 175px;
}
#sbLineEditor .sbTable .sbIndent9 {
  padding-left: 200px;
}
#sbLineEditor .sbTable .sbIndent10 {
  padding-left: 225px;
}
#sbLineEditor .sbTable .sbDescriptionField span {
  vertical-align: middle;
}
#sbLineEditor .sbTable .sbDescriptionField .sb-icon-pencil {
  visibility: hidden;
}
#sbLineEditor .sbTable .sbDescriptionField:hover .sb-icon-pencil {
  visibility: visible;
}
#sbLineEditor .sbQuoteTotal {
  display: block;
  float: right;
  margin: 12px 22px 26px 0;
}
#sbLineEditor .sbQuoteTotal > span {
  margin-left: 10px;
}
#sbLineEditor .sbGroups,
#sbLineEditor .sbDimensionTabs {
  font-size: 14px;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroups > a,
#sbLineEditor .sbDimensionTabs > a {
  cursor: move;
  color: inherit;
  padding: 6px 16px 6px;
  display: inline-block;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit {
  color: #0070d2;
  visibility: hidden;
  cursor: pointer;
  position: absolute;
  right: -6px;
  top: 6px;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit:hover,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit:hover {
  color: #16325c;
}
#sbLineEditor .sbGroups > a > .sf-icon-edit.visible,
#sbLineEditor .sbDimensionTabs > a > .sf-icon-edit.visible {
  visibility: visible;
}
#sbLineEditor .sbGroups > a.selected,
#sbLineEditor .sbDimensionTabs > a.selected {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover,
#sbLineEditor .sbDimensionTabs > a:hover {
  border-bottom: 2px solid #166bbf;
}
#sbLineEditor .sbGroups > a:hover > .sf-icon-edit,
#sbLineEditor .sbDimensionTabs > a:hover > .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup > header {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped {
  background: #ffffff;
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped > header {
  background-color: #f4f6f9;
  display: block;
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header.sbHiddenHeader {
  display: none;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td {
  width: 50%;
  margin: 10px;
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type {
  border-right: 1px solid #d0d0d0;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr > td {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td:first-of-type > table > tbody > tr:first-of-type > td:last-of-type {
  text-align: right;
  padding-right: 10px;
  min-width: 205px;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite {
  width: 5%;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i {
  font-size: 2em;
  display: inline-block;
  vertical-align: super;
}
#sbLineEditor .sbGroup.sbGrouped > header > .sbGroupEditor > tbody > tr > td .sbFavorite > i:hover {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header .sf-icon-edit {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader > input {
  font-size: 14px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupHeader:hover .sf-icon-edit {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 {
  vertical-align: middle;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:not(.sbGroupDragHandle) {
  cursor: pointer;
}
#sbLineEditor .sbGroup.sbGrouped > header h2 > [class=sb-icon-pencil] {
  visibility: hidden;
}
#sbLineEditor .sbGroup.sbGrouped > header h2:hover > [class=sb-icon-pencil] {
  visibility: visible;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupName {
  display: none;
  margin-right: 15px;
  height: 25px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions {
  display: inline-block;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions menu {
  max-height: 125px;
  overflow-y: auto;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions ul ul ul {
  left: 100%;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool {
  margin-bottom: 5px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > span,
#sbLineEditor .sbGroup.sbGrouped > header .sbGroupActions > ul.sbTools > li.sbTool > i {
  padding: 6px 8px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool {
  height: 32px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > span.label,
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > i {
  padding: 6px 8px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbTools > .sbTool > span.sf-icon-down {
  padding: 6px 4px;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription {
  margin-top: 10px;
  font-size: 14px;
  color: #888;
  cursor: pointer;
  display: table;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div,
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription > div > p {
  display: inline;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover {
  color: inherit;
}
#sbLineEditor .sbGroup.sbGrouped > header .sbDescription:hover [class=sf-icon-edit] {
  visibility: visible;
  padding-left: 5px;
}
#sbLineEditor .sbGroup.sbGrouped .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields {
  padding: 0 10px;
  font-size: 14px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr .sbLabel {
  text-align: right;
  padding-right: 5px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td {
  padding-bottom: 10px;
  vertical-align: middle;
  color: #16325C;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td .sbFieldRow {
  padding-bottom: 10px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td label {
  margin-right: 4px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input:not([type=checkbox]) {
  height: 2em;
  width: 100px;
}
#sbLineEditor .sbGroup .sbGroupFields > table > tbody > tr > td input[type=checkbox] {
  vertical-align: middle;
}
#sbLineEditor .sbGroup .sbGroupTotal {
  text-align: right;
  margin: 15px 22px 20px 0;
}
#sbLineEditor .sbEmptyGroupMsg,
#sbLineEditor .sbEmptyQuoteMsg,
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  font-size: 14px;
  padding: 15px;
}
#sbLineEditor .emptyMSTableMessage {
  clear: both;
}
#sbLineEditor .emptyMSTableMessage,
#sbLineEditor .emptyStandardTableMessage {
  padding: 15px 0 0 30px;
}
#sbLineEditor #sbPricebookMask,
#sbLineEditor #sbSegmentsMask,
#sbLineEditor #sbFavoritesMask,
#sbLineEditor #sbAlertMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbLineEditor #sbPricebookMask.close,
#sbLineEditor #sbSegmentsMask.close,
#sbLineEditor #sbFavoritesMask.close,
#sbLineEditor #sbAlertMask.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal,
#sbLineEditor #sbProductRuleAlert {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbSegmentsModal > header,
#sbLineEditor #sbProductRuleAlert > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > i,
#sbLineEditor #sbProductRuleAlert > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbSegmentsModal > header > *,
#sbLineEditor #sbProductRuleAlert > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal > header > h2,
#sbLineEditor #sbProductRuleAlert > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > h3,
#sbLineEditor #sbProductRuleAlert > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:hover,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal > header > .sf-icon-close:before,
#sbLineEditor #sbProductRuleAlert > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer .sbTable td,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbSegmentsModal .sbModalContentContainer ul,
#sbLineEditor #sbProductRuleAlert .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter,
#sbLineEditor #sbProductRuleAlert .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.amendment,
#sbLineEditor #sbProductRuleAlert.amendment {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon],
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbSegmentsModal.amendment #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbSegmentsModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover,
#sbLineEditor #sbProductRuleAlert.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbSegmentsModal.close,
#sbLineEditor #sbProductRuleAlert.close {
  display: none;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div {
  font-size: 14px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > span,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > span,
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > div,
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbSegmentsModal .sbValidationErrors > div > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbSegmentsModal .message,
#sbLineEditor #sbProductRuleAlert .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbSegmentsModal .sbCustomSegmentsContainer,
#sbLineEditor #sbProductRuleAlert .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > thead > tr > th,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon],
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbSegmentsModal #sbCustomSegments > tbody > tr > td .sf-icon-close,
#sbLineEditor #sbProductRuleAlert #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 600px;
}
#sbLineEditor #sbFavoritesModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbFavoritesModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.amendment {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #888;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalContentContainer i[class^=sf-icon]:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr:first-of-type > td {
  padding-top: 14px;
}
#sbLineEditor #sbFavoritesModal.amendment #sbCustomSegments > tbody > tr > td {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn {
  background-color: #ffffff;
  color: #0070d2;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:hover {
  cursor: default;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn:focus {
  outline: none;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbFavoritesModal.amendment .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  cursor: pointer;
  background-color: #005fb2;
}
#sbLineEditor #sbFavoritesModal.close {
  display: none;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors {
  text-align: left;
  padding: 5px 15px 0;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div {
  font-size: 14px;
  color: #c00;
  padding-bottom: 5px;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > span,
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > div {
  display: inline;
  vertical-align: middle;
}
#sbLineEditor #sbFavoritesModal .sbValidationErrors > div > [class^=sb-icon] {
  color: #c00;
  font-size: 20px;
  padding: 0 10px 0 0;
}
#sbLineEditor #sbFavoritesModal .message {
  display: block;
  text-align: left;
  border: none;
  margin: 0 0 0 7px;
}
#sbLineEditor #sbFavoritesModal .sbCustomSegmentsContainer {
  height: 441px;
  overflow: auto;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments {
  margin-top: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > thead > tr > th {
  padding-bottom: 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td {
  text-align: initial;
  height: 30px;
  cursor: move;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td > [class^=sb-icon] {
  color: #0070d2;
  cursor: pointer;
  padding: 0 5px 0 0;
}
#sbLineEditor #sbFavoritesModal #sbCustomSegments > tbody > tr > td .sf-icon-close {
  color: #4d4d4d;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr:hover {
  background: #ffffff;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td {
  padding-top: 20px;
}
#sbLineEditor #sbFavoritesModal .sbModalContentContainer .sbTable > tbody > tr > td #sbFavoriteName {
  width: 300px;
}
#sbLineEditor #sbProductRuleAlert {
  min-height: auto;
}
#sbLineEditor #sbProductRuleAlert li {
  font-size: 14px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:first-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > thead > tr > th:last-of-type,
#sbLineEditor.sbMDQ .sbPageBlock .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbMultiSegment .sbTable {
  margin-top: 10px;
}
#sbLineEditor .sbMultiSegment .sbTable .sbLineNumber > span {
  display: inline-block;
  vertical-align: middle;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > [class^="sb-icon-"] {
  font-size: 1.5em;
  color: #0070d2;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpandCollapse > :nth-of-type(2) {
  font-size: 1.3em;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand {
  white-space: nowrap;
}
#sbLineEditor .sbMultiSegment .sbTable .sbExpand i {
  cursor: pointer;
  font-size: 14px;
  color: #0070d2;
  position: relative;
  top: 2px;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > tr.expanded > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td {
  height: 30px;
  background-color: #f4f6f9;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail:not(.lastDetailRow) > td {
  border-bottom: 0;
}
#sbLineEditor .sbMultiSegment .sbTable > tbody > .sbDetail > td:nth-child(2) {
  text-align: right;
  padding-right: 40px;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:first-of-type {
  text-align: right;
}
#sbLineEditor .sbMultiSegment .sbTable > tfoot > tr > td:last-of-type {
  padding-right: 15px;
}
#sbLineEditor .sbStandard {
  padding-top: 40px;
}
#sbLineEditor .sbStandard.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbStandard > h2 {
  padding-left: 15px;
}
#sbLineEditor .sbMultiSegment {
  padding-top: 15px;
}
#sbLineEditor .sbMultiSegment.sbEmptyTable {
  padding-top: 0;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader {
  overflow: auto;
}
#sbLineEditor .sbMultiSegment .sbSegmentedTableHeader > h2 {
  padding-left: 15px;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader {
  margin: 0 15px;
  clear: both;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader > h2,
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  float: left;
}
#sbLineEditor .sbMultiSegment .sbDimensionHeader i {
  font-size: 12px;
  color: #0070d2;
  padding: 5px 0 0 5px;
  cursor: pointer;
}
#sbLineEditor .sbTooltip > .sbTooltipContent {
  display: none;
}
#sbLineEditor .sbMDQRight {
  float: right;
}
#sbLineEditor .sbMDQRight > .sbTooltip {
  width: 1%;
}
#sbLineEditor .sbGroupDragHandle {
  cursor: move;
}
#sbLineEditor .sbDraggedLine,
#sbLineEditor .sbDraggedDimension,
#sbLineEditor .sbDraggedSegment,
#sbLineEditor .sbDraggedGroup {
  color: #0070D2;
  font-size: 14px;
}
#sbLineEditor .sbDropRowHover {
  background: #F4F6F9;
}
#sbLineEditor .sbEmptyTableHover {
  padding-bottom: 22px;
}
#sbLineEditor .sbEmptyTableHover,
#sbLineEditor .sbEmptyGroupHover {
  border: 2px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor .sbGroup.sbGrouped.sbDropGroupHover {
  border: 3px solid #0070d2;
  border-radius: 4px;
}
#sbLineEditor a.sbDropDimensionHover {
  color: #fff;
  cursor: move;
  border-radius: 4px;
  background-color: #ffffff;
}
#sbLineEditor .sbPages {
  text-align: center;
  padding: 0;
  background: #fff;
}
#sbLineEditor .sbPages .sbBtn {
  float: none;
  display: inline-block;
}
#sbLineEditor .sbPages .sbDisplayedPage {
  color: #0070D2;
}
#sbLineEditor .sbDropPageHover {
  color: #fff;
  background-color: #0070d2;
}
#sbLineEditor th > .multiSegmentArrow {
  font-size: 1.2em !important;
}
#sbLineEditor th > .multiSegmentArrow:hover {
  cursor: pointer;
}
#sbLineEditor #sbTiersModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 80%;
}
#sbLineEditor #sbTiersModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbLineEditor #sbTiersModal > header > * {
  vertical-align: middle;
}
#sbLineEditor #sbTiersModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > h3 {
  color: #16325c;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbLineEditor #sbTiersModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbLineEditor #sbTiersModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbLineEditor #sbTiersModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer {
  padding: 15px;
  text-align: center;
  min-height: 100px;
  max-height: 400px;
  overflow: auto;
}
#sbLineEditor #sbTiersModal .sbModalContentContainer input {
  text-align: left;
}
#sbLineEditor #sbTiersModal .dataCell {
  text-align: left;
}
#sbLineEditor #sbTiersModal #revertTierIcon {
  font-size: 14px;
}
#sbLineEditor #sbTiersModal #revertIconContainer {
  padding: 8px;
  margin-left: 16px;
  background-color: #fff;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  margin-left: 10px;
  padding-left: 15px;
}
#sbLineEditor #sbTiersModal #discountScheduleName {
  padding-left: 30px;
}
#sbLineEditor #sbTiersModal #discountScheduleName input {
  min-width: 300px;
  margin-left: 10px;
  text-align: left;
  padding-left: 10px;
}
#sbLineEditor #sbTiersModal .sf-icon-error {
  color: #c00 !important;
}
#sbLineEditor #sbTiersModal #deleteAllCheckbox {
  text-align: center;
}
#sbLineEditor #sbTiersModal #discountUnitSelect {
  padding-right: 20px;
}
#sbLineEditor #sbTiersModal #errorMessage {
  text-align: left;
}
#sbLineEditor #sbTiersModal .hideInputBorders input {
  border: none;
  background: #fff;
}
#sbLineEditor #sbTiersModal .discountScheduleRow {
  text-align: left;
}
#sbLineEditor #sbTiersModal .revertButton {
  display: inline-block;
  border: 1px solid #d8dde6;
  border-radius: 4px;
  color: #0070d2;
  position: relative;
  cursor: pointer;
}
#sbLineEditor #sbTiersModal .discountScheduleHeader {
  text-align: left;
}
#sbLineEditor #sbTiersModal .addBottomBorder {
  border-bottom: 1px solid #d8dde6;
  text-align: center;
}
#sbLineEditor #sbTiersModal .discountScheduleLoader {
  margin-left: auto;
  margin-right: auto;
  margin-top: 20px;
}
#editDescriptionContainer .sbLineEditorDescriptionEditFooter {
  margin-top: 16px;
}
.removeBoxShadow {
  box-shadow: none;
}
.addBoxShadow {
  box-shadow: 0 0 0 15px #D1D4D8;
}
.hidden {
  display: none;
}
.sbLineEditorTooltip {
  padding: 12px;
}
.sbLineEditorTooltip table td {
  padding: 3px 2px;
}
.sbLineEditorTooltip table td:nth-child(2) {
  text-align: right;
}
.sbBtnTooltip {
  padding: 3px;
  background-color: #ffffff;
  color: #16325C;
  -webkit-box-shadow: 1px 1px 11px #D1D4D8;
  -moz-box-shadow: 1px 1px 11px #D1D4D8;
  box-shadow: 1px 1px 11px #D1D4D8;
}
#sbNewRelatedContent #sbNewRelatedContentOptions {
  margin: 0;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset {
  border: 0;
  padding: 5px;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > label {
  margin-right: 10px;
  font-size: 14px;
  display: inline-block;
  width: 175px;
  text-align: right;
}
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset > input,
#sbNewRelatedContent #sbNewRelatedContentOptions fieldset select {
  width: 200px;
}
#sbNewRelatedContent .sbPageBlockSection {
  background: none;
  border: none;
}
#sbProductConfigurator .sbConfigProductName {
  margin: 15px 0 0 15px;
  display: block;
}
#sbProductConfigurator .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbProductConfigurator .sbPageTitle .sbPageTitleLeft .sf-icon-custom_apps {
  background-color: #8199af;
}
#sbProductConfigurator .sbPageTitle .sbButtons {
  float: right;
}
#sbProductConfigurator .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
  font-size: 10px;
  float: right;
  transition: all 0.25s ease-in;
}
#sbProductConfigurator .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
#sbProductConfigurator .sbPageTitle .sbToolSeparator {
  border-right: #d0d0d0;
  display: inline-block;
  height: 1px;
  width: 10px;
  float: left;
}
#sbProductConfigurator .sbPageTitle .sbBtn:disabled {
  color: #888888;
  cursor: default;
}
#sbProductConfigurator .sbPageTitle .sbBtn.sbAddOption {
  margin: 16px;
}
#sbProductConfigurator .sbFeatureIcon {
  color: #0070d2;
  font-size: 30px;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption {
  border: 0;
  margin: 4px 0 4px 0;
}
#sbProductConfigurator .sbAddOptionContainer .sbAddOption:hover {
  background: none;
  color: #16325c;
  cursor: pointer;
}
#sbProductConfigurator header {
  padding: 15px 15px;
}
#sbProductConfigurator header.sbSection {
  border-bottom: 1px solid #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.sbFooter {
  margin: 0;
  border-top: #d0d0d0;
  background: #f4f6f9;
}
#sbProductConfigurator header.optionLookupMode {
  border: none;
  background: none;
}
#sbProductConfigurator header .sbTitleContainer {
  display: inline-block;
  padding-right: 50px;
  padding-top: 5px;
  vertical-align: top;
}
#sbProductConfigurator header .sbTitleContainer > .sbFeatureInstructions {
  padding: 10px 0 0 0;
  font-size: 14px;
}
#sbProductConfigurator header .sbFeatureAdditionalInstructions {
  display: inline;
  float: right;
  font-size: 14px;
  padding-top: 3px;
}
#sbProductConfigurator .featureContent {
  font-size: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes,
#sbProductConfigurator .sbBottomConfigurationAttributes {
  font-size: 14px;
  padding-top: 10px;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection {
  border: 0 ;
}
#sbProductConfigurator .sbTopConfigurationAttributes.sbPageBlockSection.sbBottom,
#sbProductConfigurator .sbBottomConfigurationAttributes.sbPageBlockSection.sbBottom {
  border-top: 1px solid #d0d0d0;
  padding-top: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbConfigAttributeColumn,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbConfigAttributeColumn {
  vertical-align: top;
}
#sbProductConfigurator .sbTopConfigurationAttributes label,
#sbProductConfigurator .sbBottomConfigurationAttributes label {
  padding: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes td,
#sbProductConfigurator .sbBottomConfigurationAttributes td {
  vertical-align: middle;
}
#sbProductConfigurator .sbTopConfigurationAttributes input,
#sbProductConfigurator .sbBottomConfigurationAttributes input {
  margin-right: 30px;
}
#sbProductConfigurator .sbTopConfigurationAttributes input.hasDatepicker,
#sbProductConfigurator .sbBottomConfigurationAttributes input.hasDatepicker {
  width: 45%;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbLabelCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbLabelCol {
  padding-right: 10px;
  text-align: right;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol {
  padding: 6px 0;
  text-align: left;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > div,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > div {
  padding-left: 5px;
}
#sbProductConfigurator .sbTopConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute,
#sbProductConfigurator .sbBottomConfigurationAttributes .sbDataCol > div > .requiredConfigurationAttribute {
  border-left: #c00 solid;
  padding-left: 2px;
}
#sbProductConfigurator .requiresConfiguration {
  border-left: #c00 solid;
}
#sbProductConfigurator .center {
  width: 100%;
  text-align: center;
  display: inline-block;
}
#sbProductConfigurator .sbSelectionColumn {
  width: 1%;
  cursor: pointer;
  white-space: nowrap;
  text-align: left;
}
#sbProductConfigurator .sbOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter > a {
  text-align: right;
  font-size: 14px;
}
#sbProductConfigurator .sbOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
#sbProductConfigurator .sbOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbOptionsFilter fieldset input,
#sbProductConfigurator .sbOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbOptionsFilter div > a {
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
  top: 91px;
}
#sbProductConfigurator .sbAddOptionsFilter.open {
  right: 0px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter > a {
  text-align: right;
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
#sbProductConfigurator .sbAddOptionsFilter fieldset input,
#sbProductConfigurator .sbAddOptionsFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
#sbProductConfigurator .sbAddOptionsFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
#sbProductConfigurator .sbAddOptionsFilter input {
  display: inline;
}
#sbProductConfigurator .sbAddOptionsFilter div > a {
  font-size: 14px;
}
#sbProductConfigurator .sbResults {
  margin: 14px 0 -8px 0;
  font-size: 14px;
}
#sbProductConfigurator .sbPageBlockSection {
  background: #ffffff;
  padding: 0;
}
#sbProductConfigurator .sbGroups {
  font-size: 14px;
  text-align: center;
  margin: 18px 15px;
  text-transform: uppercase;
  border-bottom: 1px solid #d0d0d0;
}
#sbProductConfigurator .sbGroups > a,
#sbProductConfigurator .sbGroups span {
  color: inherit;
  padding: 6px 16px;
  display: inline-block;
}
#sbProductConfigurator .sbGroups > a.selected,
#sbProductConfigurator .sbGroups span.selected {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbGroups > a:hover,
#sbProductConfigurator .sbGroups span:hover {
  border-bottom: 2px solid #166bbf;
}
#sbProductConfigurator .sbTable {
  margin-top: 5px;
}
#sbProductConfigurator .sbTable > thead > tr > th:nth-child(2),
#sbProductConfigurator .sbTable > tbody > tr > td:nth-child(2) {
  width: 60px;
}
#sbProductConfigurator .sbTable > thead > tr > th {
  padding-right: 12px;
  padding-left: 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td {
  height: 49px;
  vertical-align: middle;
  padding: 0 12px;
}
#sbProductConfigurator .sbTable > tbody > tr > td [class^=sb-icon] {
  font-size: 12px;
  color: #888;
}
#sbProductConfigurator .sbTable > tbody > tr > td.right {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell {
  width: 75px;
  text-align: center;
}
#sbProductConfigurator .sbTable > tbody > tr > td.sbQuantityCell input {
  width: 100px;
  text-align: center;
  font-size: 14px;
}
#sbProductConfigurator .sbTable .sbCurrencyCell {
  text-align: right;
}
#sbProductConfigurator .sbTable .sbCurrencyCell input {
  text-align: right;
}
#sbProductConfigurator .sbTable > tbody tr:last-child > td {
  border-bottom: none;
}
#sbProductConfigurator .wizardConfigurator > table > tbody > tr:hover {
  background: #fff;
}
#sbProductConfigurator .sbLoadMore {
  position: absolute;
  height: 65px;
  top: 94%;
  width: 100%;
  text-align: center;
  font-size: 15px;
  padding-top: 15px;
  background: #ffffff;
  display: none;
}
#sbProductConfigurator .sbLoadMore.sbShowLoading {
  display: inline-block;
}
#sbProductConfigurator .sf-icon-warning {
  color: #5876a3;
  font-size: 20px;
}
#sbProductSearch .sbTable {
  font-size: 10px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbProductSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbProductSearch .sbTools {
  float: right;
}
#sbProductSearch .sbPageBlockSection {
  background: none;
  margin: 0;
  padding: 0;
}
#sbProductSearch .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbProductSearch .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbProductSearch .sbTable > thead > tr > th:first-of-type,
#sbProductSearch .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbProductSearch .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbProductSearch .sbTable tbody.close > .sbGroupRow {
  display: none;
}
#sbProductSearch .sbTable tbody .sbGroupName {
  text-align: left;
  font-size: 14px;
  font-weight: bold;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow {
  background-color: #f4f6f9;
  cursor: pointer;
}
#sbProductSearch .sbTable tbody .sbGroupNameRow i {
  font-size: 17.5px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td {
  border-bottom: none;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages {
  font-size: 0.9em;
  margin-top: 10px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons {
  vertical-align: middle;
  background-color: #ffffff;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn {
  padding-top: 6px;
  color: #0070d2;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-left-dir,
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.sb-icon-right-dir {
  font-size: 1.7em;
  padding-top: 3px;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages > .sbButtons > .sbBtn.disabled {
  background-color: #ffffff;
  color: #bebebe;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector {
  padding: 0 10px;
  display: inline-block;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages > td .sbPages .sbPageSelector > input {
  width: 45px;
  text-align: center;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover {
  background-color: #F4F6F9;
}
#sbProductSearch .sbTable tfoot > tr.sbProductPages:hover > td .sbPages > .sbButtons {
  background-color: #F4F6F9;
}
.sbProductFilter,
#sbGuidedModal.sbGuided {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbProductFilter.open,
#sbGuidedModal.sbGuided.open {
  right: 0px;
  display: block;
}
.sbProductFilter > a,
#sbGuidedModal.sbGuided > a {
  text-align: right;
  font-size: 14px;
}
.sbProductFilter > header,
#sbGuidedModal.sbGuided > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbProductFilter > header > .sf-icon-close,
#sbGuidedModal.sbGuided > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbProductFilter fieldset,
#sbGuidedModal.sbGuided fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbProductFilter fieldset > label,
#sbGuidedModal.sbGuided fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbProductFilter fieldset input,
#sbGuidedModal.sbGuided fieldset input,
.sbProductFilter fieldset select,
#sbGuidedModal.sbGuided fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbProductFilter .sbButtons,
#sbGuidedModal.sbGuided .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbProductFilter .sbButtons .clearFieldsLink,
#sbGuidedModal.sbGuided .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbProductFilter div > a,
#sbGuidedModal.sbGuided div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
.sbProductFilter fieldset > span > input[type=checkbox],
#sbGuidedModal.sbGuided fieldset > span > input[type=checkbox] {
  display: none;
}
.sbProductFilter label > span > input[type=checkbox],
#sbGuidedModal.sbGuided label > span > input[type=checkbox] {
  vertical-align: middle;
}
.sbProducts {
  transition: .02s;
}
#sbGuidedMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbGuidedMask.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  max-width: 480px;
}
#sbGuidedModal.sbGuidedModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbGuidedModal.sbGuidedModal > header > * {
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > h3 {
  color: #16325c;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbGuidedModal.sbGuidedModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbGuidedModal.sbGuidedModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbGuidedModal.sbGuidedModal.close {
  display: none;
}
#sbGuidedModal.sbGuidedModal > .sbFieldCon {
  text-align: left;
  overflow: auto;
}
#sbGuidedModal.sbGuidedModal fieldset {
  padding: 10px;
  border: 0;
  font-size: 1.4em;
}
#sbGuidedModal.sbGuidedModal fieldset > label {
  font-size: 10px;
  display: inline-block;
  padding: 0 0 5px 7px;
  vertical-align: middle;
}
#sbGuidedModal.sbGuidedModal fieldset > span {
  display: block;
}
#sbGuidedModal.sbGuidedModal fieldset > span > input[type=checkbox] {
  display: none;
}
#sbGuidedModal.sbGuidedModal fieldset input,
#sbGuidedModal.sbGuidedModal fieldset select {
  font-size: inherit !important;
  margin-left: 6px;
  vertical-align: middle;
  min-width: 100px;
}
#sbGuidedModal.sbGuidedModal fieldset > *[class^=sb-icon] {
  color: #888;
}
div.chatterFollow {
  white-space: nowrap;
}
.chatterFollow a {
  text-decoration: none;
  color: #000000;
  cursor: pointer;
}
.chatterFollow .followIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 0;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .checkIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -27px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .unfollowIcon {
  background-image: url(/img/feeds/follow_sprite.png);
  background-repeat: no-repeat;
  background-position: 0 -54px;
  width: auto;
  height: 20px;
  margin-top: 7px;
  margin-left: 3px;
}
.chatterFollow .hion {
  background-position: 0 -75px;
}
#sbSubscriptionSearch .sbTable {
  font-size: 10px;
}
#sbSubscriptionSearch .sbTable > thead > tr > th:first-of-type,
#sbSubscriptionSearch .sbTable > tbody > tr > td:first-of-type {
  text-align: center;
}
#sbSubscriptionSearch .sbTable > tbody > tr > td {
  vertical-align: middle;
}
#sbSubscriptionSearch .sbTools {
  float: right;
}
#sbSubscriptionSearch .sbPageTitle.squeezed .sbTools {
  padding: 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools {
  margin-right: 10px;
  padding: 7px 0;
}
#sbSubscriptionSearch .sbPageTitle .sbTools > .sbTool {
  padding: 8px;
}
.sbSubscriptionFilter {
  position: absolute;
  top: 107px;
  max-width: 500px;
  bottom: 0;
  background: #ffffff;
  border-left: 1px solid #D8DDE6;
  box-shadow: -3px 0px 20px -5px #aaa;
  overflow: auto;
  display: none;
  padding-top: 10px;
}
.sbSubscriptionFilter.open {
  right: 0px;
  display: block;
}
.sbSubscriptionFilter > a {
  text-align: right;
  font-size: 14px;
}
.sbSubscriptionFilter > header {
  padding: 0 20px;
  line-height: 4em;
}
.sbSubscriptionFilter > header > .sf-icon-close {
  float: right;
  cursor: pointer;
  line-height: 4em;
}
.sbSubscriptionFilter fieldset {
  border: 0;
  padding: 14px 18px;
  font-size: 14px;
}
.sbSubscriptionFilter fieldset > label {
  margin: 0 3px 3px 0;
  max-width: 120px;
  display: block;
}
.sbSubscriptionFilter fieldset input,
.sbSubscriptionFilter fieldset select {
  display: inline;
  font-size: inherit !important;
  min-width: 138px;
}
.sbSubscriptionFilter .sbButtons {
  background: #ffffff;
  padding: 10px 0 0 18px;
}
.sbSubscriptionFilter .sbButtons .clearFieldsLink {
  padding: 10px;
  display: inline-block;
}
.sbSubscriptionFilter input {
  display: inline;
}
.sbSubscriptionFilter div > a {
  text-align: right;
  display: flex;
  font-size: 14px;
}
#sbCloneRelated,
#sbRefreshPrices,
#sbPreviewApprovals,
#sbListApprovals {
  background: #fff;
  color: #16325C;
  text-align: center;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
}
#sbCloneRelated .sbPageTitle,
#sbRefreshPrices .sbPageTitle,
#sbPreviewApprovals .sbPageTitle,
#sbListApprovals .sbPageTitle {
  text-align: left;
}
#sbCloneRelated .sbPageTitle h1,
#sbRefreshPrices .sbPageTitle h1,
#sbPreviewApprovals .sbPageTitle h1,
#sbListApprovals .sbPageTitle h1 {
  font-size: 20px;
  font-weight: 300;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle h2,
#sbRefreshPrices .sbPageTitle h2,
#sbPreviewApprovals .sbPageTitle h2,
#sbListApprovals .sbPageTitle h2 {
  font-size: 12px;
  color: #16325C;
}
#sbCloneRelated .sbPageTitle .sf-icon-copy:before,
#sbRefreshPrices .sbPageTitle .sf-icon-copy:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-copy:before,
#sbListApprovals .sbPageTitle .sf-icon-copy:before,
#sbCloneRelated .sbPageTitle .sf-icon-refresh:before,
#sbRefreshPrices .sbPageTitle .sf-icon-refresh:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-refresh:before,
#sbListApprovals .sbPageTitle .sf-icon-refresh:before,
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 10px;
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-post:before,
#sbRefreshPrices .sbPageTitle .sf-icon-post:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-post:before,
#sbListApprovals .sbPageTitle .sf-icon-post:before {
  position: inherit;
}
#sbCloneRelated .sbPageTitle .sf-icon-approval:before,
#sbRefreshPrices .sbPageTitle .sf-icon-approval:before,
#sbPreviewApprovals .sbPageTitle .sf-icon-approval:before,
#sbListApprovals .sbPageTitle .sf-icon-approval:before {
  margin-top: 0px;
}
#sbCloneRelated .sbPageTitle .resize,
#sbRefreshPrices .sbPageTitle .resize,
#sbPreviewApprovals .sbPageTitle .resize,
#sbListApprovals .sbPageTitle .resize {
  padding: 2px 10px;
}
#sbCloneRelated .message,
#sbRefreshPrices .message,
#sbPreviewApprovals .message,
#sbListApprovals .message {
  padding: 10px;
  margin: 18px 24px;
}
#sbCloneRelated .message .messageText,
#sbRefreshPrices .message .messageText,
#sbPreviewApprovals .message .messageText,
#sbListApprovals .message .messageText {
  font-size: 14px;
}
#sbCloneRelated .message .messageText h4,
#sbRefreshPrices .message .messageText h4,
#sbPreviewApprovals .message .messageText h4,
#sbListApprovals .message .messageText h4 {
  padding: 0 4px;
  display: inline-block;
  font-size: 10px;
  font-weight: 300;
}
#sbCloneRelated .sbBtns,
#sbRefreshPrices .sbBtns,
#sbPreviewApprovals .sbBtns,
#sbListApprovals .sbBtns {
  font-size: 9px;
  border-radius: 0;
  vertical-align: top;
  float: right;
}
#sbCloneRelated .sbBtns .sbBtn,
#sbRefreshPrices .sbBtns .sbBtn,
#sbPreviewApprovals .sbBtns .sbBtn,
#sbListApprovals .sbBtns .sbBtn {
  border-radius: 0;
}
#sbCloneRelated .sbBtns .sbBtn:first-of-type,
#sbRefreshPrices .sbBtns .sbBtn:first-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:first-of-type,
#sbListApprovals .sbBtns .sbBtn:first-of-type {
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
#sbCloneRelated .sbBtns .sbBtn:last-of-type,
#sbRefreshPrices .sbBtns .sbBtn:last-of-type,
#sbPreviewApprovals .sbBtns .sbBtn:last-of-type,
#sbListApprovals .sbBtns .sbBtn:last-of-type {
  border-left: 0;
  border-top-right-radius: 4px;
  border-bottom-right-radius: 4px;
}
#sbCloneRelated .sbGroup,
#sbRefreshPrices .sbGroup,
#sbPreviewApprovals .sbGroup,
#sbListApprovals .sbGroup {
  margin: 15px 15px;
  border: 1px solid #d0d0d0;
  border-radius: 3px;
}
#sbCloneRelated .sbGroup > header,
#sbRefreshPrices .sbGroup > header,
#sbPreviewApprovals .sbGroup > header,
#sbListApprovals .sbGroup > header {
  margin: 0;
  border: 0;
  padding: 10px 15px 5px;
  border-bottom: 1px solid #d0d0d0;
}
#sbCloneRelated .sbGroup .sbPageBlockSection,
#sbRefreshPrices .sbGroup .sbPageBlockSection,
#sbPreviewApprovals .sbGroup .sbPageBlockSection,
#sbListApprovals .sbGroup .sbPageBlockSection {
  padding-bottom: 6px;
  text-align: left;
}
#sbCloneRelated .sbGroup .sbPageBlockSection > h3,
#sbRefreshPrices .sbGroup .sbPageBlockSection > h3,
#sbPreviewApprovals .sbGroup .sbPageBlockSection > h3,
#sbListApprovals .sbGroup .sbPageBlockSection > h3 {
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  font-weight: 300;
}
#sbCloneRelated .toggleButton,
#sbRefreshPrices .toggleButton,
#sbPreviewApprovals .toggleButton,
#sbListApprovals .toggleButton {
  float: right;
}
#sbCloneRelated .tableContainer,
#sbRefreshPrices .tableContainer,
#sbPreviewApprovals .tableContainer,
#sbListApprovals .tableContainer {
  display: none;
}
#sbCloneRelated .sbTable .rfHead,
#sbRefreshPrices .sbTable .rfHead,
#sbPreviewApprovals .sbTable .rfHead,
#sbListApprovals .sbTable .rfHead {
  background: #F4F6F9;
}
#sbCloneRelated .sbTable > thead > tr > th:first-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:first-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:first-of-type,
#sbListApprovals .sbTable > thead > tr > th:first-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:first-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:first-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:first-of-type,
#sbListApprovals .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
}
#sbCloneRelated .sbTable > thead > tr > th:last-of-type,
#sbRefreshPrices .sbTable > thead > tr > th:last-of-type,
#sbPreviewApprovals .sbTable > thead > tr > th:last-of-type,
#sbListApprovals .sbTable > thead > tr > th:last-of-type,
#sbCloneRelated .sbTable > tbody > tr > td:last-of-type,
#sbRefreshPrices .sbTable > tbody > tr > td:last-of-type,
#sbPreviewApprovals .sbTable > tbody > tr > td:last-of-type,
#sbListApprovals .sbTable > tbody > tr > td:last-of-type {
  padding-right: 15px;
}
#sbCloneRelated .sbTable > tbody > tr:last-of-type > td,
#sbRefreshPrices .sbTable > tbody > tr:last-of-type > td,
#sbPreviewApprovals .sbTable > tbody > tr:last-of-type > td,
#sbListApprovals .sbTable > tbody > tr:last-of-type > td {
  border-bottom: none;
}
#sbCloneRelated .sbTable > thead > tr > th,
#sbRefreshPrices .sbTable > thead > tr > th,
#sbPreviewApprovals .sbTable > thead > tr > th,
#sbListApprovals .sbTable > thead > tr > th {
  height: 24.5px;
}
#sbCloneRelated .sbTable > tbody > tr > td,
#sbRefreshPrices .sbTable > tbody > tr > td,
#sbPreviewApprovals .sbTable > tbody > tr > td,
#sbListApprovals .sbTable > tbody > tr > td {
  padding: 4.9px 9.8px;
  height: 24.5px;
  vertical-align: middle;
  text-align: left;
}
#sbCloneRelated .sbTable > tfoot > tr > td,
#sbRefreshPrices .sbTable > tfoot > tr > td,
#sbPreviewApprovals .sbTable > tfoot > tr > td,
#sbListApprovals .sbTable > tfoot > tr > td {
  text-align: left;
  padding-top: 4.9px;
  padding-bottom: 4.9px;
  padding-left: 15px;
  height: 19.6px;
}
#sbCloneRelated .sbTable tbody > tr:hover,
#sbRefreshPrices .sbTable tbody > tr:hover,
#sbPreviewApprovals .sbTable tbody > tr:hover,
#sbListApprovals .sbTable tbody > tr:hover {
  background: none;
}
#sbFavoritesManager .sbPageTitle .sbTools {
  margin-right: 10px;
}
#sbFavoritesManager .sbPageTitle .sbTools > .sbTool {
  background: #ffffff;
  padding: 7px;
}
#sbFavoritesManager .topMsg {
  text-align: center;
  display: block;
  padding: 32px;
}
#sbFavoritesManager .botMsg {
  text-align: center;
  display: block;
}
#sbFavoritesManager .sbTable > thead > tr > th:first-of-type,
#sbFavoritesManager .sbTable > tbody > tr > td:first-of-type {
  padding-left: 15px;
  text-align: left;
}
#sbFavoritesManager .sbTable .sbSelectionHeader {
  width: 1%;
}
#sbFavoritesManager .sbTable .sbFavoriteHeader {
  width: 160px;
}
#sbFavoritesManager .sbTable .sbDescription {
  width: 50%;
}
#sbFavoritesManager .sbTable tbody tr td {
  vertical-align: middle;
}
#sbFavoritesManager .sbTable tbody tr td i {
  color: #0070D2;
}
#sbFavoritesManager .sbTable tbody tr td i:hover {
  color: #16325C;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerMask {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #A8B7C7;
  opacity: 0.8;
  z-index: 1000;
}
#sbFavoritesManager #sbFavoritesManagerMask.close {
  display: none;
}
#sbFavoritesManager #sbFavoritesManagerModal {
  background-color: #ffffff;
  border-radius: 4px;
  top: 160px;
  position: fixed;
  left: 0;
  right: 0;
  margin: 0 auto;
  min-height: 200px;
  z-index: 1001;
  color: #16325C;
  text-align: center;
  min-height: 160px;
  max-width: 400px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header {
  border-bottom: 2px solid #D8DDE6;
  padding: 24px 16px;
  font-size: 10px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > i {
  color: #16325c;
  font-size: 20px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > * {
  vertical-align: middle;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h2 {
  margin: 0 0 0 6px;
  display: inline-block;
  font-size: 24px;
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > h3 {
  color: #16325c;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close {
  font-size: 30px;
  position: absolute;
  top: -50px;
  right: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:hover {
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal > header > .sf-icon-close:before {
  color: #fff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer {
  overflow: auto;
  text-align: left;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon] {
  font-size: 10px;
  color: #0070d2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer i[class^=sf-icon]:hover {
  color: #16325c;
  cursor: pointer;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable {
  margin-bottom: 8px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable td {
  border-bottom: 0;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 40px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter {
  width: 100%;
  border-top: 2px solid #D8DDE6;
  padding: 12px 16px;
  background-color: #f4f6f9;
  text-align: right;
  border-bottom-left-radius: 4px;
  border-bottom-right-radius: 4px;
  display: inline-table;
  height: 26px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons {
  float: right;
  padding: 0 0 0 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn {
  padding: 8px 16px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction {
  background-color: #0070d2;
  color: #ffffff;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalFooter > .sbButtons > .sbBtn.sbPrimaryAction:hover {
  background-color: #005fb2;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer ul {
  -webkit-padding-end: 0px;
}
#sbFavoritesManager #sbFavoritesManagerModal .sbModalContentContainer .sbTable .sbActions {
  width: 1%;
  text-align: left;
  white-space: nowrap;
}
#sbFavoritesManager .form-control {
  display: block;
  width: 100%;
  height: 34px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
}
#sbFavoritesManager .sbValidationErrors {
  font-size: 14px;
  padding: 5px 15px;
  display: block;
  text-align: left;
  color: #c00;
}
#sbFavoritesManager .invalid {
  border-color: #c00;
}
#sbFavoritesManager .dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  font-size: 14px;
  text-align: left;
  list-style: none;
  background-color: #fff;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 4px;
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
#sbFavoritesManager .dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333;
  white-space: nowrap;
}
#sbFavoritesManager .dropdown-menu > li > a:hover,
#sbFavoritesManager .dropdown-menu > li > a:focus {
  color: #262626;
  text-decoration: none;
  background-color: #f5f5f5;
}
#sbFavoritesManager .dropdown-menu > .active > a,
#sbFavoritesManager .dropdown-menu > .active > a:hover,
#sbFavoritesManager .dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  background-color: #337ab7;
  outline: 0;
}
#sbBlockPrice {
  background: #fff;
  color: #16325C;
  font-family: 'Salesforce Sans', 'Open Sans', Arial, sans-serif;
  padding-top: 10px;
  padding-bottom: 10px;
}
#sbBlockPrice #sbPriceBookGroup {
  display: inline-block;
}
#sbBlockPrice #sbClonePriceBookGroup {
  display: inline-block;
  padding-left: 100px;
}
#sbBlockPrice .sbPriceBookText {
  padding: 10px;
}
#sbBlockPrice .sbCloneFromPriceBook {
  margin-left: 15px;
  padding-bottom: 4px;
}
#sbBlockPrice .sbPriceBookSelect {
  padding-bottom: 2px;
}

/*# sourceMappingURL=data:application/json;charset=utf8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbImZvbnRzLmxlc3MiLCJ0eXBvZ3JhcGh5Lmxlc3MiLCJidXR0b25zLmxlc3MiLCJzZmRjLmxlc3MiLCJkaWFsb2dzLmxlc3MiLCJsYXlvdXQubGVzcyIsImZvcm1zLmxlc3MiLCJtaXhpbnMubGVzcyIsImRhdGVQaWNrZXIubGVzcyIsInRhYmxlcy5sZXNzIiwiZHJvcGRvd25zLmxlc3MiLCJpY29ucy5sZXNzIiwiYmFzZS5sZXNzIiwidmFyaWFibGVzLmxlc3MiLCIuLi8uLi9hZG1pbi9zZXR0aW5ncy9hcHBTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vc2V0dGluZ3MvdGhlbWVTZXR0aW5ncy5sZXNzIiwiLi4vLi4vYWRtaW4vdHJhbnNsYXRlLmxlc3MiLCIuLi8uLi9hc3NldHMvYXNzZXRMb29rdXAubGVzcyIsIi4uLy4uL2NvbnRyYWN0cy9zZWxlY3RDb250cmFjdC5sZXNzIiwiLi4vLi4vY29udHJhY3RzL2FtZW5kQ29udHJhY3QubGVzcyIsIi4uLy4uL2RvY2dlbi9wcmV2aWV3Lmxlc3MiLCIuLi8uLi9xdW90ZXMvaW1wb3J0TGluZXMubGVzcyIsIi4uLy4uL3F1b3Rlcy9saW5lRWRpdG9yLmxlc3MiLCIuLi8uLi9xdW90ZXMvbmV3UmVsYXRlZENvbnRlbnQubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RDb25maWd1cmF0b3IubGVzcyIsIi4uLy4uL3Byb2R1Y3RzL3Byb2R1Y3RMb29rdXAubGVzcyIsIi4uLy4uL3N1YnNjcmlwdGlvbnMvc3Vic2NyaXB0aW9uTG9va3VwLmxlc3MiLCIuLi8uLi9jbG9uZS9jbG9uZS5sZXNzIiwiLi4vLi4vZmF2b3JpdGVzL2Zhdm9yaXRlc01hbmFnZXIubGVzcyIsIi4uLy4uL2Jsb2NrUHJpY2UvYmxvY2tQcmljZS5sZXNzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0UsYUFBYSxpQkFBYjtFQUNBLFNBQVMsMkdBQTJHLE9BQU8sY0FDbEgsMEdBQTBHLE9BQU8sT0FEMUg7RUFFQSxrQkFB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O0VBQ0EsbUJBQUE7O0FBZFIsYUFpQkk7RUFDSSxhQUFBOztBQWxCUixhQXFCQztFQUNJLGlCQUFBO0VBQ0EsbUJBQUE7O0FBdkJMLGFBMEJDO0VBQ0ksbUJBQUEiLCJzb3VyY2VzQ29udGVudCI6WyJAZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1MaWdodC53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUxpZ2h0LndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogbm9ybWFsO1xuICBmb250LXdlaWdodDogMzAwO1xufVxuQGZvbnQtZmFjZSB7XG4gIGZvbnQtZmFtaWx5OiBcIlNhbGVzZm9yY2UgU2Fuc1wiO1xuICBzcmM6IHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtUmVndWxhci53b2ZmMlwiKSBmb3JtYXQoXCJ3b2ZmMlwiKSxcbiAgICAgICB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLVJlZ3VsYXIud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBub3JtYWw7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1JdGFsaWMud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1JdGFsaWMud29mZlwiKSBmb3JtYXQoXCJ3b2ZmXCIpO1xuICBmb250LXN0eWxlOiBpdGFsaWM7XG4gIGZvbnQtd2VpZ2h0OiA0MDA7XG59XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6IFwiU2FsZXNmb3JjZSBTYW5zXCI7XG4gIHNyYzogdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkLndvZmYyXCIpIGZvcm1hdChcIndvZmYyXCIpLFxuICAgICAgIHVybChcImh0dHBzOi8vd3d3Mi5zZmRjc3RhdGljLmNvbS9zeXN0ZW0vc2hhcmVkL2NvbW1vbi9hc3NldHMvZm9udHMvU2FsZXNmb3JjZVNhbnMvU2FsZXNmb3JjZVNhbnMtQm9sZC53b2ZmXCIpIGZvcm1hdChcIndvZmZcIik7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IDcwMDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogXCJTYWxlc2ZvcmNlIFNhbnNcIjtcbiAgc3JjOiB1cmwoXCJodHRwczovL3d3dzIuc2ZkY3N0YXRpYy5jb20vc3lzdGVtL3NoYXJlZC9jb21tb24vYXNzZXRzL2ZvbnRzL1NhbGVzZm9yY2VTYW5zL1NhbGVzZm9yY2VTYW5zLUJvbGRJdGFsaWMud29mZjJcIikgZm9ybWF0KFwid29mZjJcIiksXG4gICAgICAgdXJsKFwiaHR0cHM6Ly93d3cyLnNmZGNzdGF0aWMuY29tL3N5c3RlbS9zaGFyZWQvY29tbW9uL2Fzc2V0cy9mb250cy9TYWxlc2ZvcmNlU2Fucy9TYWxlc2ZvcmNlU2Fucy1Cb2xkSXRhbGljLndvZmZcIikgZm9ybWF0KFwid29mZlwiKTtcbiAgZm9udC1zdHlsZTogaXRhbGljO1xuICBmb250LXdlaWdodDogNzAwO1xufVxuIiwiLnNiIHtcbiAgaDEsaDIsaDMsaDQsaDUsaDYge1xuICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgZm9udC13ZWlnaHQ6IDMwMDtcbiAgICBmb250LWZhbWlseTogaW5oZXJpdDtcbiAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgbWFyZ2luOiAwO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICBoMSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuNDtcbiAgfVxuXG4gIGgyIHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS44O1xuICB9XG5cbiAgaDMge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjY7XG4gIH1cbiAgaDQge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gIH1cblxuICBoNSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgfVxuXG4gIGg2IHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMC45O1xuICB9XG5cbiAgLy8gSHlwZXJsaW5rcyAtIHRoZSBkZWZhdWx0IHN0eWxlXG4gIGEsIGE6dmlzaXRlZCwgYTpob3ZlciwgYTphY3RpdmUge1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgfVxuXG4gIC8vIEh5cGVybGlua3MgLSBjb2xvciBjaGFuZ2Ugd2hlbiBob3ZlcmVkXG4gIGE6aG92ZXIge1xuICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgfVxufVxuIiwiQHNiQnRuQm9yZGVyUmFkaXVzOiA0cHg7XG5Ac2JCdG5QYWRkaW5nOiA4cHggMTJweDtcblxuLypcbkJ1dHRvblxuXG5BIHN0YW5kYXJkLCBzdGFuZGFsb25lIGJ1dHRvblxuXG4qL1xuLnNiQnRuIHtcbiAgcGFkZGluZzogQHNiQnRuUGFkZGluZztcbiAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICBjb2xvcjogQHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gIGN1cnNvcjogcG9pbnRlcjtcbiAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICBmb250LXdlaWdodDogNDAwO1xuICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuICBtYXJnaW46IDA7XG4gIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgaGVpZ2h0OiAzNnB4O1xuXG4gICY6Zm9jdXMge1xuICAgIG91dGxpbmUtb2Zmc2V0OiAtMnB4O1xuICAgIG91dGxpbmUtd2lkdGg6IDJweDtcbiAgfVxuXG4gICY6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO1xuICB9XG5cbiAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgIGNvbG9yOiBAc2JQcmltYXJ5QnRuRm9udENvbG9yO1xuICAgICY6aG92ZXIge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICB9XG4gIH1cblxuICAmLnNiRW5hYmxlZCB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgYm9yZGVyLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I7XG4gICAgfVxuICB9XG59XG5cbi8vIEEgY29udGFpbmVyL3JvdyBvZiBidXR0b25zLCBhIGxhIGEgYnV0dG9uIFwiYmFyXCJcbi5zYkJ1dHRvbnMge1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIHBhZGRpbmc6IDdweCAwIDdweDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xufVxuXG4vLyBCdXR0b25zIHdpdGhpbiBhIGJ1dHRvbiBjb250YWluZXJcbi5zYkJ1dHRvbnMgPiAuc2JCdG4sIC5zYkJ1dHRvbnMgPiBkaXYgPiAuc2JCdG4sXG4uc2JQYWdlQnV0dG9ucyA+IC5zYkJ0biwgLnNiUGFnZUJ1dHRvbnMgPiBkaXYgPiAuc2JCdG4ge1xuICBib3JkZXItdG9wOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1yaWdodDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gIGJvcmRlci1sZWZ0OiAwO1xuICBib3JkZXItcmFkaXVzOiAwO1xuICBmbG9hdDogbGVmdDsgLy8gdGhpcyByZW1vdmVzIHdoaXRlc3BhY2UgaW4gYmV0d2VlbiBidXR0b25zXG5cbiAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICB9XG5cbiAgLy8gRmlyc3QgYnV0dG9uIHdpdGhpbiBhIGJ1dHRvbiBjb250YWluZXJcbiAgJjpmaXJzdC1vZi10eXBlIHtcbiAgICBib3JkZXItbGVmdDogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICBib3JkZXItbGVmdDogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgLy8gTGFzdCBidXR0b24gd2l0aGluIGEgYnV0dG9uIGNvbnRhaW5lclxuICAmOmxhc3Qtb2YtdHlwZSB7XG4gICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICB9XG59XG5cbi8vIFRoZSBjZW50ZXJlZCBjb250YWluZXIgd2l0aGluIGEgQnV0dG9uIGNvbnRhaW5lclxuLnNiQnV0dG9ucyA+IC5jZW50ZXIsXG4uc2JQYWdlQnV0dG9ucyA+IC5jZW50ZXIge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIFBhZ2UgYnV0dG9ucyB0YWtlIHVwIHRoZSB3aG9sZSB3aWR0aFxuLnNiUGFnZUJ1dHRvbnM6ZXh0ZW5kKCAuc2JCdXR0b25zICkge1xuICB3aWR0aDogMTAwJTtcbiAgYm9yZGVyLXRvcDogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICYuYm90dG9tIHtcbiAgICB3aWR0aDogYXV0bztcbiAgICBwb3NpdGlvbjogZml4ZWQ7XG4gICAgYm90dG9tOiAwcHg7XG4gICAgbGVmdDogMTBweDtcbiAgICByaWdodDogMTBweDtcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBkaXNwbGF5OiBub25lOyAvLyBpbmRpdmlkdWFsIHBhZ2VzIHNob3VsZCAoZHluYW1pY2FsbHkpIHNob3cgaWYgbmVlZGVkXG4gIH1cblxuICAmLmlubGluZSB7XG4gICAgYmFja2dyb3VuZDogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICBib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBtYXJnaW4tdG9wOiA4MHB4O1xuICB9XG59XG5cbi5zYlBhZ2VUaXRsZSA+IC5zYlBhZ2VCdXR0b25zIHtcbiAgYm9yZGVyOiAwO1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIHdpZHRoOiBhdXRvO1xuICBmbG9hdDogcmlnaHQ7XG59XG5cbi8vIEEgY29udGFpbmVyL3JvdyBvZiB0b29sc1xuLnNiVG9vbHMge1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG59XG5cbi8vIEEgc2luZ2xlIHRvb2wgaW5zaWRlIHRoZSBjb250YWluZXIgb2YgdG9vbHNcbi5zYlRvb2xzID4gLnNiVG9vbCB7XG4gIGJvcmRlci1sZWZ0OiAwO1xuICBib3JkZXItcmFkaXVzOiAwO1xuICBmbG9hdDogbGVmdDtcblxuICA+IC5zYi1pY29uLXRyaWFuZ2xlLWRvd24ge1xuICAgIG1hcmdpbi1sZWZ0OiAtNXB4O1xuICB9XG5cbiAgJjpub3QoLm5nLWhpZGUpOm5vdCguc2JCdG5DbGVhcik6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgIGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cblxuICAmOm5vdCgubmctaGlkZSk6bGFzdC1vZi10eXBlIHtcbiAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cbn1cblxuLy8gQSBzaW5nbGUgdG9vbC9idXR0b24gaW4gYSB0b29sYmFyXG4uc2JUb29sIHtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIHBhZGRpbmc6IDVweCA3cHg7XG4gIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgcG9zaXRpb246IHJlbGF0aXZlO1xuICBjdXJzb3I6IHBvaW50ZXI7XG5cbiAgLyogdGhlIGRvd24gdHJpYW5nbGUgaW4gYSB0b29sICovXG4gID4gLnNiLWljb24tZG93bi1kaXIge1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgfVxuXG4gIC8vIHRoZSBcImFjdGl2ZVwiIHN0YXRlIG9mIGEgdG9vbCwgaS5lLiBpdCB3YXMgY2xpY2tlZCBhbmQgbm93IFwiYWN0aXZlXCJcbiAgJi5hY3RpdmUge1xuICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIH1cblxuICAmOmhvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkhvdmVyQmdDb2xvcjtcbiAgICBjb2xvcjogQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjtcbiAgfVxuXG4gICY6Zm9jdXMge1xuICAgIG91dGxpbmUtb2Zmc2V0OiAtMnB4O1xuICAgIG91dGxpbmUtd2lkdGg6IDJweDtcbiAgfVxufVxuXG4vLyBhIHRvb2wgd2l0aCBhIHBvcHVwIG1lbnVcbi5zYlRvb2wgPiBtZW51IHtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICByaWdodDogLTFweDtcbiAgdG9wOiAxNnB4O1xuICBmb250LXdlaWdodDogbm9ybWFsO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gIHBhZGRpbmc6IDhweCAxNHB4O1xuICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAwO1xuICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICBkaXNwbGF5OiBub25lO1xuICB6LWluZGV4OiA0OyAgLy8gdW5kZXIgZml4ZWQgcGFnZSBoZWFkZXJcbiAgdGV4dC1hbGlnbjogbGVmdDtcblxuICAmLmR0IHtcbiAgICB0b3A6IDIwcHg7XG4gICAgbWF4LWhlaWdodDogMzAwcHg7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gIH1cblxuICAvLyBhIGhlYWRlciByb3cvdGl0bGUgb2YgdGhlIG1lbnVcbiAgJiA+IGhlYWRlciB7XG4gICAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTtcbiAgICBjb2xvcjogIzc3NztcbiAgICBtYXJnaW4tYm90dG9tOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gIH1cblxuICAvLyBhIGljb24gaW4gdGhlIG1lbnVcbiAgKltjbGFzc149c2ItaWNvbl0ge1xuICAgIG1hcmdpbi1yaWdodDogNnB4O1xuICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgY29sb3I6ICM3Nzc7XG4gIH1cbn1cblxuLy8gdGhlIFwib3BlblwiIHN0YXRlIG9mIHRoZSBtZW51IG9mIGEgdG9vbFxuLnNiVG9vbC5vcGVuID4gbWVudSB7XG4gIGRpc3BsYXk6IGJsb2NrO1xufVxuXG4vLyB0aGUgbGlzdCBvZiBpdGVtcyBpbiB0aGUgdG9vbCdzIG1lbnVcbi5zYlRvb2wgPiBtZW51IHVsIHtcbiAgbGlzdC1zdHlsZTogbm9uZTtcbiAgcGFkZGluZzogMDtcbiAgbWFyZ2luOiAwO1xuXG4gIC8vIGEgaXRlbSBpbiB0aGUgbGlzdCBvZiB0aGUgdG9vbCdzIG1lbnVcbiAgJiA+IGxpIHtcbiAgICBwYWRkaW5nOiAzcHggM3B4IDNweCAwcHg7XG5cbiAgICAmID4gYSB7XG4gICAgICBkaXNwbGF5OiBibG9jaztcbiAgICB9XG5cbiAgICAvLyB0aGUgY2hlY2ttYXJrIG9mIGVhY2ggaXRlbVxuICAgIC5zYi1pY29uLW9rIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLy8gdGhlIGNoZWNrbWFyayBvZiB0aGUgc2VsZWN0ZWQgaXRlbVxuICAgICYuc2VsZWN0ZWQgLnNiLWljb24tb2sge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgbWFyZ2luLXJpZ2h0OiAwO1xuICAgIH1cbiAgfVxufVxuXG4vLyBhIHRvb2wgbWVudSB3aXRoIG11bHRpcGxlIGhlYWRlciBzZWN0aW9uc1xuLnNiVG9vbCA+IG1lbnUubXVsdGkgPiBoZWFkZXI6bGFzdC1vZi10eXBlIHtcbiAgbWFyZ2luLXRvcDogMTZweDtcbn1cbi8vIGEgdG9vbCBtZW51IHdpdGggbXVsdGlwbGUgbGlzdHMgIChyZXZpc2l0IHRoaXMhKVxuLnNiVG9vbCA+IG1lbnUubXVsdGkgPiB1bDpsYXN0LW9mLXR5cGUgbGkge1xuICBtaW4td2lkdGg6IDEzMHB4O1xufVxuXG4vLyBhIG1lbnUgbGluayBhY2Nlc3NlZCBmcm9tIHRoZSBhcnJvd1xuLnNiIG1lbnUgYXtcbiAgY29sb3I6QHNiR3JvdXBCdG5Gb250Q29sb3I7XG4gICY6aG92ZXIge1xuICAgIGNvbG9yOiBAc2JHcm91cEJ0bkhvdmVyRm9udENvbG9yO1xuICB9XG59XG4iLCIvLyBBbGwgc2FsZXNmb3JjZSBzdHlsZS9lbGVtZW50IG92ZXJyaWRlc1xuXG4jYm9keUNlbGwge1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gIG92ZXJmbG93OiBoaWRkZW47XG4gIHBhZGRpbmc6IDBweDtcbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB3aWR0aDogMTAwJTtcbiAgbWluLWhlaWdodDogNTAwcHg7XG59XG5cbi8vIGZvciBcInNldHVwXCIgcGFnZXMsIGUuZy4gRWRpdFNldHRpbmdzXG4jYm9keURpdl9zZXR1cCA+IC5vdXRlciB7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3IgIWltcG9ydGFudDtcbiAgLm9MZWZ0IHtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIZWFkZXJCZ0NvbG9yICFpbXBvcnRhbnQ7XG4gIH1cbn1cblxuI3NpZGViYXJDZWxsLnNpZGViYXJDb2xsYXBzZWQge1xuICBwYWRkaW5nLWxlZnQ6IDA7XG5cbiAgKyAjYm9keUNlbGwge1xuICAgIG1hcmdpbi1sZWZ0OiAtMXB4O1xuICB9XG59XG5cbiNNb3JlVGFic19UYWIgPiAjTW9yZVRhYnNfTGlzdCB7XG4gIHotaW5kZXg6IDEwOyAgLy8gbXVzdCBiZSBsYXJnZXIgdGhhbiBmaXhlZCBwYWdlIGhlYWRlciAodGFiIG92ZXJmbG93IGRyb3Bkb3duKVxufVxuXG50YWJsZSB0ZCB7XG4gIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xufVxuXG4uc2IgdWwgbGksXG4uc2Igb2wgbGkge1xuICBtYXJnaW46IDA7XG4gIHBhZGRpbmc6IDA7XG59XG5cbi8vIEJ1dHRvbnMgLSBtb3JlIHNwZWNpZmljaXR5IG5lZWVkZWQgYXMgLmJ0biB0YWtlcyBwcmVjZWRlbmNlXG4uYnRuLnNiQnRuOmV4dGVuZCguc2JCdG4pIHt9XG5cbi8vIEFwZXggUGFnZU1lc3NhZ2VzIDxhcGV4OnBhZ2VNZXNzYWdlcz5cbi5zYiAubWVzc2FnZSB7XG4gIGJvcmRlci1yYWRpdXM6IDNweDtcbiAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyTGVmdCBAc2JQYWdlSGVhZGVyTGVmdCAwIEBzYlBhZ2VIZWFkZXJMZWZ0KjEuNjtcbiAgcGFkZGluZzogMTJweDtcbiAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgYmFja2dyb3VuZDogbm9uZTtcblxuICAubXNnSWNvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICB3aWR0aDogMDtcbiAgICBoZWlnaHQ6IDA7XG4gIH1cblxuICAubWVzc2FnZVRleHQge1xuICAgIG1hcmdpbjogMCAwIDAgMzBweDtcblxuICAgID4gc3BhbiwgaDQsID4gZGl2IHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICBsaW5lLWhlaWdodDogQHNiRm9udFNpemUgKiAyLjA7XG4gICAgfVxuXG4gICAgaDQge1xuICAgICAgbWFyZ2luLWxlZnQ6IDEwcHg7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDZweDtcbiAgICB9XG5cbiAgICA+IGRpdjpub3QoOmZpcnN0LW9mLXR5cGUpIHtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgICY6YmVmb3JlIHtcbiAgICAgIGZvbnQtZmFtaWx5OiBcInNiXCI7XG4gICAgICBmb250LXN0eWxlOiBub3JtYWw7XG4gICAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuMDtcbiAgICAgIHNwZWFrOiBub25lO1xuXG4gICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gICAgICB3aWR0aDogMWVtO1xuICAgICAgbWFyZ2luLWxlZnQ6IC0zMHB4O1xuICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgZm9udC12YXJpYW50OiBub3JtYWw7XG4gICAgICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbiAgICAgIGxpbmUtaGVpZ2h0OiAxZW07XG4gICAgfVxuICB9XG5cbiAgJi5lcnJvck0yLFxuICAmLmVycm9yTTMsXG4gICYuZXJyb3JNNCxcbiAgJi5lcnJvck01LFxuICAmLmVycm9yTTYge1xuICAgIC5tZXNzYWdlVGV4dCB7XG4gICAgICBjb2xvcjogI2NjMDAwMDtcbiAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgY29udGVudDogJ1xcZTgyMSc7ICAvL3NiLWljb24tYXR0ZW50aW9uLWNpcmNsZWRcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAmLndhcm5pbmdNMixcbiAgJi53YXJuaW5nTTMsXG4gICYud2FybmluZ000LFxuICAmLndhcm5pbmdNNSxcbiAgJi53YXJuaW5nTTYge1xuICAgIC5tZXNzYWdlVGV4dCB7XG4gICAgICBjb2xvcjogI2Q5ODYzMztcbiAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgY29udGVudDogJ1xcZTgyMCc7ICAvL3NiLWljb24tYXR0ZW50aW9uXG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgJi5pbmZvTTIsXG4gICYuaW5mb00zLFxuICAmLmluZm9NNCxcbiAgJi5pbmZvTTUsXG4gICYuaW5mb002IHtcbiAgICAubWVzc2FnZVRleHQge1xuICAgICAgY29sb3I6ICMwMDAwY2M7XG4gICAgICAmOmJlZm9yZSB7XG4gICAgICAgIGNvbnRlbnQ6ICdcXGU4MGYnOyAgLy9zYi1pY29uLWluZm8tY2lyY2xlZFxuICAgICAgfVxuICAgIH1cbiAgfVxufVxuIiwiLypcbk1vZGFsIGRpYWxvZyBtYXNrXG5cblRoZSBsYXllciBiZWhpbmQgdGhlIGRpYWxvZyB0aGF0IG1hc2tzIHRoZSBlbnRpcmUgcGFnZS5cbiovXG4uc2JNb2RhbE1hc2sge1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIHRvcDogMDtcbiAgbGVmdDogMDtcbiAgcmlnaHQ6IDA7XG4gIGJvdHRvbTogMDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiTWFza0NvbG9yO1xuICBvcGFjaXR5OiAwLjg7XG4gIHotaW5kZXg6IDEwMDA7XG59XG5cbi8qXG5Nb2RhbCBEaWFsb2dcblxuQSBkaWFsb2cgd2l0aCBtb2RhbGl0eSB0aGF0IHRha2VzIHVwIHRoZSBlbnRpcmUgcGFnZS5cbiAqL1xuLnNiTW9kYWxEaWFsb2cge1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICAvLyBib3JkZXI6IDFweCBzb2xpZCAjMDAwO1xuICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIHRvcDogMTYwcHg7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgbGVmdDogMDtcbiAgcmlnaHQ6IDA7XG4gIG1hcmdpbjogMCBhdXRvO1xuICAvLyBtYXgtd2lkdGg6IDYwMHB4O1xuICBtaW4taGVpZ2h0OiAyMDBweDtcbiAgei1pbmRleDogMTAwMTtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gID4gaGVhZGVyIHtcbiAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgcGFkZGluZzogMjRweCAxNnB4O1xuICAgIC8vIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAvLyBsaW5lLWhlaWdodDogQHNiRm9udFNpemUgKiAyZW07XG4gICAgY29sb3I6IEBzYkhlYWRlckZvbnRDb2xvcjtcblxuICAgID4gaSB7XG4gICAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG4gICAgfVxuXG4gICAgPiAqIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgPiBoMiB7XG4gICAgICAvLyBmb250LXdlaWdodDogYm9sZDtcbiAgICAgIG1hcmdpbjogMCAwIDAgNnB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDIuNDtcbiAgICAgIGNvbG9yOiBAc2JIZWFkZXJGb250Q29sb3I7XG4gICAgfVxuXG4gICAgPiBoMyB7XG4gICAgICBjb2xvcjogQHNiSGVhZGVyRm9udENvbG9yO1xuICAgIH1cblxuICAgID4gLnNmLWljb24tY2xvc2Uge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDM7XG4gICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICB0b3A6IC01MHB4O1xuICAgICAgcmlnaHQ6IDBweDtcbiAgICAgICY6aG92ZXIge1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICAgID4gLnNmLWljb24tY2xvc2U6YmVmb3JlIHtcbiAgICAgIGNvbG9yOiAjZmZmO1xuICAgIH1cbiAgfVxuXG4gIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBpW2NsYXNzXj1zZi1pY29uXSB7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cblxuICAgIC5zYlRhYmxlIHtcbiAgICAgIG1hcmdpbi1ib3R0b206IDhweDtcblxuICAgICAgdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgfVxuICAgIH1cblxuICAgIHVsIHtcbiAgICAgIC13ZWJraXQtcGFkZGluZy1lbmQ6IDQwcHg7XG4gICAgfVxuICB9XG5cbiAgLnNiTW9kYWxGb290ZXIge1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIGJvcmRlci10b3A6IDJweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiAxMnB4IDE2cHg7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICBib3JkZXItYm90dG9tLWxlZnQtcmFkaXVzOiA0cHg7XG4gICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDRweDtcbiAgICBkaXNwbGF5OiBpbmxpbmUtdGFibGU7XG5cdGhlaWdodDogMjZweDtcblxuICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBwYWRkaW5nOiAwIDAgMCAxNnB4O1xuICAgICAgPiAuc2JCdG4ge1xuICAgICAgICBwYWRkaW5nOiA4cHggMTZweDtcblxuICAgICAgICAmLnNiUHJpbWFyeUFjdGlvbiB7XG4gICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICB9XG59XG5cbiNEZXNjcmlwdGlvbkVkaXRvckRpYWxvZyB7XG4gICBtaW4taGVpZ2h0OiA0MjlweDtcbn1cblxuLy8gc2JEaWFsb2cgYW5kIHNiRGlhbG9nTWFzayBhcmUgZWxlbWVudHMgZGVzaWduZWQgdG8gc3BlY2lmaWNhbGx5IHJlcGxhY2UgT3ZlcmxheURpYWxvZyB3aGlsZSBrZWVwaW5nIHNhbWUgbWFya3VwL0FQSSBzdHJ1Y3R1cmVcbkBzYkRpYWxvZ1o6IDkwMDA7XG5cbi5zYkRpYWxvZ01hc2sge1xuXHRwb3NpdGlvbjogZml4ZWQ7XG5cdHRvcDogMDtcblx0bGVmdDogMDtcblx0cmlnaHQ6IDA7XG5cdGJvdHRvbTogMDtcblx0YmFja2dyb3VuZDogcmdiYSggMTI2LDE0MCwxNTMsMC44KTtcblx0ZGlzcGxheTogYmxvY2s7XG5cdHZpc2liaWxpdHk6IGhpZGRlbjtcblx0ei1pbmRleDogQHNiRGlhbG9nWjtcbn1cblxuLnNiRGlhbG9nTWFzay5vcGVuLCAuc2JEaWFsb2cub3BlbiB7XG5cdHZpc2liaWxpdHk6IHZpc2libGU7XG59XG5cbi5zYkRpYWxvZywgLnNiRGlhbG9nICoge1xuXHRib3gtc2l6aW5nOiBib3JkZXItYm94O1xuXHRtYXJnaW46IDA7XG5cdHBhZGRpbmc6IDA7XG59XG5cbi5zYkRpYWxvZyB7XG5cdHBvc2l0aW9uOiBmaXhlZDtcblx0dG9wOiAwO1xuXHRsZWZ0OiAwO1xuXHR6LWluZGV4OiBAc2JEaWFsb2daICsgMTtcblx0ZGlzcGxheTogYmxvY2s7XG5cdHZpc2liaWxpdHk6IGhpZGRlbjtcblxuXHQ+IC5zYkRpYWxvZ0NvbiB7XG5cdFx0Ym9yZGVyLXJhZGl1czogNHB4O1xuXHRcdHBvc2l0aW9uOiByZWxhdGl2ZTtcblx0XHRtYXJnaW46IDAgYXV0bztcblx0XHRiYWNrZ3JvdW5kOiAjZmZmO1xuXG5cdFx0PiBoZWFkZXIge1xuXHRcdFx0ZGlzcGxheTogYmxvY2s7XG5cdFx0XHRwb3NpdGlvbjogcmVsYXRpdmU7XG5cdFx0XHRwYWRkaW5nOiAyNHB4IDE2cHg7XG5cdFx0XHR0ZXh0LWFsaWduOiBjZW50ZXI7XG5cdFx0XHRib3JkZXItYm90dG9tOiAycHggc29saWQgcmdiKDIxNiwyMjEsMjMwKTtcblxuXHRcdFx0PiBoMiB7XG5cdFx0XHRcdGxpbmUtaGVpZ2h0OiAyMHB4O1xuXHRcdFx0XHRmb250LXNpemU6IDI0cHg7XG5cdFx0XHR9XG5cblx0XHRcdD4gYnV0dG9uIHtcblx0XHRcdFx0cG9zaXRpb246IGFic29sdXRlO1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdHRvcDogLTQ2cHg7XG5cdFx0XHRcdHJpZ2h0OiAtOHB4O1xuXHRcdFx0XHR3aWR0aDogNDhweDtcblx0XHRcdFx0aGVpZ2h0OiA0OHB4O1xuXG5cdFx0XHRcdGNvbG9yOiAjZmZmO1xuXHRcdFx0XHRiYWNrZ3JvdW5kOiBub25lO1xuXHRcdFx0XHRib3JkZXI6IDA7XG5cdFx0XHRcdG91dGxpbmU6IDA7XG5cdFx0XHRcdGZvbnQtc2l6ZTogMjRweDtcblx0XHRcdH1cblx0XHR9XG5cblx0XHQ+IC5zYkRpYWxvZ0JvZHkge1xuXHRcdFx0cGFkZGluZzogMTZweDtcblx0XHR9XG5cdH1cbn1cblxuLy8gSlEgVUkgdG9vbHRpcHNcbi51aS10b29sdGlwOmV4dGVuZCguc2IpIHtcbiAgcGFkZGluZzogOHB4O1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHotaW5kZXg6IDk5OTk7XG4gIG1heC13aWR0aDogMzAwcHg7XG4gIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICBib3gtc2hhZG93OiAwIDAgMnB4IEBzYkJvcmRlckNvbG9yO1xuXG4gID4gLnVpLXRvb2x0aXAtY29udGVudCB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIH1cblxuICA+IC5hcnJvdyB7XG4gICAgd2lkdGg6IDcwcHg7XG4gICAgaGVpZ2h0OiAxNnB4O1xuICAgIG92ZXJmbG93OiBoaWRkZW47XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIGxlZnQ6IDUwJTtcbiAgICBtYXJnaW4tbGVmdDogLTM1cHg7XG4gICAgYm90dG9tOiAtMTZweDtcbiAgfVxuICA+IC5hcnJvdy50b3Age1xuICAgIHRvcDogLTE2cHg7XG4gICAgYm90dG9tOiBhdXRvO1xuXG4gICAgJjphZnRlciB7XG4gICAgICBib3R0b206IC0yMHB4O1xuICAgICAgdG9wOiBhdXRvO1xuICAgIH1cbiAgfVxuICA+IC5hcnJvdy5sZWZ0IHtcbiAgICBsZWZ0OiAyOCU7XG4gIH1cbiAgPiAuYXJyb3c6YWZ0ZXIge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgYm9yZGVyOiBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgICBjb250ZW50OiBcIlwiO1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiAyMHB4O1xuICAgIHRvcDogLTIwcHg7XG4gICAgd2lkdGg6IDI1cHg7XG4gICAgaGVpZ2h0OiAyNXB4O1xuICAgIGJveC1zaGFkb3c6IDZweCA1cHggOXB4IC05cHggYmxhY2s7XG4gICAgLXdlYmtpdC10cmFuc2Zvcm06IHJvdGF0ZSg0NWRlZyk7XG4gICAgLW1zLXRyYW5zZm9ybTogcm90YXRlKDQ1ZGVnKTtcbiAgICB0cmFuc2Zvcm06IHJvdGF0ZSg0NWRlZyk7XG4gIH1cbn1cblxuLy8gSlEgVUkgYTExeSBzdHlsZXMgKG5lZWRlZCBmb3IgdG9vbGlwcylcbi51aS1oZWxwZXItaGlkZGVuLWFjY2Vzc2libGUge1xuICBib3JkZXI6IDA7XG4gIGNsaXA6IHJlY3QoMCAwIDAgMCk7XG4gIGhlaWdodDogMXB4O1xuICBtYXJnaW46IC0xcHg7XG4gIG92ZXJmbG93OiBoaWRkZW47XG4gIHBhZGRpbmc6IDA7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgd2lkdGg6IDFweDtcbn1cblxuI3NiQ3VzdG9tQWN0aW9uQ29udGFpbmVyIHtcbiAgbWFyZ2luOiAxOHB4O1xuICB0b3A6IDBweDtcbiAgaGVpZ2h0OiA5NSU7XG4gIC8vIG1pbi1oZWlnaHQ6IDBweDtcbiAgPiAuc2YtaWNvbi1jYW5jZWwtY2lyY2xlZCB7XG4gICAgZm9udC1zaXplOiAzNXB4O1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICB0b3A6IC05cHg7XG4gICAgcmlnaHQ6IC00cHg7XG4gICAgd2lkdGg6IDIwcHg7XG4gICAgaGVpZ2h0OiAyMHB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYk1hc2tDb2xvcjtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG4gIH1cbiAgPiAuc2YtaWNvbi1jYW5jZWwtY2lyY2xlZDpiZWZvcmUge1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICByaWdodDogMTVweDtcbiAgICB0b3A6IC0xMHB4O1xuICB9XG5cbn1cblxuI2Vhc3lYRE1fU0JRUV9wcm92aWRlciB7XG4gIHdpZHRoOiAxMDAlO1xuICBoZWlnaHQ6IDEwMCU7XG59XG5cbiNzYlByaWNlYm9va01vZGFsIHtcbiAgLnNiTW9kYWxEaWFsb2c7XG4gIG1heC13aWR0aDogNjQwcHg7XG5cbiAgPiAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgIHBhZGRpbmc6IDIwcHg7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gICAgPiBzZWxlY3Qge1xuICAgICAgaGVpZ2h0OiAzNHB4O1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNjtcbiAgICAgIHdpZHRoOiAxMDAlO1xuICAgICAgbWFyZ2luOiAxNHB4IDA7XG4gICAgfVxuICB9XG59XG4iLCIvLyBUaGUgcGFnZSB0aXRsZSBhdCB0b3AgbGVmdCBvZiBwYWdlIChpY29uLCBwYWdlIG5hbWUsIG9iamVjdCBpbnN0YW5jZSBuYW1lLCBldGMgKVxuLnNiUGFnZVRpdGxlIHtcbiAgLy8gcGFkZGluZzogOXB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICBwYWRkaW5nOiAyNHB4IDI0cHggMTZweDtcbiAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgdHJhbnNpdGlvbjogcGFkZGluZyAuMjVzIGVhc2UtaW47XG5cbiAgaDEsIGgyIHtcbiAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG4gIH1cblxuICAvLyB0aGUgc2Vjb25kYXJ5IHBhZ2UgdGl0bGUsIG9iamVjdCBpbnN0YW5jZSBuYW1lLCBldGMgKG9wdGlvbmFsKVxuICBoMiB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7ICAvLyBub3QgYSBub3JtYWwgaDIgc2l6ZVxuICAgIGNvbG9yOiBAc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9yO1xuICAgIC8vIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgZm9udC13ZWlnaHQ6IDQwMDtcbiAgICBwYWRkaW5nLWJvdHRvbTogNHB4O1xuICB9XG5cbiAgPiAuc2JQYWdlVGl0bGVUYWJsZSB7XG4gICAgZGlzcGxheTogdGFibGU7XG4gICAgd2lkdGg6IDEwMCU7XG4gICAgLXdlYmtpdC10cmFuc2l0aW9uLWRlbGF5OiAwcywgMHMsIDBzO1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi1kdXJhdGlvbjogMC4yNXMsIDAuMjVzLCAwLjI1cztcbiAgICAtd2Via2l0LXRyYW5zaXRpb24tcHJvcGVydHk6IC13ZWJraXQtdHJhbnNmb3JtLCBvcGFjaXR5LCBsZWZ0O1xuICAgIC13ZWJraXQtdHJhbnNpdGlvbi10aW1pbmctZnVuY3Rpb246IGVhc2UtaW4sIGVhc2UtaW4sIGVhc2U7XG4gICAgLXdlYmtpdC11c2VyLWRyYWc6IG5vbmU7XG5cbiAgICAmLnNiUmVzdWx0c1NlY3Rpb24ge1xuICAgICAgPiAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiAuc2JQYWdlVGl0bGVMZWZ0LFxuICAgID4gLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgZGlzcGxheTogdGFibGUtY2VsbDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuICAgIH1cblxuICAgID4gLnNiUGFnZVRpdGxlTGVmdCB7XG4gICAgICBkaXNwbGF5OiBpbmxpbmUtZmxleDtcbiAgICAgIHdpZHRoOiAzMCU7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogdG9wO1xuXG5cbiAgICAgIC5zYlRpdGxlcyB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcbiAgICAgICAgLXdlYmtpdC10cmFuc2l0aW9uLWRlbGF5OiAwcywgMHMsIDBzO1xuICAgICAgICAtd2Via2l0LXRyYW5zaXRpb24tZHVyYXRpb246IDAuMjVzLCAwLjI1cywgMC4yNXM7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi1wcm9wZXJ0eTogLXdlYmtpdC10cmFuc2Zvcm0sIG9wYWNpdHksIGxlZnQ7XG4gICAgICAgIC13ZWJraXQtdHJhbnNpdGlvbi10aW1pbmctZnVuY3Rpb246IGVhc2UtaW4sIGVhc2UtaW4sIGVhc2U7XG4gICAgICAgIC13ZWJraXQtdXNlci1kcmFnOiBub25lO1xuICAgICAgfVxuICAgICAgW2NsYXNzXj1zZi1pY29uXSB7Ly90aGVzZSBuZWVkIHRvIGJlIHZhcmlhYmxlc1xuICAgICAgICBmb250LXNpemU6IDUwcHg7XG4gICAgICAgIGhlaWdodDogNTBweDtcbiAgICAgICAgd2lkdGg6IDUwcHg7XG4gICAgICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgICAgICAgbWFyZ2luLXJpZ2h0OiAxMnB4O1xuICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgdHJhbnNpdGlvbjogYWxsIC4yNXMgZWFzZS1pbjtcblxuICAgICAgICAmLnJlc2l6ZSB7XG4gICAgICAgICAgZm9udC1zaXplOiAzMHB4O1xuICAgICAgICAgIHBhZGRpbmc6IDEzcHggMTBweCAwIDEwcHg7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUgey8vdGhlc2UgbmVlZCB0byBiZSB2YXJpYWJsZXNcbiAgICAgICAgY29sb3I6ICNmZmY7XG4gICAgICAgIG1hcmdpbjogMDtcbiAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgICB0b3A6IC03cHg7XG4gICAgICB9XG5cbiAgICAgIC5yZXNldEhlaWdodFtjbGFzc149c2YtaWNvbl06YmVmb3JlIHtcbiAgICAgICAgdG9wOiAwcHg7XG4gICAgICB9XG5cblxuXG4gICAgICA+IHNwYW4ge1xuXHRcdFx0XHQvL1RoaXMgaXMgdG8gZml4IHRoZSBoZWFkZXIgaXNzdWUgaW4gU2FmYXJpXG4gICAgICAgIHdpZHRoOiAyMDBweDtcblxuXHRcdFx0XHQvLyBCdXQgaW4gSUUxMSsgaXQgYnJlYWtzLCBzbyByZXNldCBpdCBiYWNrIHdpdGggYSBoYWNreSB3YXkgdG8gdGFyZ2V0IElFIG9ubHlcblx0XHRcdFx0QG1lZGlhIHNjcmVlbiBhbmQgKC1tcy1oaWdoLWNvbnRyYXN0OiBub25lKSwgKC1tcy1oaWdoLWNvbnRyYXN0OiBhY3RpdmUpIHtcblx0XHRcdFx0XHR3aWR0aDogYXV0bztcblx0XHRcdFx0fVxuICAgICAgfVxuICAgIH1cblxuICAgID4gLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICA+IC5zYlRvb2xzLFxuICAgICAgPiAuc2JCdXR0b25zIHtcbiAgICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIHRoZSBcIlggUHJvZHVjdHMgRm91bmRcIiBsYWJlbFxuICAuc2JSZXN1bHRzIHtcbiAgICBtYXJnaW46IDdweCAwIDAgNjJweDtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuXG4gICAgJi5zYldhcm5pbmcge1xuICAgICAgbWFyZ2luLXRvcDogMnB4O1xuICAgICAgY29sb3I6ICNjYzc4MjQ7XG4gICAgICBbY2xhc3M9c2YtaWNvbi13YXJuaW5nXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjY7XG4gICAgICAgIHdpZHRoOiAxM3B4O1xuICAgICAgICBoZWlnaHQ6IDIwcHg7XG4gICAgICAgIC8vIHRvcDogLTE1cHg7XG4gICAgICAgICY6YmVmb3JlIHtcbiAgICAgICAgICBjb2xvcjogI2NjNzgyNDtcbiAgICAgICAgICBtYXJnaW46IDAgNnB4IDAgMDtcbiAgICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgICAgdG9wOiAycHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAmLnNxdWVlemVkIHtcbiAgICBwYWRkaW5nOiAyMHB4IDE1cHggN3B4O1xuXG4gICAgPiAuc2JQYWdlVGl0bGVUYWJsZSB7XG4gICAgICA+IC5zYlBhZ2VUaXRsZUxlZnQge1xuICAgICAgICAvLyBwYWRkaW5nOiA3cHggMDtcblxuICAgICAgICBbY2xhc3NePXNmLWljb25dIHtcbiAgICAgICAgICBmb250LXNpemU6IDM2cHg7XG4gICAgICAgICAgaGVpZ2h0OiAzNnB4O1xuICAgICAgICAgIHdpZHRoOiAzNnB4O1xuICAgICAgICAgICYucmVzaXplIHtcbiAgICAgICAgICAgIGZvbnQtc2l6ZTogMjNweDtcbiAgICAgICAgICAgIHBhZGRpbmctdG9wOiA4cHg7XG4gICAgICAgICAgICBwYWRkaW5nLWxlZnQ6IDdweDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUge1xuICAgICAgICAgIHRvcDogLTVweDtcbiAgICAgICAgfVxuICAgICAgICAuc2JUaXRsZXMge1xuICAgICAgICAgIHRyYW5zZm9ybTogdHJhbnNsYXRlM2QoMHB4LCAtMTJweCwgMHB4KTtcbiAgICAgICAgICAtd2Via2l0LXRyYW5zZm9ybTogbWF0cml4KDEsIDAsIDAsIDEsIDAsIC04KTtcbiAgICAgICAgfVxuICAgICAgICBoMiB7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLnNiQnV0dG9ucyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG5cbiAgICAgICYuc2JSZXN1bHRzU2VjdGlvbiB7XG4gICAgICAgIG9wYWNpdHk6IDA7XG4gICAgICAgIGRpc3BsYXk6IG5vbmU7IC8vVGVtcG9yYXJ5IHVudGlsIHRoZXJlIGlzIGFub3RoZXIgd2F5IHRvIGtlZXAgdGhpcyBmcm9tIHRha2luZyB1cCBzcGFjZVxuICAgICAgICB0cmFuc2Zvcm06IHRyYW5zbGF0ZTNkKDBweCwgLTE3cHgsIDBweCk7XG4gICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBtYXRyaXgoMSwgMCwgMCwgMSwgMCwgLTE3KTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gRml4IHRoZSBwYWdlIHRpdGxlIHRvIHRvcCBvZiB2aWV3cG9ydCB3aGVuIG5lZWRlZFxuLnNiSGVhZGVyRml4ZWQgLnNiUGFnZVRpdGxlIHtcbiAgcG9zaXRpb246IGZpeGVkO1xuICB0b3A6IDExNHB4OyAvLyBoZWlnaHQgb2YgU0YgQXBwIGhlYWRlci4gIE9ubHkgc2V0IGhlcmUgZm9yIGluaXRpYWwgcmVuZGVyaW5nXG4gIGxlZnQ6IDEwcHg7ICAvLyBzaXplIG9mIFNGIEFsb2hhIGd1dHRlcnNcbiAgcmlnaHQ6IDEwcHg7XG4gIHotaW5kZXg6IDU7XG4gIHZpc2liaWxpdHk6IGhpZGRlbjsgLy8gZm9yIGxvYWRpbmcuIHdlJ2xsIGR5bmFtaWNhbGx5IHNob3cgd2hlbiBwYWdlIGlzIFwicmVhZHlcIlxufVxuXG4jc2lkZWJhckNlbGw6bm90KC5zaWRlYmFyQ29sbGFwc2VkKSArICNib2R5Q2VsbCAuc2JIZWFkZXJGaXhlZCAuc2JQYWdlVGl0bGUge1xuICBsZWZ0OiAyMzBweDsgIC8vIGZvciBpbml0aWFsIHBvc2l0aW9uIHdoaWxlIFwibG9hZGluZ1wiIGlzIHNob3duXG59XG5cbiNtYWluQ29udGVudCB7XG4gIG1hcmdpbi1sZWZ0OiAxcHg7XG59XG5cbi8vIFRoZSBwYWdlIGJsb2NrIGFmdGVyIHRoZSBwYWdlIHRpdGxlLCBpLmUuIHRoZSBtYWluIGNvbnRlbnRzIG9mIHRoZSBwYWdlXG4uc2JQYWdlQmxvY2sge1xuICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xufVxuXG4vLyBBIHNlY3Rpb24gd2l0aGluIGEgcGFnZSBibG9ja1xuLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gIG1hcmdpbjogQHNiUGFnZUhlYWRlckxlZnQ7XG4gIGJhY2tncm91bmQ6IEBzYkhlYWRlckJnQ29sb3I7XG4gIGJvcmRlcjogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIHBhZGRpbmc6IDE0cHg7XG4gIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cbiAgPiBoZWFkZXIge1xuICAgIG1hcmdpbi1ib3R0b206IDEwcHg7XG4gIH1cblxuICAmOmFmdGVyOmV4dGVuZCggLnNiQ2xlYXIgKSB7fVxufVxuXG4vLyBUaGUgTG9hZGluZyBsYXllciBtb2RhbCBtYXNrXG4uc2JMb2FkaW5nTWFzayB7XG4gIHBvc2l0aW9uOiBmaXhlZDtcbiAgdG9wOiAwO1xuICBsZWZ0OiAwO1xuICByaWdodDogMDtcbiAgYm90dG9tOiAwO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiAjQThCN0M3O1xuICBvcGFjaXR5OiAwLjg7XG4gIHotaW5kZXg6IDEwMDAxO1xufVxuXG4vLyBUaGUgTG9hZGluZyBzcGlubmVyIGljb25cbi5zYkxvYWRpbmcge1xuICBwb3NpdGlvbjogZml4ZWQ7XG4gIHRvcDogMzclO1xuICBsZWZ0OiA1MCU7XG4gIG1hcmdpbi1sZWZ0OiAtNzRweDtcbn1cblxuLy8gTG9va3VwIFNlYXJjaCBSZXN1bHRzXG4uc2JTZWFyY2hSZXN1bHRzIHtcblxuICAvLyB0aGUgbGlzdCBvZiBwcm9kdWN0c1xuICAuc2JUYWJsZSB7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcblxuICAgIC8vIGZpcnN0IGNvbHVtbiBvZiBsaXN0IGlzIGNoZWNrYm94L3NlbGVjdG9yIGNvbHVtblxuICAgID4gdGhlYWQgPiB0ciA+IHRoOmZpcnN0LW9mLXR5cGUsXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgfVxuXG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG4gIH1cblxuICAvLyB0b29sYmFyIGluIHVwcGVyIHJpZ2h0IG9mIHBhZ2UgKEZpbHRlciwgZXRjKVxuICAuc2JUb29scyB7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICB9XG59XG4iLCJAc2JUZXh0Ym94SGVpZ2h0OiBAc2JGb250U2l6ZSAqIDIuNTtcbkBzYlRleHRib3hCb3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbkBzYlRleHRib3hSYWRpdXM6IDNweDtcbkBzYlNlbGVjdEhlaWdodDogQHNiRm9udFNpemUgKiAyLjU7XG5Ac2JTZWxlY3RCb3JkZXI6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbkBzYlNlbGVjdFJhZGl1czogM3B4O1xuQHNiU2VsZWN0QmdDb2xvcjogQHNiUGFnZUJnQ29sb3I7XG5Ac2JDaGVja2JveFNpemU6IDIycHg7XG5cbi5zYiB7XG4gIC8vIFRleHQgYm94ZXMgLSBkZWZhdWx0IHN0eWxlc1xuICBpbnB1dFt0eXBlPXRleHRdLCBpbnB1dDpub3QoW3R5cGVdKSB7XG4gICAgaGVpZ2h0OiBAc2JUZXh0Ym94SGVpZ2h0O1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgIG1pbi13aWR0aDogOTVweDtcbiAgICAgIHdpZHRoOiA4NSU7XG4gICAgICAgJi5pbnZhbGlkRGF0ZSB7XG4gICAgICAgIGJvcmRlci1jb2xvcjogI2MwMDtcbiAgICAgICB9XG4gICAgfVxuXG4gIH1cblxuXG4gIC8vIFNlbGVjdCBwdWxsZG93bnMgLSBkZWZhdWx0IHN0eWxlc1xuICBzZWxlY3Q6bm90KFttdWx0aXBsZV0pIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAtd2Via2l0LWFwcGVhcmFuY2U6IG5vbmU7XG4gICAgLW1vei1hcHBlYXJhbmNlOiBub25lO1xuICAgIG1pbi13aWR0aDogMTAwcHg7XG4gICAgcGFkZGluZzogMCAxNHB4O1xuICAgIG1hcmdpbjogMDtcbiAgICBoZWlnaHQ6IEBzYlNlbGVjdEhlaWdodDtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJ2RhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEhOMlp5QjRiV3h1Y3owaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1qQXdNQzl6ZG1jaUlIaHRiRzV6T25oc2FXNXJQU0pvZEhSd09pOHZkM2QzTG5jekxtOXlaeTh4T1RrNUwzaHNhVzVySWlCMlpYSnphVzl1UFNJeExqRWlJR2xrUFNKTVlYbGxjbDh4SWlCNFBTSXdjSGdpSUhrOUlqQndlQ0lnZG1sbGQwSnZlRDBpTUNBd0lESTNMallnTWpFaUlHVnVZV0pzWlMxaVlXTnJaM0p2ZFc1a1BTSnVaWGNnTUNBd0lESTNMallnTWpFaUlIaHRiRHB6Y0dGalpUMGljSEpsYzJWeWRtVWlQZzBLSUNBOFp6NE5DaUFnSUNBOFpHVm1jejROQ2lBZ0lDQWdJRHh3WVhSb0lHbGtQU0pUVmtkSlJGOHhYeUlnWkQwaVRUVXVOaUExYURFMkxqUmpNQzQwSURBZ01DNDRJREF1TmlBd0xqUWdNV3d0T0NBNUxqaGpMVEF1TXlBd0xqTXRNQzQ1SURBdU15MHhMaklnTUd3dE9DMDVMamhETkM0NElEVXVOaUExTGpFZ05TQTFMallnTlhvaUx6NE5DaUFnSUNBOEwyUmxabk0rRFFvZ0lDQWdQR05zYVhCUVlYUm9JR2xrUFNKVFZrZEpSRjh5WHlJK0RRb2dJQ0FnSUNBOGRYTmxJSGhzYVc1ck9taHlaV1k5SWlOVFZrZEpSRjh4WHlJZ2IzWmxjbVpzYjNjOUluWnBjMmxpYkdVaUx6NE5DaUFnSUNBOEwyTnNhWEJRWVhSb1BnMEtJQ0FnSUR4eVpXTjBJSGc5SWpBaUlIazlJakFpSUdOc2FYQXRjR0YwYUQwaWRYSnNLQ05UVmtkSlJGOHlYeWtpSUdacGJHdzlJaU0xTlRZNU9FUWlJSGRwWkhSb1BTSXlOeTQySWlCb1pXbG5hSFE5SWpJeElpOCtEUW9nSUR3dlp6NE5Dand2YzNablBnMEsnKTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICAgIGJhY2tncm91bmQtcG9zaXRpb246IDk1JSA1MCU7XG4gICAgYmFja2dyb3VuZC1yZXBlYXQ6IG5vLXJlcGVhdDtcbiAgICBiYWNrZ3JvdW5kLXNpemU6IDE0cHggMTRweDtcbiAgICBib3JkZXI6IEBzYlNlbGVjdEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiAzcHg7XG5cblx0XHQmOjotbXMtZXhwYW5kIHtcblx0XHRcdGRpc3BsYXk6IG5vbmU7IC8vIHJlbW92ZXMgYXJyb3cgZm9yIElFXG5cdFx0fVxuICB9XG5cbiAgLy8gQ2hlY2tib3ggLSBkZWZhdWx0IHN0eWxlc1xuICBpbnB1dFt0eXBlPWNoZWNrYm94XSB7XG4gICAgd2lkdGg6IEBzYkNoZWNrYm94U2l6ZTtcbiAgICBoZWlnaHQ6IEBzYkNoZWNrYm94U2l6ZTtcbiAgICBtYXJnaW46IDA7XG4gICAgYm9yZGVyOiAwO1xuICB9XG5cbiAgaW5wdXQsIGJ1dHRvbiwgc2VsZWN0LCB0ZXh0YXJlYSB7XG4gICAgZm9udC1mYW1pbHk6IGluaGVyaXQ7XG4gIH1cbn1cblxuLypcbkR1YWxpbmcgTGlzdCBib3hcblxuQSBjb250cm9sIHdpdGggdHdvIGxpc3QgYm94ZXMgYW5kIGFycm93cyB0byBtb3ZlIGl0ZW1zIGxlZnQvcmlnaHQgYW5kIHVwL2Rvd24gYmV0d2VlbiB0aG9zZSB0d28uXG4gKi9cbi5zYkR1YWxMaXN0Qm94IHtcbiAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gIGNvbG9yOiBpbmhlcml0O1xuICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlO1xuICBib3JkZXItc3BhY2luZzogMDtcblxuICA+IHRoZWFkID4gdHIgPiB0aCB7XG4gICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICA+IFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNDtcbiAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgPiB0Ym9keSA+IHRyID4gdGQ6bnRoLWNoaWxkKDIpLFxuICA+IHRib2R5ID4gdHIgPiB0ZDpudGgtY2hpbGQoNCkge1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICB9XG5cbiAgYSB7XG4gICAgY29sb3I6IGluaGVyaXQ7XG4gICAgcGFkZGluZzogMnB4O1xuICAgIG1hcmdpbjogMCA4cHg7XG4gICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICBib3JkZXItYm90dG9tOiAwO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuXG4gICAgJjpob3ZlciB7XG4gICAgICBiYWNrZ3JvdW5kOiAjMDA2OWQ5O1xuICAgICAgY29sb3I6ICNmZmY7XG4gICAgICBib3JkZXItY29sb3I6ICMwMDY5ZDk7XG4gICAgfVxuXG4gICAgLnNmLWljb24tcmlnaHQsIC5zZi1pY29uLWxlZnQge1xuICAgICAgcGFkZGluZzogMnB4O1xuICAgIH1cblxuICAgIFtjbGFzc149c2ItaWNvbl0ge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNTtcbiAgICB9XG5cbiAgICBbY2xhc3NePXNiLWljb24tdG8tZW5kXTpiZWZvcmUge1xuICAgICAgLnJvdGF0ZSgtOTBkZWcpO1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIC44NTtcbiAgICB9XG5cbiAgICAmOm50aC1jaGlsZCg0KSBbY2xhc3NePXNiLWljb24tdG8tZW5kXTpiZWZvcmUge1xuICAgICAgLnJvdGF0ZSg5MGRlZyk7XG4gICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogLjg1O1xuICAgIH1cblxuICAgICY6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICBib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogM3B4O1xuICAgICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogM3B4O1xuICAgIH1cblxuICAgICY6bGFzdC1vZi10eXBlIHtcbiAgICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgYm9yZGVyLWJvdHRvbS1yaWdodC1yYWRpdXM6IDNweDtcbiAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICB9XG4gIH1cblxuICBzZWxlY3Qge1xuICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcbiAgICBoZWlnaHQ6IDM1MHB4O1xuICAgIHdpZHRoOiAxODBweDtcbiAgICBwYWRkaW5nOiA4cHg7XG5cbiAgICA+IG9wdGlvbiB7XG4gICAgICBwYWRkaW5nOiA0cHg7XG5cbiAgICAgICYucmVxdWlyZWQge1xuICAgICAgICBjb2xvcjogI2FmMjYyNjtcbiAgICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICAgIC13ZWJraXQtZm9udC1zbW9vdGhpbmc6IHN1YnBpeGVsLWFudGlhbGlhc2VkO1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuIiwiLypcblJvdGF0ZXMgYW4gZWxlbWVudFxuXG4kciAtIHRoZSByb3RhdGUgZnVuY3Rpb24gcGFyYW10ZXIsIGUuZy4gOTBkZWdcbiAqL1xuLnJvdGF0ZShAcikge1xuICAtd2Via2l0LXRyYW5zZm9ybTogcm90YXRlKEByKTtcbiAgLW1vei10cmFuc2Zvcm06IHJvdGF0ZShAcik7XG4gIC1tcy10cmFuc2Zvcm06IHJvdGF0ZShAcik7XG4gIHRyYW5zZm9ybTogcm90YXRlKEByKTtcbn1cbiIsIiN1aS1kYXRlcGlja2VyLWRpdiB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi51aS1kYXRlcGlja2VyIHtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQ29udGVudEJnQ29sb3I7O1xuICBib3JkZXItbGVmdDogQHNiQ29udGVudEJvcmRlcjtcbiAgYm9yZGVyLXJpZ2h0OiBAc2JDb250ZW50Qm9yZGVyO1xuICBib3JkZXItcmFkaXVzOiAzcHg7XG4gIGJveC1zaGFkb3c6IDAgMnB4IDZweCAjYWFhO1xuICBwYWRkaW5nOiA3cHggNXB4IDZweDtcbiAgb3ZlcmZsb3c6IGhpZGRlbjtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICB3aWR0aDogYXV0bztcbiAgei1pbmRleDogNDsgLy8gdW5kZXIgZml4ZWQgcGFnZSBoZWFkZXJcblxuICAudWktZGF0ZXBpY2tlci1oZWFkZXIge1xuICAgIHBhZGRpbmc6IDAgMCAzcHg7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci10aXRsZSB7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItbW9udGgge1xuICAgIGZsb2F0OiBsZWZ0O1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXIteWVhciB7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItcHJldiwgLnVpLWRhdGVwaWNrZXItbmV4dCB7XG4gICAgbWFyZ2luLXRvcDogNHB4O1xuICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB3aWR0aDogMTlweDtcbiAgICBoZWlnaHQ6IDE2cHg7XG4gICAgbWFyZ2luOiAycHggNHB4IDAgMDtcbiAgICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICAgIGxpbmUtaGVpZ2h0OiA0MDAlO1xuICAgIGZsb2F0OiBsZWZ0O1xuICB9XG5cbiAgLy8gTmVlZCB0byByZXBsYWNlIGljb25cbiAgLnVpLWRhdGVwaWNrZXItcHJldiB7XG4gICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCcvaW1nL2Z1bmNfaWNvbnMvY2FsL2xlZnRBcnJvdy5naWYnKTtcbiAgfVxuXG4gIC8vIE5lZWQgdG8gcmVwbGFjZSBpY29uXG4gIC51aS1kYXRlcGlja2VyLW5leHQge1xuICAgIGJhY2tncm91bmQtaW1hZ2U6IHVybCgnL2ltZy9mdW5jX2ljb25zL2NhbC9yaWdodEFycm93LmdpZicpO1xuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItY2FsZW5kYXIge1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIG1hcmdpbi1sZWZ0OiBhdXRvO1xuICAgIG1hcmdpbi1yaWdodDogYXV0bztcblxuICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gICAgICBmb250LXNpemU6IC45ZW07XG4gICAgICB3aWR0aDogMTQlO1xuICAgIH1cblxuICAgIHRkIHtcbiAgICAgIHBhZGRpbmc6IDJweDtcbiAgICB9XG5cbiAgICBhIHtcbiAgICAgIHdpZHRoOiBhdXRvO1xuICAgICAgYm9yZGVyLWJvdHRvbTogbm9uZTtcbiAgICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICAgIGZvbnQtc2l6ZTogLjk1ZW07XG4gICAgfVxuXG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICNlMGYwZmI7XG4gICAgICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgICAgICAvLyB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItb3RoZXItbW9udGggYSB7XG4gICAgY29sb3I6ICM5OTk7XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci10b2RheSB7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogIzE3OTdjMDtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBmb250LXdlaWdodDogYm9sZDtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6ICNlMGYwZmI7O1xuICAgICAgY29sb3I6ICMzMzM7XG4gICAgfVxuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItY3VycmVudC1kYXkge1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNjNmUxZmY7XG4gICAgYm9yZGVyOiAxcHggc29saWQgIzljZjtcbiAgICBmb250LXdlaWdodDogYm9sZDtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG5cbiAgICA+IGEge1xuICAgICAgY29sb3I6ICMzMzM7XG4gICAgfVxuICB9XG5cbiAgLnVpLWRhdGVwaWNrZXItYnV0dG9ucGFuZSB7XG4gICAgcGFkZGluZzogMXB4O1xuICAgIGNsZWFyOiBib3RoO1xuXG4gICAgPiBidXR0b24ge1xuICAgICAgYmFja2dyb3VuZDogdHJhbnNwYXJlbnQ7XG4gICAgICBib3JkZXI6IG5vbmUgIWltcG9ydGFudDtcbiAgICAgIGNvbG9yOiAjMDE1YmE3O1xuICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICAgIHBhZGRpbmc6IDA7XG4gICAgICBtYXJnaW46IDA7XG5cbiAgICAgICY6aG92ZXIge1xuICAgICAgICB0ZXh0LWRlY29yYXRpb246IHVuZGVybGluZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAudWktZGF0ZXBpY2tlci1jbG9zZSB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxufVxuIiwiLy8gRGVmYXVsdCBwYWRkaW5nIGZvciBhbGwgY2VsbHMgKGhlYWRlciwgYm9keSwgZm9vdGVyKVxuQHNiVGFibGVDZWxsUGFkZGluZzogOHB4IDZweCA2cHg7XG5cbi8vIERlZmF1bHQgaGVpZ2h0IGZvciBhbGwgdGFibGUgY2VsbHMgKGhlYWRlciwgYm9keSwgZm9vdGVyKVxuQHNiVGFibGVDZWxsSGVpZ2h0OiA0OXB4O1xuXG4vLyBCYWNrZ3JvdW5kIGNvbG9yIHdoZW4gaG92ZXJpbmcgb24gY29udGVudCB0YWJsZSBib2R5IHJvd3NcbkBzYlRhYmxlUm93SG92ZXJDb2xvcjogQHNiQ29udGVudEJnQ29sb3I7XG5cbi8vIE92ZXJyaWRlIHRoZSBzdGFuZGFyZCBTRiBmb250IGNvbG9yIG9mIGJsYWNrLlxudGFibGUgPiB0Ym9keSA+IHRyID4gdGQge1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xufVxuXG4vLyBhIHRhYmxlIHRoYXQgZGlzcGxheXMgYSBsaXN0IG9mIGVudGl0aWVzL3Jvd3MvZXRjLCBhIGxhIGEgXCJsaXN0IHBhZ2VcIlxuLnNiVGFibGUge1xuICBib3JkZXItY29sbGFwc2U6IGNvbGxhcHNlO1xuICBib3JkZXItc3BhY2luZzogMDtcbiAgd2lkdGg6IDEwMCU7XG4gIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG5cbiAgLy8gdGgge1xuICAvLyAgIC8vIGhlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICAvLyB9XG5cbiAgdGQge1xuICAgIGhlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICB9XG5cbiAgLy8gUHJvZHVjdCBPcHRpb25zIHRoYXQgYXJlIGR5bmFtaWMgdXBncmFkZSBvcHRpb25zXG4gIHRyLnNiVXBncmFkZU9wdGlvbiA+IHRkIHtcbiAgICBjb2xvcjogI2FhYWFhYTtcbiAgfVxuXG4gIC8vIGNlbnRlciBhbGlnbmVkIGNlbGxzXG4gID4gdGJvZHkgPiB0ciA+IHRkLmNlbnRlcixcbiAgPiB0Ym9keSA+IHRyID4gdGQuc2JBY3Rpb25zLFxuICA+IHRoZWFkID4gdHIgPiB0aC5zYkFjdGlvbnMsXG4gID4gdGhlYWQgPiB0ciA+IHRoLmNlbnRlcixcbiAgPiB0Zm9vdCA+IHRyID4gdGQuY2VudGVyIHtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIH1cblxuICAvLyByaWdodCBhbGlnbmVkIGNlbGxzXG4gID4gdGhlYWQgPiB0ciA+IHRoLnJpZ2h0LFxuICA+IHRib2R5ID4gdHIgPiB0ZC5yaWdodCxcbiAgPiB0Zm9vdCA+IHRyID4gdGQucmlnaHQge1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICB9XG5cbiAgYSB7XG4gICAgY29sb3I6IGluaGVyaXQ7XG4gIH1cblxuICB0Ym9keSB7XG4gICAgLnNiQWN0aW9ucyB7XG4gICAgICBpICB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgLnNiTWFzdGVyIHtcbiAgICAgIGlucHV0W3R5cGU9Y2hlY2tib3hde1xuICAgICAgICAtbXMtdHJhbnNmb3JtOiBzY2FsZSguNyk7IC8qIElFICovXG4gICAgICAgIC1tb3otdHJhbnNmb3JtOiBzY2FsZSguNyk7IC8qIEZGICovXG4gICAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSguNyk7IC8qIFNhZmFyaSBhbmQgQ2hyb21lICovXG4gICAgICB9XG5cbiAgICAgIGkge1xuICAgICAgICBmb250LXNpemU6IDIwMCU7XG4gICAgICAgIGNvbG9yOiBAc2JCZ0NvbG9yO1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjQ0ZEN0U2O1xuICAgICAgICBib3JkZXItcmFkaXVzOiAuMThyZW07XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgICAgJi5zZWxlY3RlZE1hc3RlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogIzdGOERFMTtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgJi5ub3RTZWxlY3RlZE1hc3RlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogI0NGRDdFNjtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBpbnB1dCA6bm90KC5zYkJ0biksIHNlbGVjdCB7XG4gICAgZm9udC1zaXplOiBpbmhlcml0O1xuICB9XG59XG5cbi8vIHRoZSB0YWJsZSBoZWFkZXIgY29udGFpbmVyXG4uc2JUYWJsZSA+IHRoZWFkIHtcbiAgLy8gYSBzdGFuZGFyZCB0YWJsZSBoZWFkZXIgY2VsbFxuICA+IHRyID4gdGgge1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgICBwYWRkaW5nOiBAc2JUYWJsZUNlbGxQYWRkaW5nO1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICB3aGl0ZS1zcGFjZTogbm93cmFwO1xuICB9XG5cbiAgPiB0ciA+IHRoID4gKltjbGFzc149XCJzYi1pY29uXCJdIHtcbiAgICBtYXJnaW4tbGVmdDogNHB4O1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gIH1cbn1cblxuLy8gdGhlIHRhYmxlIGJvZHkgY29udGFpbmVyXG4uc2JUYWJsZSA+IHRib2R5IHtcbiAgLy8gYSBzdGFuZGFyZCB0YWJsZSBib2R5IGNlbGxcbiAgPiB0ciA+IHRkIHtcbiAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiQm9yZGVyQ29sb3I7XG4gICAgcGFkZGluZzogQHNiVGFibGVDZWxsUGFkZGluZztcbiAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIGkge1xuICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICB9XG4gIH1cblxuICA+IHRyOmhvdmVyIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG4gIH1cbn1cblxuLy8gdGFibGUgZm9vdGVyIGNlbGxzXG4uc2JUYWJsZSA+IHRmb290ID4gdHIgPiB0ZCB7XG4gIHBhZGRpbmc6IEBzYlRhYmxlQ2VsbFBhZGRpbmc7XG4gIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xufVxuIiwiLypcblNpZGUgUGFuZWxzIFxuXG5QYW5lbCB0aGF0IHNsaWRlcyBvdXQgZnJvbSB0aGUgcmlnaHQgc2lkZSBvZiB0aGUgc2NyZWVuXG4qL1xuLnNiUGFuZWwge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIHRvcDogMTA3cHg7XG4gIG1heC13aWR0aDogNTAwcHg7XG4gIGJvdHRvbTogMDtcbiAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JCb3JkZXJDb2xvcjtcbiAgYm94LXNoYWRvdzogLTNweCAwcHggMjBweCAtNXB4ICNhYWE7XG4gIG92ZXJmbG93OiBhdXRvO1xuICBkaXNwbGF5OiBub25lO1xuICBwYWRkaW5nLXRvcDogMTBweDtcblxuICAmLm9wZW4ge1xuXHQgIHJpZ2h0OiAwcHg7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cblxuICA+IGEge1xuICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICB9XG5cbiAgPiBoZWFkZXIge1xuICAgIHBhZGRpbmc6IDAgMjBweDtcbiAgICBsaW5lLWhlaWdodDogNGVtO1xuXG4gICAgPiAuc2YtaWNvbi1jbG9zZSB7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICBsaW5lLWhlaWdodDogNGVtO1xuICAgIH1cbiAgfVxuXG4gIGZpZWxkc2V0IHtcbiAgICBib3JkZXI6IDA7XG4gICAgcGFkZGluZzogMTRweCAxOHB4O1xuICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgPiBsYWJlbCB7XG4gICAgICBtYXJnaW46IDAgM3B4IDNweCAwO1xuICAgICAgbWF4LXdpZHRoOiAxMjBweDtcbiAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIH1cblxuICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgZm9udC1zaXplOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgICBtaW4td2lkdGg6IDEzOHB4O1xuICAgIH1cbiAgfVxuXG4gIC5zYkJ1dHRvbnMge1xuICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgcGFkZGluZzogMTBweCAwIDAgMThweDtcblxuICAgIC5jbGVhckZpZWxkc0xpbmsge1xuICAgICAgcGFkZGluZzogMTBweDtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB9XG4gIH1cbn0iLCIvLyBAaW1wb3J0IFwiaWNvbnMvc2FsZXNmb3JjZS9jc3Mvc2YtaWNvbnMtZW1iZWRkZWQuY3NzXCI7XG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzZi1pY29ucyc7XG4gIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLmVvdD8xMzA2NzY3NicpO1xuICBzcmM6IHVybCgnLi4vZm9udC9zZi1pY29ucy5lb3Q/MTMwNjc2NzYjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG4gICAgICAgdXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz8xMzA2NzY3NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NmLWljb25zJztcbiAgc3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBR0lZQUE4QUFBQUF2QVFBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQkhVMVZDQUFBQldBQUFBRE1BQUFCQ3NQNno3VTlUTHpJQUFBR01BQUFBUXdBQUFGWStJRW43WTIxaGNBQUFBZEFBQUFMR0FBQUkwdTA0QTdGamRuUWdBQUFFbUFBQUFCTUFBQUFnQnRYL0JHWndaMjBBQUFTc0FBQUZrQUFBQzNDS2taQlpaMkZ6Y0FBQUNqd0FBQUFJQUFBQUNBQUFBQkJuYkhsbUFBQUtSQUFBVUdVQUFKazRVUm5KM21obFlXUUFBRnFzQUFBQU1nQUFBRFlKWVNmRmFHaGxZUUFBV3VBQUFBQWZBQUFBSkFkQUE5Wm9iWFI0QUFCYkFBQUFBQ1lBQUFJa0ZhSC8rbXh2WTJFQUFGc29BQUFCRkFBQUFSUXhIbHBtYldGNGNBQUFYRHdBQUFBZ0FBQUFJQUlwREtCdVlXMWxBQUJjWEFBQUFZTUFBQUxOdjFxaTNuQnZjM1FBQUYzZ0FBQUR1Z0FBQmJwZ3FOTXpjSEpsY0FBQVlad0FBQUI2QUFBQWh1VkJLN3g0bkdOZ1pHQmc0R0tRWTlCaFlIUng4d2xoNEdCZ1lZQUFrQXhqVG1aNklsQU15Z1BLc1lCcERpQm1nNGdDQUlvakEwOEFlSnhqWUdSK3lqaUJnWldCZ2FtS2FROERBME1QaEdaOHdHREl5QVFVWldCbFpzQUtBdEpjVXhnY1hqQzhhR2NPK3AvRkVNVWN4REFOS013SWtnTUFFM2tNbVFCNG5PM1dDYmZOQlJpRjhlZHl1a2xDMGlBTmhwS29ERkVwSWxTYWtDYWtTQmt5WmE2RXlIUS82djRXZXY3SC9oanVXcit6N2pucjNHSGQ5ZTY5TC9BSU1GMXZhQVRURGpQaFowd2M4TldKOGV2VG1UbCtmVFN4ZXZ5ZTBmQjY3dDIvN3lQRG84OUg0OGRwdm5ma2Q1emtVV2J3bUYvM09MTjRndG5NWVM1UE1vK25tTS9UUE1PelBNY0NubWNoTC9BaUwvRXlpMWpNRXBieUNxK3lqTmRZenV1c1lLVS8vMDNlWWhXcldjTmEzbVlkNjNtSGQzbVBEYnpQQjJ4a0V4K3ltUzE4eEZhMnNaMlArWVJQMmNGbmZNNFhmTWxYN0dRWHUvbWFQWHpEdDN6SDkvekFYdmF4bng4NXdFLzh6RUVPOFF1SCtaWGZPTUpSam5HYzN6bkJTVTV4bWpQOHdWbk9jWjRMWE9RU2wvbVR2L2liSy96RFZhNXhuWCs1d1UzKzR4YTN1Y05kN2pIbEgyU1NoeCt6aG9mSnMzMDJOZHpNQStNcktpK0gxSENOcWVHdVVzT2xwcnd3VXQ0YUthK09sUGRIYXJqZ2xEZEphdmp0VXQ0cEtTK1dsTGRMeWlzbTVUMlQ4ckpKZWVPa3ZIWlMzajBwRTBES0xKQXlGYVRNQnltVFFzck1rREk5cE13UktSTkZ5bXlSTW1Xa3pCc3BrMGZLREpJeWphVE1KU2tUU3Nxc2tqSzFwTXd2S1pOTXlreVRHbG9uWmM1Sm1YaFNacCtVTFVES1BpQmxNNUN5STBqWkZxVHNEVkkyQ0NtN2hKU3RRc3ArSVdYVGtMSnpTTmsrcE93aFVqWVNLYnVKbEMxRnlyNGlaWE9Sc3NOSTJXYWs3RFZTTmh3cHU0NlVyVWZLL2lObEU1S3lFMG5aanFUc1NWSTJKaW03azVRdFNzbytKV1d6a3JKalNkbTJwT3hkVWpZd0tidVlsSzFNeW40bVpWT1Rzck5KMmQ2azdIRlNOam9wdTUyVUxVL0t2aWRsODVOeUEwaTVCcVRjQlZJdUJDbTNncFNyUWNyOUlPV1NrSEpUU0xrdXBOd1pVaTRPS2JlSGxDdEV5ajBpNVRLUmNxTkl1VmFrM0MxU0xoZ3B0NHlVcTBiS2ZTUGwwcEZ5ODBpNWZxVGNRVkl1SWltM2taUXJTY3E5Sk9WeWtuSkRTYm1tcE54VlVpNHNLYmZXLzBZZVlPcC95K09RVWdBQWVKeGpZRUFERWhESUhQUS9DNFFCRW13RDNRQjRuSzFXYVhmVFJoUWRlVW1jaEN3bEN5MXFZY1RFYWJCR0ptekJnQWxCc21NZ1haeXRsYUNMRkR2cHZ2R0ozK0JmODJUYWMrZzNmbHJ2R3k4a2tMVG5jSnFUbzNmbnpkWE0yMlVTV3BMWUMrdVJsSnN2eGRUV0pvM3NQQW5waGszTFVYd29PM3NoWllySjN3VlJFSzJXMnJjZGgwUkVJbEMxcnJCRUVQc2VXWnBrZk9oUlJzdTJwRmROeWkwOTZTNWI0MEc5VmQ5K0dqcktzVHVocEdZemRHZzlzaVZWR0ZXaVNLWTlVdEttWmFqNkswa3J2TC9DekZmTlVNS0lUaUpwdkJuRzBFamVHMmUweW1nMXR1TW9pbXl5M0NoU0pKcmhRUlI1bE5VUzUrU0tDUXpLQjgyUThzcW5FZVhEL0lpczJLT2NWckJMdHRQOHZpOTVwM2M1UDdGZmIxRzI1RUFmeUk3czRPeDBKVitFVzF0aDNMU1Q3U2hVRVhiWGQwSnMyZXhVLzJhUDhwcEdBN2NyTXIzUWpHQ3BmSVVRS3oraHpQNGhXUzJjVC9tU1I2TmFzcEVUUWV0bFR1eExQb0hXNDRncGNjMFlXZERkMFFrUjFQMlNNd3oybUQ0ZS9QSGVLWllMRXdKNEhNdDZSeVdjQ0JNcFlYTTBTZG93Y21BbFpZc3FxZld1bURqbGRWckVXOEorN2RyUmw4NW80MUIzWWp4YkR4MWJPVkhKOFdoU3A1bE1uZHBKemFNcERhS1VkQ1o0eks4REtEK2lTVjV0WXpXSmxVZlRPR2JHaEVRaUFpM2NTMU5CTER1eHBDa0V6YU1admJrYnBybDJMVnFreVFQMTNLUDM5T1pXdUxuVFU5b085TE5HZjFhbllqcllDOVBwYWVRdjhXbmE1U0pGNmZycEdYNU00a0hXQWpLUkxUYkRsSU1IYi8wTzBzdlhsaHlGMXdiWTd1M3pLNmg5MWtUd3BBSDdHOUFlVDlVcENVeUZtRldJVmtCaXJXdFpsc25WckJhcHlOUjNRNXBXdnF6VEJJcHlIQmZIdm94eC9WOHpNNWFZRXI3ZmlkT3pJeTQ5YysxTENOTWNmSnQxUFpyWHFjVnlBWEZtZVU2bldaYnY2elRIOGdPZDVsbWUxK2tJUzF1bm95dy8xR21CNVVjNkhXTjVRUXVhZE4vQmtJc3c1QUlPa0RDRXBRTkRXRjZDSVN3VkRHRzVDRU5ZRm1FSXl5VVl3dkpqR01KeUdZYXd2S3hsMWRSVFNlUGFtVmdHYkVKZ1lvNGV1Y3hGNVdvcXVWUkN1MmhVYWtPZUVtNlZWQlRQcW45bG9GNDg4b1k1c0JaSWw4aWFYekhPbFk5RzVmaldGUzF2R2p0WHdMSHFieCtPOWpueFV0YUxoVDhGLzlYV1ZDVzlZczNEazZ2d0c0YWViQ2VxTnFsNGRFMlh6MVU5dXY1ZlZGUllDL1FiU0lWWUtNcXliSEJuSW9TUE9wMkdhcUNWUTh4c3pEeTA2M1hMbXAvRC9UY3hRaFpRL2ZnM0ZCb0wzSU5PV1VsWjdlQ3MxZGZic3R3N2czSTRFeXhKTVRmeitsYjRJaU96MG42UldjcWVqM3dlY0FXTVNtWFlhZ090RmJ6Wkp6RVBtZDRrendSeFcxRTJTTnJZemdTSkRSenpnSG56blFRbVllcXFEZVJPNFlZTitBVmhic0Y1SjF5aWVxTXNoKzVGN1BNb3BQeGJwK0pFOXFob2pNQ3oyUnRocis5Q3ltOXhEQ1EwK2FWK0RGUVZvYWtZTlJYUU5GSnVxQVpmeHRtNmJVTEdEdlFqS25iRHNxeml3OGNXOTVXU2JSbUVmS1NJMWFPam45WmVvazZxM0g1bUZKZnZuYjRGd1NBMU1YOTczM1J4a01xN1dza3lSMjBEVTdjYWxWUFhta1BqVllmcTVsSDF2ZVBzRXpscm1tNjZKeDU2WDlPcTI4SEZYQ3l3OW0wTzBsSW1GOVQxWVlVTm9zdkZwVkRxWlRSSjc3Z0hHQllZME85UWlvMy9xL3JZZko0clZZWFJjU1RmVHRTMzBlZGdEUHdQMkg5SDlRUFE5MlBvY2cwdXovZWFFNTl1OU9Gc21hNmlGK3VuNkRjd2E2MjVXYm9HM05CMEErSWhSNjJPdU1vTmZLY0djWHFrdVJ6cEllQmozUlhpQWNBbWdNWGdFOTIxak9aVEFLUDVqRGsrd09mTVlkQmtEb010NWpEWVpzNGF3QTV6R093eWg4RWVjeGg4d1p4MWdDK1p3eUJrRG9PSU9ReWVNQ2NBZU1vY0JsOHhoOEhYekdId0RYUHVBM3pMSEFZeGN4Z2t6R0d3cituV01Nd3RYdEJkb0xaQlZhQURVMDlZM01QaVVGTmx5UDZPRjRiOXZVSE0vc0VncHY2bzZmYVEraE12RFBWbmc1ajZpMEZNL1ZYVG5TSDFOMTRZNnU4R01mVVBnNWo2VEw4WXkyVUd2NHg4bHdvSGxGMXNQdWZ2aWZjUDI4VkF1UUFCQUFILy93QVBlSnpNdlFtY0hFZDVOMXhWZlZXZk16MzM3REhuenJISDdLNTJkL2JXN3F5a1BTU3Q3cFcwa20xNWZVaVdMZXZ3YldPSXpXVTd4bURIT01ZUkpCQ3dnUURHaEpod2hJQ0J2Qi9FRUVJNEFzRTJ4eStBSWVRakR2RExsL2lWbXUrcDZwNWpSeXZMaHJ6NXZUcTZxNnVyZTdxcnE1N24rVDlYSVFIQkgrSHorT3ZJUUhHVVIrT1ZFU29xUkpZUXhtakpLeUs4TEFrRUk3elkybUtaR0tWVExmbldmQ2hveHEyNElpTURHNm9VNmc0T0pIREl3cGxlUERTRjArYzlPSjBzSjVQbEtiYkJ0eldXVTJ3M3pjdi80RldlWndPUGpCSDZ6Y2VGdHdzUzZrTkRsWFdJWUhJU1NVZzZKY0J6STd3RU80eVdSWmxBeTBXQ3VncVpaRXMwNE5NVTFFZjZGSGhhZUtqaDlYZ29uMDFuOG1WN0tOK05NM0xZRHNsd0xMZmpVR1F3UFJDQjQ4Z0VIaGlHODhOa0JxODNiTnR3dnFCcUFYMWNEMmlxOHdWV2dkZFhLM0NIZCtJbFdpTHYyZjlMMkU4K0I4OWVyT1JZeDZLVEVoWkU0UlRDb29pWG9PL0ZaU1JpY1RFWVRBYURFVmxxNmNZancwTjlPSi94WVRuajdVTkpIQWw1KzRGcFBEemc3Vm03SWJMMG9xcm0xYWg2UnZKTFoyQmZWS0VvT1NvVWVLWDh2OTNLRnlWOHpSbmFkUDUveTM0b3VwV3lmS1oyRVhReEd5OEd1UmNWMEFpYVIvdlJWZWpHeW5Vck95djlvcUF1TDR3V1JTcVNlWGdqb21LeTRzZklaK3FDS2lCMUJRbElwSUs0WWhtYVFDV0ZMc0hOWkVXUzNRcXFMQ09GS3ZDdHJyejg0b05MdXhlM2JOb3dPVDQwME5PVlNiYTFSTU9oZ004ME5FVkNCVkt3K2ZkajN5bWJrZGtuQ2pmditmZGozeTJQUXpKODJqeDg2bUg0bEpGdzlCVWVrNzl6N29sM2hQeXhtRC9VdU0zRjhLM3hmTTc1b2lRVlJWa1dpNUswVTVKQ3JCaVNwQ3ZYckNYM1pxT1JhRHAycGZjL0VDMTB4dkVQWWdubkNHdnhyQVIvbm4zSkVpSXdkaDRRdW9VK3RBN05vS25LQkdMRGg2RGpNa1lTL0RzR3ZZeUpnRmVRSklvU2RMSEVScElrUXI5T1Q0NE1aZE10VWR1SDFwRjFiQTdrc3U2TGp2Qy92YmlRbHhWWnNURHJnSkVwRFAraUNReFBITEV3MU1Lc2tNL3BuY3lLN3A4Zjcyakp5RkpodmpzNUVjdkx4R2VzbURhVyt3dTlOMVMyMzFYc0ZJUjFoNlpNZnpCb0d5dDZJS0N2R1BZdGZyMTkvWlVoczdXcnIzdGJQOGFSY0haQU5RTG04R1dGN2hJV2RtM1l0R1BEYlJkSHBiRFJidGhQczRzdTAyMWJSMGprNy85Mm9hYzIvcTZvckZnd28weUN6QlUyN0F3WWRrRE1kTkhRK1pEVFlNZ2hEYW1TcHE1UTdBMDVLRWhzd0Vsc3dPM2xnMjM5ZUhuTndlWjdCWU5ONFBTRGR3K25IeU1YT0JhMm4vMXNzbmNzbms3SHh4cTN2VWt5a3lxVjNxdXJ6cStvcmxOc3FucGVwODU3VlYxWDhVR3FGK0RNQVg3bWZhb3U5SlJTNCttQjFPbjBRUHFQNFA5NHNyZVVFa2lxZFBaNlZkT0FDTURtUm5ZbEw1MW1teHZZSVovS2ZQTjI4Z25rUTBtZ1J6T1ZLWVJoTEFrWVFlOHBtQURoYnh4TEZMUEJsRWtGL0l5b3B2b3lmUzFSZnpLUUJNTHFJejdWN2F2YUM3SWhJMXpvK1BmTy9DdWpqa0tJYmM5VEpyTzJNY2FPWU9QOEVLaXFadk9OODcxNnZUYzNQaStVNEUwMm9ZWEtMQkpsOFNTU0pma2srL0RTU2FJU3BLQ1RTTUhLU1lRRmdWTmFZUmxlVm1EelkycDRzTGZVMVpsSmU1d2lTWkthTzBzWVI2aCt1U3FucUZPWWZFWnBJTUtydUVhVkloZUV4NEFSMk1iWnV3ejI0THBkU3JJUEZIRDIweGgxemxEYUNmdHJKZHZ3dzhsUVJMdVcwVjVLbllEK0ZIdTdwOWdNY002a1NyMUpMT29Ca3Fmc29oZ0Y4bnhNaG5GeFZBOEVOZnl3Q1llY1ZGUDJYWGxmOUtBUTZrVFRhRk5sQm9tQ0pJalNjU1FSUVNMSDRDTWpRVVRDQ254a2pNa1M3QWhlQnVLQkZ5TmhqTWJIQnZwU3lYQm5wRlBYVUFpSEtQdTBHU0FQY29oUmhBRkdNWVlLK1VKZXlMRHRFRHNlWUdkQ3JJMVE2eW5vdVZvbjRGKy81dGpWNjZlbjExOTk3TVZyajA1TlQwOGR2ZlkxbCt6YTNnZC90dS82VkxYUXBuQzJTZC9pTWlDaGg3V3JYY0FMWjc2ejZncGV3UHVvK1VuV1VUOVRqYmU0SEl1UDc5LzhVdmdwK1RJcW9oM29kbFNxZEkzTFJFUjRIdWltQ0dNQnVPeEpFQllrRE9LRGRPVEc2dzVkc21WK3BKeHM3NVNsY0RmT2w5bUx3ZnRsTTBBQncvRHFZZjUrOERlQjJVZm1wSE1LNTZBSmExb2VjdHZLU3NSdENydW8yN0k4WE1oTGJyTXB6TnU1dDR3MDNOTWJWSG5XbzNpZ3N5WGU0Mjl0NytoTXRxZTYyMVF6dlQ3VmlVa3VVVkVzTWR6WjFtdktwQ3R0YUczZHlmWmtWMGQ3bTkwVGIrbFVGT1BLRHRGU0tva2NMcVNjYjNWWVJqb2F6NlN5QjdPcFREeWExcTNjUXFvUDk2YnhBK2xlSEFubTRuaDAvYmFaa2FGTXE4OE9CemNWTitRU01kdXdyZGIyWEhlNml5cjVaQ1FtdDZ6eitZeEFXMHVoVXR3VUROdSsxc3pReU15MjlVWmM3dCtvMEs1MGQ2NzlPcjl0QmRxVGtZbE16NVp3TkJyZTBwT1ppR1RqTUh2OXlYaEhYM1pnSUp0cUFWYUMrRHo5T0l4TkNVV0JpazlXeG1BdVloQ0FrQWdmaGh4SGhKeVFRUm9TaFNYWUNZeC9DZUppUEVaUU9oRXJ4QXQ4YmtaSlZQR0lEYndNYnA2VEJTRFlNT3pnTUJwaEgwVzR5ZGthNnRBMzZoM2gxNmQ2ZWpoMUxLV2Nma2tTRXJLQjM1ZUp5MGFKeklidEd3T2hVdXJzSWp1TGY1MHFuVmFsSWQwUXFKSXF1YnpuYWFDVnYvUm81VFRhVTlsSm1iZ0pVdVlLaUR0SWtJbXdvbU1aS2FLc3JHaEFLeVZ4Q1hhaXRBdzBWRm9jNkhjcDUvaEkvL1RBOUxuMDA2anhHdmRWMkNSU21vNkZwdU5DOC9sVjlKUVJITnNncjJvdU45TFdYM0tLWkxNNTkzd0RtUjNrczVCdmZnSW5XVFUwQTNhaGNKNlJBaG13Mmc4NzBLVXdsZDVTZWRQeHc4UTBGamRORHZWMHRJZE5TVVA0a3IxRTE0UjVLb3MrSW1FVEFYdzRIbEJ0eFM4SkZrV2FpYlJqSVd4QXRXR3VCTEdtNjlvUzdEUjlHZW1hdm5qWnlxNmRsVXAvZnlwbGd5aDU5VlVySnk4N2VXRC96a3QzWFZyWlVkbStNTmMvM1Q4MU9wenFTL1VXODNIb1NEdXBRa2RpWHhnNmNtVFFIUXZWc2NINGR3TnR6dVBWcHllYWpnZXpUY2ZTQlQ3RXN3UFVNQ2pia05GYTBYRllhWkp0bm1TYkVOdThVQ3ZoMDJlL3h2YWtuMjBieXArQmM4UHN5SG1hR3ZpUXUzZnJuSGMzbmp0ZmVkTDdCZGdRV2kvWGVYNmEzSUxhVUEvYWgvWldkcS9Eb3B4ckowUUEwVjFTbUloMEhNbWlJb3ZIMlBnR1FVaFpnZUV2RUZGWVFaeGJvQnF6d0dqWGpzMXpNNVh5WUdjaG5Rd0ZVQnR1VTJ2TWdwRk1nQ2dSb1AvUnlLRExOUmpUYUpJalIxengwcXNEMFhPNGw5UkYwV0V1aVpKb1JNYS8zajIzc2RpWmw0UTJNV0FzcTNSaEg2L1l2WEZ1cVA2U1ZKRDR2clVMaGxtbU4yUUtSRlBDcW9GcGkxMktKOHNwVEVyazVueXVNck80TUVQcEFjTVdrNExVeFNvZWVXMHU3MHpWdnM4eExJbCthcHJVSDhuNTlEQ3czNERwVTFTZm1vL2JBWXdCc2hZcVNQaU5BL1RzNTRLS0xFN1JSaXZ3QzRLSTV4bmhPZ25kVFRBSVVaSUxUQ1VPVEJrSVhQVDdPakx0TGFHZ0wrcVBqakYya3dOS0pvTXNrY0F3cG9DcFpQSkRJRStFNUpHbTNoS2VjK2IxWEU1M0ZrdzVGUlZPeGRLeW80TGdPSkJPcDNXNmpjbDIyNmllSmw4TVdsYnc3RmhrSUpNWm1BTUJNZDJmZVp4SmZ5OHl5UkUxeUV2dHFBdDFWTklpSUFlQTBTQU9nWGlFZ0NNaWRDU1p5SFVrdXBKZDNZT1NGT25PaFd0eTBNaXc5MDNoa3dLcFphd2ZOK0o4NGZNaitiT0ozTWpPc1JzTnY3bDRvSHR2M3ZRWjIzb3JxWUl6TUhYTit2WFh2SnB0b2wyNTBaRjgxOVpLYVZDV2xJR1dHSXk5ZEd0SG9ZLzhZTk5OOTk2MGlXOWN6UHl2NUJueUZSRHR0WSt6Qnd0aTFtTTIvRklVWUREMFdoNmJWa2pGYjROSmQ3WFZycEgzYXdCYm5MK2dTZFY1UWdPMlUzdmZmcFFGcWpWUkdlVXZTV1JTRTRRNHZWYnE5RHJmUVZCM1YwZGZ2aS9SR2drYUdzcVNMSzBESjhhbStTajF4dTRxY2lBQnVRSFd6N29IMkkvV1d1enAyYngxLzY3WkRkc0tiVnF5Wk92QzVYcWc1UHoxcDFXREtKV2xDc1hHdDR0dHorM2JQQStJU1N4MTM3L25XMjM1M2xTNzdyZU45bVRwR3o1YUJCRkN0ZHkrZUVENEc1RHRNcWluMHNuVUhpZVpwb01BRFdaNkVLYjdPSUpSZTFzNDVMZDBUUkZSQmlZam01SloyeDFKWmJ1aGxJRzNHQUhCRmJvUkJMY1ByMmpxVTZyK0UxMTlpdW9yc281Rml2OUtDb2o0VTFRVThGYm5BSWNnODg0bitmNTlzbVJvK0ZPeTdNeFJDK0NaaDgrWTNCa0cycklSSFVSdnJmaDNiN1lrRUxrbUJqcGFSWUdRK2EwZlVYY3VWK0l5WnYydlVQN2trc3FvejBrUk9QNlIxcTBmMGFCQk81S3g3STdFdFJxOXhBME9IS2kweGlJRUhkaTN1SFhEZEhrb2s0NzB4SG9NSFlWSldQT1VQMzJlUmtYMk1kekxLTHpDaFFhbEtzckR4K01NSUFxbjRJakxzQ0JzQUMxaVNpTzVBS2ZZcFo0bUJrWUIvL1JrREJkOXNuN29jVXJuYVVoOS9ISTlIcnJUK1E2dlVoUlc5Y1Rsc20yRUw0L3JLMC9RaURJdlkrWHhRNVJvcXZOdExiQ3RCV3FWQ0oxWGxDY09VVkhUY0Y2TDRqZXVhbXNvMW5tYkpsZjkwdU9YS3dFamZHZjlnWUFJd3EvN2pSQ1hpeDhWbmhKYTRDdU5vVXZRd3hXckRTdDBISXZLTk5BOEFiNlJEWitnbDgyYWt5cWNFYWx5V09ZVDVBb05KQjJxRUFxNEVBUm5oZ3Z4QVM1Q2IydXQ5RGRlSUI1blYxQlJPbmIrU3c1VVducExGeDNZdDJmbjlzM3ptMmFtSm9jR1MyTzlZOFZjdTg3bWQxVTVBYjNlaTJFK3kxRk9hYmkwUE94S3paeGFEaGQ2TWM1WU9BUXpiZ29QOVdLdXFRaFhDV2UyU2ozTExnbHR4NE5BUi9GanNaQVZrdHRDZW9kWk9uTG5aYUdZYVE3RURVdVRiVE9zZEc4cGpPbEtmRHlQNTNWZDZTZ0FVVHMyTlhYczFXd3pZcWlqQnVCcGRVSlYrU2F2R3FPcThhYjhValllcGUwUmYvbE5OMjBRRmlZMmJkcmNGMnRKdGRrK1hSZkQ2VVJwb21PMk8wSzdqdUwyS2FCLzAzQzdhNmFBSEk5VFhWUEhOYldnYXVPcXB0TnhScC9WbW81enRaeDFCN29mM1ZONVk4d0l5d0VKbVFyQk1MbFdXdnhSTFNTSnRrNGtJa29yY1N0Q2c0RDBCTExrRlltdzdGTmhpZ2lMcjd2eitsT1hyK3pldWFGU0ZVanZ2ZnZPKzE5My82dHVPWFhIOVhkY0ExTFc1U2NQZ3BTMSs5SXQ4NVVkRzNhY1QxeHRaVnBmRngxejhZbExSUmM0eHYrSDI3OTRBOU9nbkcrRFcyK01wZE94ODIxdzYwdGVMVWoxZzdOL1ZDL0RBS3pkQXcvOTk3UUJXaXJWZEYwMlNuTjkzeTYwVXJsa2ZJQVFDc0lGb1VENWxPTTZFeXNFR0FBd3AyVkprR0dLSVUyVnRCVVlQNVNvTU9VVVVWU1drS0l3SktVd1RlQ094ZmxOVEJ2WTExUG9TTFpGUTF6VlpSTzdEais0OHR1VG53V3VKSy9EcTJhTmF2Q0NTaTdIU1BiaXI2WktlWUJWYndYWVpYQkZCc0FyNTcyNitrZU1rY0RtdEs0NmY4ZVp5cUNxTHdJNXZKTWYzS2xxVEw5VkFGVDJrMUtLcWNXY1h6SjB4aFJuY0pPL3FtbTRuUGN5cWFiQU5qZTRsVXpGeGVqY2M4TG55ZmRoRG1XQjFtMnRMQUJLazJSQk9rNkJ6c21TZUF4Z3B5eVNZOURoTXZUZ0d1cVFYRWZBMzFuczZNbjFKQlBSaUQ4YnlKWUhWQkNHY0ZQSEFCTExqd1NaR2o2QlBYVzhMRlJsT09IenBkUVpKMWx5RlQ5Zk92dDEyMWIvVEE3TFI2U0l0QWYyajFCekE3eFhwVlFpRC9MM2U0UjEwcmFFRDhpNjlvUksxRnRVOVpkV0hCOWtUU29sVDQ3M2VDMUJBMmcvT2xTNXlBK1BEa05ERnFnZzArTkFjZ0c2QXZGVmlLREFHNnBZUGNXR2l5Q0R0Q082N3lueTk1VFlkWXVTc0gvZjlxMXpzeHRteHNkS1hUa1FUc01CVXhNR3BBRTJNa2JLWVp5dVl5VlB3Y09NSjhPZXNhUW1BMVd4bEZBM1dweGZQM2FhUE9OMnpQUHNzNzJuamxIZnc0NmZoODc0bTA1S2YwVmo5QVZWTGNMdVFGMVBkb0MyL0xrUkkzZERmMjFObGJqWWF4djRCOXo4a2pKc0xnejNKc25IVXFXemIyWjZzVjlSK3UrdXJXT1o2YzNleC9BdFBtQ3E2a0hGN2M4SGhjZUVMcEF4bDlGaFp0Zm9iQ01xc1VETTJMR0JLRlNZWnhLeUtoRDF1SVpaYnlKOEhHR3FZbm9NS1ZTaUNsT3V5VlNTbVJZZXhwNjZvbU9xeUhRSmRsUmVSaktWRnc4ZXdHamwwZ09IRHg3ZXN3dW82MVNwdXlNZGo3bFdORDcvR3BrWUxnd1BGWUQxTVJWSEZucXhwdXVBRGxXWW9va1ZJa25vM1NqSUgyemNEVUlmUjFpQjlUQjA5d2lYMEpua0lybGl1U3VpNC8vSVRYVjBURzFoRzN4eVhwTG1BNnFScEFsYjloMFltUGFMMmRoVUxDdjZ4OGVXL2JLZG9FbURCaHNhbWVveU5KSXlzYWxvaCtqZk5MakhVcUZSdTBtZGcrT1hqWTFkZGlQYjRIK0crNi92NkZnUFAvSWJOTm15dldYUzF4c2F0dnhDdWhTNktOTFNFamtRNkV1SmZtczQxR2ROWnVGdi9mUWwwZlprOUpKb2YxcTByUUZmYWV2WUNyL2xqU3RqMVhGL1B4LzNXYlFKYU9MUnl1RWNWc1gxV0ZHWjVVbEQ4SEdPQS9aU0JWRmxjNENlUWpMVXlkb0swUWxpaGpZWS9nWldGVVZkZ3AzS0RBR3FzamczQzVoczYreXV1VjJWNmZIUnZ0NUVXeXdTdExuOG5NVlprOHZQNWFwU3M4WjF3dFhaTU9qeHE4SXdVd01XdUg2dnFpM2x3SmRMa0F6Vk5Yd0hzblFESDZNM2NMTEZ4eThqWHZpUzV6cUNvZkxnL29OZk83aC9jQWdLQjQ1T1RZNnVlNDVyUlBIWkgyKytmZlBtMng5a0cveGpUdTNnMmtWVmJ5ZzY5Sm1CMFltcG8zQjl1WHFqY2lqWThSeWxSVFgrYWU5cTJDQkVhelk5WDVPVThVRGx6ZTBtU05mMzNMbThVOVQwVzA4dFZFU3FIbDBaN1JkbFJad1hnOFN6UGlFY3FOb01iS3hyZ3I3aXg1b1BxMVJUVnl4TVRSRGNxQUo5TGt1U0RIMHV5d3hneWRJaTArcmNkKzhiWHZmcVY5MTQvYlhYckxiOHVUWmJmNS9kcDNHZFRvaDlnY0VhNGVIOVg5WE5ld3pwWE4xOEU2OHFYK0JZZW9YdDhWM1BVaU1idnkrZU5mRHVrQ2ozcFo5TjkwbFNLSjdOeHZFbllPdjhjVjB0c2RZR3h3ejZKVlkrejRZRURGcGtkeXRTWTA2U2l1bSt2blJSa3JKeFp6Zi9qUS9Iczg3dTJnMTNybEY2OWlYUFZ1M1I3eEhXQ3pHVVErbEtndU4vemhBQVRNSEg1MnFBWUxnY2pJYVpJWG9FaGpSUTdSRmN0MGV2TXFCejY3VHlTY1BBS1NPcDQ0eGhsR0Yva1JMeVJYM2IvRkZmU0xsSVQrcU9udENkSCtzNmJvWENrSzRmVUN5ZEtMNW96RHI3WDdxbEhOQTlXOTg3Z0I2WFFQWVpCeXk1SDQxVmhqdVNQb0VnNEhFTTlYS3d3UmdaT2FrSU1nQ0tJNU1UZ3dOenM1WHBpWTJURzBlR0I4WUh4ek5wanRqekNwQk9IMENJYUpBWnpmTUtBeE13TlptZGN6aGZHR0hzMm5MdG5WQUZhRUtxY3U2MFc3Q3c0RUxBd29pU2QzRWo5SVRnSy9VNiswV2dtM0VsK0dWWlB0NjFycnlvS09YK3diSEI3YnBpQkhiUkJOMFZNQlJ0KzlEWVlIOVpNYmVmL1V0WFZZT2Y0WHVjK1RNNUtKLzJFejhoeERKbHYvUm5zdndmdWsyR1FFZ3hnbE10emkrVmtQSUhmazNmV1I1ZGliVm9kUE5nZGlaK3JhNWYyMVpKRDI2bVdrdHNaWFJreDdmWlBhdi84TmNWNWVud1VKZ1FVZGRBdnZtaEVxS2VQT25TelhHMEJiRDVOZWoyeXExSU5nMVRObUFPR3lxUXcrTklwWVlLSEUwVXhGTklRVUFBZFdaQTlWbWFid1ZaeUpRdGt4bFlLVExvQ2p3MEVnUzB4UFpJQURGQ1FNSWlSa2NQWDNySjh0NGQyK1pucDllUGo1WUhlN3VMK1VSYkhNaXA0WkZUbTJ0UkxreE9jMnlpMlkyQ0ZrZHdyMWdHZld3L1YycnZad3kvWG1UbXczNlFIWDdNeEEvOGZsdmZEeElwdlpFUlk5ZzhyM3RDSlQ3b1NxUlZpNnQyUzlOOXZPS2plZ0Mvand0dlAwNlYrZzBicE5PcTFkVjViMDBtclp0aVVkVVc4aVhBZUdHVVI1ZTVpbzhzbTVMNEN1aE5JaEpCQkY0bW5vQ21CQzJ4Sy9iRFJXUnJheVhETlNNdjJlaEF4WXBGMG9sSVBwWVBqZzNJVXRTVFdRdjVQZ0VZbE52MzZXZzZ3NmFGaTZOQmdNMEwyMEZJLzRuZk5nMnRuMnFHSGRxY0twRW5SODg4RzB5WTRnazVGU0pid21ueGhKUWpBNmtTREE5dFhOTVZyWlI2ZkZzNEUzQ3VEVWFqUWZ4UUc1ZFJwWnF0cDQ1aFFVN1ZpU1o0V2pjRDBLc2tBMkkxbWQyRXlncGpHQmpUSmRoUnZLeENFUy9Xa2VwTEk5S3FzYjZSQjZTYkVLTHlDbytGeDg3K0Z4ZEtGZmpTWjYvNkpqT1ZmSk45OUpjc0NkSnFZM2JWOCtGNTIzVmxnTTFQZUFVLzlYeTk2Tkk5Vjc1UlVSQU5BZTVicU15R3NZSktXRkpBd2dINGNnb2FVU3pDQk1RWTJLNENuRmZGaWlRcFM3QlRHSE5WcE1YaDh1UkVlV1o0SnR6Wm1yZHpLVTFxYmVDZjYycHYrY29rRm55Y2krblB1eElMMmZieUJaWHJ1RnppQ2lldmV1NWxDaWNpbDAxTWNpc0tvQXlnbkFsMHNMTGZCKzg4VjdWVHFGZ1dGRmtBa1Z0VUJJN21GRUJ6ZGJORms3bGlhSkNnMFpIQmlhR0ozbEkrbDJpUGhHRWVCa2lBcXdXeithb2xmd1RldThBTWh3cG5hRU1lbmd1Tk5COVh1UVQ1MmpOQjIvbTFiWC9USGdoZ0h3emQ3TDlic2wrK1I1YmQzWlpWUndQaDl2YXU5blp5TTdhZFg4RVYzN1J0N0tjUjdldkF6eGNzR1ZyNFpYZTNaZFhSbyt5cXJuWlBabU0ydUFqUWpXRTBoL2FoSStobWRCZDZxUElIek5Rd1BkSlhFQ1g1MHYwNzVrVlZNekd4YnJtS21FU2F2K01rOU1VY0FsWmpFZk80WGRVZUJMQkFNZGNmS0ZneU1OY2c2RmoxWTR1bzFvb1BtNkpvTHNIT1pGb0VVMXlNUlFsNi9XdHZ2KzJHNjQ1ZGZjVmxGeDNZczJ2cjVvMHpFMk9ENjdvN1UrM1JmQ3huTXp0dGhFU0NxNDJhSFA5NXFnVnA5VXpOS2hkd3h2cGR6NU1mT1UvRnM3S0lNMnpiM3BsMVdya1VWV0hiRitwUzJiTUd2WThWNytQRmwxMUw3czNHTlZFRzRleHBVZTVzeDF2aTJmdmc0RVA4TjViZ1lBMFo4TmFYV2VmYVhYOXpqWEJNMkkxTVpBTy9pS04yMUl0R0dFNHRHRVFIb2FnUG8xbkRncUlHYlBzNDBnajhPNGFJQVA4WUpCVWxRVHprZWQwZGd0dFJWYUdIVEJnQnhnSlNWVFpCc0lrM0p4SVlqWlFUdllsU0t0bmUxdG9TanpFUGhXREE5dnNzVlVZbU5obVZEVForT2hXbncvVy9nK0VzRG1jTDNJdGh4TlhYRGdwaFRsWW04RTRtd1pJdnAvdWNmM0lPNGwzT0U5WC9UejFGL3U1TC9vQS9iUGdBWkZNdEVFbGVyR2pCYU1lWGhOMTk2VE9mNE5kZGhOZWYvVVM2aS84bHVrOVVORE1RYmJkc002UmJlUHBIZGlCbUJRRHMxWFUrZGIzcDFaVWpKakVZMTVHQTZ5REpFZ21NZDd6aXB6NUJScW9tcXlzMjFoUkZXNEtkcGl6cldOR1V4VVlsNmN0UmlRWTRHVm5OUURxYkxFTU5ycWU4dnBuaE5MZHY5Z0RBMFJxWElhOXY1RTIvd0hOYzgvRXAyTjYrZHB1djhKTUdiMGkrSDlCZlpFY3ZlbVordm5HK3d1MzgzT0ovMmp2M291Y1R3RGRQMWR0V2JXbzNBYStLQW5yb3JPUkJDQmZ4U2FEYkl2UG80Q1lwY29TZ1RLcTFwZXE0SWJ0OWxGL2ZyRUFERWpBQ1RLaldHVVBDdm0vbnV3T204N25jNkdpT0xPUkhBc1pYNUpCVmFIa1VJT1dQdTNQZk1RUGN5QWhuOFQrWmdadStJcHZxZTFvS1ZzaXprVEVlMm8zYUt5MVp6REdEYTlUMEhxcTlLeXd3aVlqQmdocFI1KzQ3TWpjekFCeUl1QVk4N09LRThwRHdsNEtmdm9QRzFST1Uvb2tzMG1MWHJyc3lIWnBpT0krRUxTdnM3eXgyK3ZHUjF0N2RDM05MNUNwVmtOOUI2UWsxVHQ4QlVyMnhOTGV3dTZmZE9SMGVIUW41YlVDK1J3QVZkR1R1MnRYdFliQkhoYUlROXpCWUhkaElqTU9mQkNtN0FZTnhaNnFYY0R2am5zQWpRcHRoT0Q4QThPVjhYOWVINnlETUZ3TVFkcENCczg4WTdReUJNU1RXYm5nbzdPeC8rYUp4RXdhTGg4TGNaN3RiK0xJd2lPYVJYYkZxcHVHZ1RaaEpPRExNaEFRR3FpeFhRVFhNbUNkWFFza2NjTEZlNUczeWhTdzNjRnZ1V1Y3WFMxd2doZmZRcVBxVW5vd1ovOW95TzlkQ1dteTdCYjg3UGpjTHhVQ2doVkFpQjFRaEhORFYva3ltWCt4LzNldjZuVXRaVVZoMzUydjcveTBSaXE3ZnZiUDlyeWw5Z0dMbGN4cU9ab3lmc1h1UUZyZ0YvbE4rRDdoeG5OQ0FtdXd3WkVBaTdCN3NEczVLLyt0ZXUwNWt4Zjgzc1h2WFJEQ2EvRFI4TkUrL3l2VHZqSXBzUUcvLzJBaFdOVHkvOVNNbUNPbURycWY1RlVBNnFLYlM0eUxSNFFKSlJ0SmxCa2l5bWlwcks0Z3F6TSs1NXR6Y1doa1F1TTN5bFZ4MG9KTE9wRENxVEkrUERRMVdLVTdBYndKSWswU1V4TW1hYW9wTDg5NCt1NXBtUkp2bUdUT05zUmtJNG93cnpEQTkvVXFtTCtQOE10MmZXVW1WWExtMTVHY3liRytTUEFrMXpxT3hSTFNkUm0xdHE1NkprUzhYWXBsTXJPQnVTOGwxakdhc1MvVzhhT3RPa1htZzR1L290bk5BTUFEVGZ5NUpBeEZ0cXhIMXI5WmJoNENEVGFOTEt4Y1B3TEFZN3lHU25FOFE0Rkx6d0txd0pETHRLajZoWXFSaHhzT1loUU1rUFpEcHVCb0pNUzBTeFV5TnhCd1cxMDhPRC9YMWRoWXpxWlo0dUQzUzdyb3Q2dWR6VzFTWTBNYUV0MkJkUm5DN3FpNHZzQTVrU3A1Zi85NnhxeWVucHlldlBuYm0ycVBNZi9Ib3RiL25ZdmpiTlBXMFl1aCtYZk1iZ0JrVkEvWkNEMnRRYThrTFAzTzlMNXhycWFyU2dtS3BkQnMxZWNta3A2bHEwcnBmemsvSlE5eG5jd3hwSHgvcTZZanBSQ2gxYzlkc0FkNGh5RXdMVENFOE1weVhCRmVqd1d6V01LRWlETHNOZVMycngzazhYdElpOVB1eS9FTWxxdlhvUkgzeUwyV0IvTWtQbFpqS2pqNytjWVdvUGREaWg3Sno2N2dlSmZjTEpsRCtpUEFXd1NCWDVlQ2s4N3dTcHM3UFZJSG1sRGo5NFEvVjZBczRxb3BxQjQycFAvd2hqU3M1QlNUSHVCYkVMUlpjZS9aN1JraXdpR0dRakJGcXRHSFZkWXZISzljczd5U2F2bEFoVkNYem9sblhJaHBWTFNMaVNrVG10ODFVaUNEdWNnVml3NGZuNmtQR2xTOCt5UHkzWnpkTWpwZHJLc05Bbjh1TnJZWkFqMmFWNGZuY2VadDl1TXNYT01hNzhMeHVsMUkvZ1JsQzFINDlBTmo1emxRcG9QY3pBeFdiT0tXMzZ0VHptM2dmUTAxcmw4bXhnTDZmS1EvMjY0RWI2MFZtMldDemlkc3dMcTJwRG02b0c3dHFKZVRwRSs3blBqMVpvTlozVi9VSjhCMU9JcGhTekRkRUJ2SWppL0pKNW00SmpGQWhKNUdpTUo4TEhab21WelVGVGk3ajFjMWUxczBPSEtqbzBkaG9LRFlhRFZPcHJSdWZZd1k2eHdvMDRybFNyTklsTmwyVUp6YWx6d0MwZkk0NVRFZlZXVFhHSlpJWWxLSXEvbnZtOHJ1cURsclI1M2g3VEJMdWRTNHloWk9xNmJsTlAyTHlRK2Y5ZWJjYXY0TlZPMGZkNnE3cVpYR0d1V3J5ZDRMNWVhRUsyZzY0NnlTK3BSS05Ha0Npamw4MTF5OVM1Ykl1SXB2Q2ZCS2s4YTBmOFVHdjdoVkRqSUFoZ1htM0t2QVB2alZSWUZEVFk4aXZTckwvY0JoTHBpeGRnWHdxOWUxR3FwK3FTM0VyWmtRa2lreVpNdGRJSnFYYlVVMlFaWHpBRmRSYlhSK05mUzk5YzlVdkhmK3Q3bDdaLy9KdXJFcm1zVmQwWnhnZHM4djdkKzVnWnNiT29tVmhkTzNWVjE2eGN1amdnZjBubDAvdTJiVmozODU5V3hkbXRtL1l2bjVpckRKZUtRK1Vlb3FqbmFPRm5KV3cydjArRjRTMG5BdEN6Z3M2Y05aamR5NWREOG1GYkJnZ0tMREY3RG0xSUtZTXNuM0VjeUNwTlFoSDVBYndnZ3RmOGdWOVlkMERLK0hrSlM1WU9mdDdRN0lHeUdHOE5aVnFIeGl3dytFSCt4VEFFMzNkdytXZXpzNTBBUmVlUFhpQStkRWNnRlk2OHhLV1Z3TWM1M1BuNHBwZzFBbzRNeFZKVnNSM0tWcTZQM1hKUWlnVmVyK3UvSkdpRGU4Y2Z2K0RYZE9kNjJWVjN1cTEwRVVKTmNScTFXZ3ZWaXNSYnRGWndMcTZqQlY5WjhXejVXejlpQVZqYWJLQkdPdXFvdXFIZ2ZDcXloV05sRm5WQlhWRkEzbU0wV0sycjFKakdJOUp1TWY2dGU4aEgzdDVONmxNTlYrdkhIOGxONERSbFdWbXBaY3lKVm4vRGFha0N3V09YZGcwOUwvcStQN0tOWXN2eC9oemhMVzlzcmI1VEczek1OY2F5SHdNUk1nZElGTjBvQ0cwQ1MyaEs5SGRsVGRrV2lSQkVEZU1EM1NKa256NXdkMWJSRlVEdVl1RklpSVh3VEhmVlNLQXNDQWZ0M1cvb0dycUtiT21KUElwbGlCcG1yVEVDNUsyYkdCTjBoYjM3WjJiSFM3bmM1SHdvWXYzWHJudnl1MkxzMHR6UzFPVDVVM0RtM3A3Y2tQNW9VUmJ1Q1BTRVEwRkFneDdjWnBmV0VYa2g2U21BQ0dsNlRpZFhTV2h5VXJUY1NkZTNSNS9QU3dhMGh2S3NBbUw0aFkxcHY2UmlIdWNNOXhmV3VUKzBrL3hjb1g1YTFlS3JMeDZnei9TMElJY0RrdHdOMGxpZDkyaXdzM01OOVhiUHRsODdYa3JPYS9tT3J3SFVBK2FaSkczR1k1U3NRUW51THg3YmhSRWI0bWdrYUhTWk85a3ZpUFpobnBJaitLQjZYTFZVWTVCV0I2cXdrUDN6dlZMYmRZbWtCK2RpR2VKSW1zV29WZ1k2c2x2NmxURW1FUkpOZzRuWEhmMGJNeEpVQjFHM0IvRU16b2V6c1lUVVg4d0l2dURwUVdOdGsvbUlnRzE2SThsdmFIS0IrMlRPZ2lGYkpEU0dvWmtNbjh2S3FHZGxXMFJMSkFvQUZzRjVubEdJTXdrSkluU1BPV0szZFZPeUxJWHB5T0pQRUlIbzJJaG5XeUpCUURBb1JJdThUaEdRT3k1NFhJaHgvd2Z1T05FaHZua1NnRGx1VFBGNE1DSUZLNDVWUWpCM0V6VWVSNW9URHk2TWRlM3M3ZDM1NkdkZmM3M3lsTzgzRGZUajdPOU8xWjJRUG5uN2ZIN3RIRHl2cFlFYjlPN3MxOS9zTWlLdlYwUG1QMnNOVFNyK1JYM3dIYzhpTG9xaFNCOHh3ekdoTXlqbWxNdXFxTDRwVjBUNC9sc3I4akRpMWc0MEhBMUhvakhEYkh2Qmx6SHd5dUZxbExvd3JGRGpSKzFrQmVLT1VzUCtXSXR1VXhIMzB4WFFkWkdwcm9LZ3FDR0orS2E5TE4wTHlDOWo1VnNzOWllN083c3ZxRzcySk5vN3pRRHZSUHAzbGhiS1UzQzZmN2hJbjdNQ3BoQlg4SUlqV2U2RjhLUlluNUNVN0kzYlI2NU5DdW9ncXkxRzJKZnd1ak50dndpR1BSRjBoM3hUY1hCdmJHV2x0amV3ZUttZURZVDhZWHRXQ0RlbXNySG1UTlQ2M0JYMGhzTDBDL1BrTWRnTEJRcUhZajVoTElJR3VaY0k3Z2VTU3dvandpTDVWeTVuQnZrR285eVhWOEd2RmtSZUdqQXFvR2NaZDVYVTl6eGhUd1Q5VHUvOGtjaS9uaFNuaFhiN1Y1L05Pckhaa05OT3BJZ1IrS3NvdUNQRktMT2g0TXhYdlNPOGU1Z0xGSHp3YnNIdm0wY0pPcEJ0Qkh0WWZZckZ1SWlVcFdybEVTZ2x5dVNxMXBramxVbWxuV3NVaG5ZRStaUUhuWlZMSi92d0dqWDlzMXpNMU5qdzczZEhZTWdhbVFTYlNIWExCckhjV3ROTDVQcUcrYXFSQzRyTmNQNXFqZDMzUjY2NmxnNDlrSXBkV095OXdXbXVDTy9ZS2JQVGR6YjVFWjg1ZGtQNllIUkl2NXFjZFIySHZCc2xJQXhQdWNoRFRnbUQyNWphR1JiWGZFM3hocU5mUTZnL21UbjZHZ24vaHNHOWJsMTFPS281cGYxc2p2My8wMzRQUGs3Nk1IZVNyZXJQNEpKZmtyRTNIZ3NNcGMwK09DSVJXRW1Xb01CblR2YVMxNThseGZSenJWZDBYcUUrM0F0RHVkOVoxOExzdm9uUUZabndaUlBVSXAzdWJHUlVHV1NPL1NBSHo4U281OEVPTkJOcWZPNDE0aEZYSDVTaS9rQjdRWlg2eVRTcUpkUjQzd3VtUkFGZ3VmWjgzRjZMTUVjeHNLU3hFSkhsOW1FWHN4bU1NcjBabnZiV2x4MWczdytkUVBtQVpJd2NxT1lPU3JuQzVoTmM5WndyYUJJcDVORk5WNHllcmpiYVUrazhVRW80SDlPcEZubFd0R1F6Z0FQb2t3bm5QYnV3ODczMGduOHo5MkhSM21kaHdsWmpnZnlaY0F0SFl3K2ViUUlDVlZscUNoeUV4bGpNa1JjSEFuR3k3WWt4YnRkTnc4Z1RCSXpFRXREekRxV1lZcEhPWnl2anNzeS9qNTBKUDRMUlpMRFp4N1ZBeUlWSG00MW5BOWxMKzF3UHF3RVRldzZQSEtMMkVPbWFXRXpxTDdEWjJyTy81Tks0RW5aMU1Wbm4yWEV3ZE1ML2JzUUpwOUFNWlJDUlJhTEhIYmphR0FlaWtoaUFScHVESkxzK2k3S2RSL05UTG9sbnN1bWk1bGllMnM4MVpJcUQxTHVvZG1MR3pUTWpIYkN4NEFQSVdUTFhNS3Y3Y01qbHd3N24yZlRIMDhOWHpMaTg3VzArSHhQZis5N3JWMWRyWHlMZnp4NitWakVmL2FOL3NqWTVhT2QrWTcyUkVmZSthdlR2Vk85T0gyNmJ4SjZXdmpOYjJEekM2QnJFUmpwL1doRFpScWVlRlhRTGZLTTN1ZStRSzRqRnUzdTZ1alA5U2ZhbzlsWXRqWEVYNEFGNVdlNHI0ckwwQWU0djhvcVh6NmgwV05RK0ZIcGJaZGUvbytYWC9xMmtpaldpcXFqaksrTWVWNTA0NDJ1ZnhmZmx5OFc4L2RkVElOS3RXaC9vKzV1aHc5NkxXSGo4Ymt2Q0VDMUFmVWVxT3hEcXFDZTFEQWlsQ0RtYlNvVENrSTZ2SlNNaitud3dnb0xpU1FyelVrdE9vc0ViVnVjM1RRNU50aGYzTmU1dDVhYW8wQUtSdDErSW51cE9ZWWJ2RTFYRTcyTXkvZzRqK1Q5d21pZHIyYkJkWlhrcm9Zc0ltY2JRckJ0WXhzalpIOVFkY2NOT044N3RIOXBlSlNTZ0RtdSs0bThjMnBtY3hLSXl0VnVPRFdXYXdIWGhJVllteGh1OFExdVNIbEk1d0hkQWRmcG96ZUpvNGFOaDRZRzl1Ni93Z2o2dFBuYnNoMHhlaTFjMmttWnRCbGpHOG9VRlZCWDAva3hPMjRJdU9Fa1dsOFpyM2wweU15dzd5bytSZWk4SlFUZHVNeUVjNjd2TE9ZejZiYldjQ2xTdWtDQXRqTEFTUTB6YTFpTThqQVBVcEFrcG5Bd3d2b01CRVlld3hUQnY5NDF0Nm5ZMlZuY05QZnVhbUhYeEpFSmNrRFJpVHkxZTByR09qMUFKbzUwQklwQjAxUW9UYmEzcDRJNnVYZlZKYnl3RTY3VFFpb3REQThYRkMya3dhSHpYYzNNOXZjVXU4UkVlemFmTFZUeEtYdjNEalNBS21nTFlKT3JLbGZxV01JREdFa3RNTnNYZ0pHSzg3cEpxS2dDdnoydVlWVTlBVk5Id1JMQzBvb3NBTmNWUmJURUM0aU5MeVF1YnBqQmFQZXVuZHRuTjg1czJiQmwvZVRJY0c5UG9pMGF0bjJLaERwd2g4dGthNlllaFhVSmorK09OdkhiZEtiUVMxeXFIUW1QUU5Nc0Y4QUdvaEU1bXJVOS9DaHhseVViTGlVLzJoOFVvNjI1WU40Q2VDOWJ1VkJIYTFRTUx0ZWthT2VmN0VBNFNqUnErS095ZktjUkN0cXlIRytoR25uOTF6OFV5eGlPbUkxLzRPdlV3TDlPek1aYWJaOUVxZVQzdDhabUUzVzVXbGJpYVkyMlJJSjIyRlJrMlE1R1dxaWVlc2I1WlNZR0dDWDBtWGdXVzhicWNaVkdaZWIzbnMwUXlRMUtmQVZwQVByN0Nqa1laZWxJK29KcEFCcElVcUc4VnZEL0dzTnI1c1RNekluWHNVMldJMTUxeGZWMFdHdE1uZjJSMXhRMlorN2tKbmVUcnJnT0ZlNVlJcitBOXpWUkRtMUdCOURWTEZZaUNNUnAwL3BoQWFQS1dCYm8wZVVIaWF6czNrSkVTWnBIcm04akFGNktZYWJKbU9tWEVZc0pnUGtHaUl2Tk55YVdpTUtpM3pweTVhR0w5eTF0WDB5MXg4Sld6cDhycWt4K1gyV3M5SERvT1dRcU40MEh5dHkvTURJSU5Cem9VeGdHRUVnd1ROczVqYmtzZ3kvZ3YwYis1UTJpUVdQK2EyUWFZaG9GK2lXT3JWNE5SZWZRT29JalJJTC9lQjBocEFOVFFKQTlCUDVKVU93QVhqOXEwRHJjTGNMQk4vbEJEelVJZVlOSTVXdjhNV3Jzek1idll3b0xKOFZ2RFNjUEtSaVhDQ2tSbUcwNGk0VjFSTUJSQXJoTklPc0VuQ1dpOHhjMTk0UXJHeHdWYUUyV2FvNWJ1cjV5TW9BdHlRSlFKL21razhnbitrNHlwaTdDSnlCWXcwUTc3c2VhQVArT3FWalE0ZDh4cE9zbmJJUHdkRlJzai9DeXlVeG9pMjRJMHhvaFM1dWovRSt3UEJpVTJqbHdhQXhMaUs1V05oVHFBaVd2aithYXp6Y2Q1NXFNOWMzSHpjWi9QRlIzQ3VzQTh2K3dtNW5pWWVBR3ZsV0h6aHRjemZUREhxOFlnejNJcXcrN3RjNFhxcUozQVArKzUya0dRdnhsOWRxWlduRnI3U3AyTHlaNWVZY1B3ZUduYXovSUJHRG5iOTI5OXhpYkExVXZ0c0NMZFdFZlAxU3ZydHJ2WFA4S0EzV2pVYlN2c2tka3daZUtRSlRqbERFdGhRZEdzRkJtNW5haUlJR3JPYm1tcnU3N1hlcnhtUmdORHZTTWxrYnpXUlpnYTNiN3V0MUlDTDA1RWdLNnVSNzdZSjJUN3dHdmNsSDdkZGQ4WjlmYzBueG41enplZjJXeHBVZnJhZjEwUzhubzBiS2hLNm84ditSY1dvL253Ly9RT2I5N3ZxdHpmbW11ODhiTXBsaGJXMnlUbjFseUJqaFAvMnFxNUJnOFZtL3FHbWlQcW1QODdlZU04ZnZSMHhYcjZFSVJLT3pPZnIvQUF1cGRjL0Y2Ry9zc3kzZEZ3QjhXTEJSRVZ2Q3lFRWFtU3Joa0N3eEMxQlhDaFZ0Tkpwd1NzMzJWRkxkV0p0bjF2cE8vM2VVSEtvUFhuV0pSZnErNzh6V3Z2dTNXbTI0OGRmOTE5MTk3emVITEc0MW5wUzRlamg1d1RXZVJOVHdwTCtSTkgveGR6MS9BaU8ybXR2Q3MwV2YvV1dNQWxvVlBhUFhTNStyeDcvWFNVMDJOZUdsbERXczMvb2ZWeHV2YVRXNnMzZE9GdGkrbkVyOTFiUU01bnorTlByR1Z5bnFGeUFJenFjRzhZZEhiSjZnYmlrN3JvZWd2bFhJcDJKVFpvbk9OYkNpTi9mamNhZDN1U1YzRFhJQStmZmF6M0RmSUJpRjQ0b3lUNnZIaTBvbHVHMDZFZFF4cDRibERmZ0xkazhML1l0Z3ZsbEliR1RIWXlGS2lySkVUWmJneWlMeVVLTWpMaUlLOGhDaUl2eFNxdlZQWi9UUEFUWVFOK2gzMjJPR21ZL3NDeDhMYno1czg2anhsOGkyWHZzRlhlYnptMytSY1cvT0Z3bW5QQzhvMi9nKytwOUw4SGszSHdaZDh6eHNDK3RtdmM1MU9yeDRvdUVGdmJnRGM2ZC82VlJ2aXE5aTdya1BaU3NwVHh4S211QkdKNjk3RlhJQVNVWUJ1VEZYQWZJVkhHaFExRFN6VHEySXBRQm80cmZMeEQ4bytHWDlRa3Y2TTVScmNJeE5Ka2o0ZythVjEwZWhGMGVubzJWa1N0cjZ1S2FJb1B5NzVZU3QrN1lPeWpEOEVqVDhnc2ZZVzhVbTgzQjlaRDFkRXoveUpGUkVHQkxqQUx6MHV3d1U2cXVudjNIY0plaHE4bzVYRE0yUHJPdUZMNFhrVnd4Y1RGZm00U1EzNGhxSU1HQjBqQVREWUlTVHBXRlFra1gxZVJIWXoxL3BsQm5iUllua28xeEVPRVRRMU1iU3h2SkhwOFhLRGlkWlFOcHhsWHBKMTF3TXB2VG84TXBlMjA4M3AwWENUOWFMWnVpRzgvY3hIbVZwQzJPNkhkL3lTUU00NDVIYkg0QVRtMTBES25KdGRUMndnTy9qVzUxbVIrV2VmaXJvWCtPSGk2RGFCT0wvVTFSdTh4Ry9PbmRDR04yemMxUEpqZkpqMzFTVDM5SEt0UWZoSWVZQjVlZ1dia3VYQVI1UUxERHpWOG1Dd1V3d1J1UFpYOXBkSDdyUEorbmpkZ1pEOGVLUzNNNWRJQnhjakhSM2Q2MFkzVU4ybUcwYjZ1enM2Z3AyNWNEcVY2KzRiVjJoUThMR3hlZVpQMkZhdzIzVlZFbjFhcjJZcnFpUkhpVjkxS3BvdVJrUlJwYllXajJpV0lCcG1TclFVL0ZsTnI4Y0ozaU9VVUpUUFdLWjdkTTBJZ2xSTHk4SkRMWmh5d2t2S0VrMjJ0cllHbU1vNUo4bVpRcTdtNmwzTnNCa3FuS2UraFBOREk3bmhnYWdVQ1NuUVJyak5lZGpLV3M0anVyNVgxTVZuVWx1VHo4SityNjQzMVc5SnVmWE9EdWR0aG9HdjltVXRmTFZoT0crenNrZStTdWxYNWFqY0x3aXZDUVJlSXdqOWN2U0hYMVhWcjBveGlkWFpOcXVUWXFHdlNsSFpiU3Q5VlhIcE1zZC8vZkF0K3dGYjcwVGZyZmczendENkdWc0g2S2NYRTU3aklRNlN5VHJFWXFlVXc5QTNoSWlIbWVlOG9DQ2hCb1pVRnhpcURCZ2VZRFJnVyt2V2o3VEFoUU1ORjBvaU9mNXlyZ1NpeVMrU2o3K0NxMWc2RDhiOXRtMmQzYmgrb2p5WVNmdjdBLzN1UE5QV2tsTWE3R0ZNNDhjODlKbXkxWFVIQVBEVm5GQ25XUkFoUC9KUTBBK1luZlpuSDdJQStWb0p2eXhhNGN4NEpteUpzcitDU2VoWmd4NWtrT2RnemQ0S0c5SVBHT3A3L09wTVBPdDhLTzRQMllhbFVFbTFqT0Q2WWpHUkNoaVdLbEc1TmVkcm1XTVhKV29oZWJ6a1lmZFdjak1nV2ViZnZhWENzQ3B6NG9iUnF2RThueXpJbjlNbW9GK3k3RVo5eU11VXpjaEZqSWJMQSt0S1BaM0ZWSHRMTkJUd0dhcUNjamluZTg1UXpKRW1tK1pxSUpDd1lTb0h2WHhEUEJkdW9ad2ZWa0lSNWh5UmthUFZBbjQvTGlnNkhoWU16Um1sZ2wvck40SWtZTFlkZ2lLK21KZWRyMnArSWdVU2JvRENDKzRPSDZMS1p6UmZtMmI0NDBIbjgzeG5xTmlLL2NTTmZ3aTd1NnFPT2tNV2tZNVNMQmRSbzY4dXN3cWhtbEZvTkRaa2kxTE0wMDR6NWJUTWROT2VFMjk5SUdUdzg0ekR0RXFLZGZackxLL1dub0R5YkdRNitwd1NjTDhzeGoyU2hHWFZ4clo2VXFQS1Y4TGhyeWhVYzg2d2o5ZVFMNGpaQkhwWWxtR1dZeFZWeVljb1ZKMmV1SFVQYzh0a1J6YVZqRVZkVllseVBsVkpFSytLSWFrUmtMWDhETi9nZkZlTnEzL0svSkRpZEs5c3k5K0dmYmUybG8raDg1anpqNVErU2x0b2w2cnVrK1h2ODRzODIrdkhoRDhHZVhNZWJheFVabG04eHp6TDhZbTgxeUFnZVJMWDJiSlpkQ0Zvdy9UNHlMcStkQ29lUmZOa1htblF6M0xheitrK2k2UmtadFpoTDFZZHF0aEp3cWsvVjUvQnBHdTAxNVh0WGl6OEh2QUNVMVAxaGM4ZDNUSzVmQmtoRXlQakR5OXR2bnRFdzJxUlJ0U2h1K2M2Y3NOekVaOGFLYjVoY2Z5YW9xR0xQdXR1UGVEWDhZcm1JemFMc2JyTG90UlFObytGZkoxakh6MjgvUTlIMTFjR2VxSExpaFFyUFVsYmphU1AzRDdka1p0YjdDbnFmdDBJNkpPNjM2ZmhRNGI5UHlmVE5jdXFMeTNUblQ1ZjFyN2ZRYVJ6YmE3QzVXUVdNSHVzRW5aelRyTlJ5L0x5SUlNWUFzTVJMRkczWitNWmZsZFRBaTB5YTRXb2N4UVkxQ05tTzU4Yjl3Z2ZCTjZhUUNWRVAxWXFoaWdwZFdOSjd1WHNuZzhLTDNzd1Y4MERIZTdGVW00S3V5NWFmSm9LeDV5YnpkWkExRno1dzQ2OHJsMjFhL2RsaDVhWFh0K1JsMG1yODhmNGRsdlZONnhjY1gwb0ZjWVAvQk9RYnd0L3h3cUlMWGRkc25KMDVkSEJzcWExdDkyeWE4L0YyWXhsWFBvMExmZ3ZtcHdLaUswaFo3dkozNWw5MzcvZ09Lc2Q1ZUg3ampLTEV1WGpYcEZZSXB5VHVxeUpxbFNkd092Nmk0VmtBcVB5VVAvb3V0R2U3a0pmc1MrYlNlU1QrVkFBdGVOMjR6eFo3YXBlRjRVOHJrYUREWjVUWUpQNzZQcXBVVTJlRkczanZXYm81R3RmZmV6bzVEU2VuanA2ekhsSHNyZDN1bFQ2NHFxZElJMk5YbnI1RFVlTytBTHZNZnpDdEt5dHgrTlE4OU1yVmtiR0hZTTFxWlRZZHJyWDNUYjVWbmVpQ1dhRHFtbDRLWXUwWkxtQnpsWDE5blF4Wlc5NW9HdWlaNkl4NjZ0NmZuWHZHbGxmZzJrZU91RUZrdktVVEM4djQrc3g1NVR1QnpLUGJSMC93RXZFLzdMVHZqN2swNUpaM2ZKcHFZem1xL3FhdkVDZUlWOWJuU3NPMjB3enpZUTBQQndoenpTTVp2TFJzOHRzck9OdGFwTGlYU3haSE92SHQwQS9EZ0gvUFlFZVpGbEs3MzN0clRDVVdPSWQ3cC9DNlQ4V3E1bnlPR09RZ1RISThwRTMzM2ZQM2JlLzZ1YWJGdWF5Zm9XRlNQRE80b29yUmpKNVhvNWhWMERtbVdMNm1DTklnWVZHOERaZXZNUndub2RNOUdLZTVJTzFkZ010b2p5dXdwVzkyV25Qd09XS05td3NSbXRaVityWnlXcEp6YXBxemEvYUFTc3E2WUlTcTJ5SXQ0WHRsanRpbVZCbk1CNmdxaFJVK2pVZ3FxTFpsdCs1S3hkdnZiMG4wOUxWODZyYmU3dW9odnRMeVd4ZjZaYWJldklxTllwSnVmRVc0VnhYUGhha0N0eWhWOGFTTHN1QlNLWlUySjFMUkw1MVFKYUhnUi92MndPYllWbmVzOHM5M3JYUFBYNVFKcFM1VXNhQ2VpUStPeGUvSTZaS0FsVkRtcWtTcGQ4d0xVVTJRMUdmR2RMaGNXNit1ZFNYVGNEalJMQy85L1pYOVhTMVpPQnhJa1JnZ1FKSzlSYS9Gd0Y2VDBQVW9rVHBsU3pacExMdGk2alVEUGtqUDFsMmYvYWlQZkFZa2wvZXZjczkzclZma3Roak5XTkh4aC9tMGFYb21zcFZSalhqcTJZQ0pCUlVZQkorckNKZFZQVVZ4U0plTkxPUDJRemxKZGpKZEJsUm1TNXVXYWdIa3UzZXNYRHBsa3NaYSsyZkg1Zy9WNnRqcjQ2WmZGbUpZSlVHaC9hbWRtdlhQd2JReW5iMVBRSDk3S1djemZ6cE9lV0FsN0c2MXJDcFF1aFpGY1pjQ3lPN295RmlETmgwWTV3WmZxMnQzODNqeWhyanlEejdEWXNqNjYrVW1LOUZtS1dmbUs5N0s0aXJBc3FxNFdSU1F6aFpzMTU0ZFRnWitXNlQ3WVRXckNyNHcrZVlQNVpxcGhGVXRWVkcrUE5WTTgrZnFoeG5rYmI5UlNKTE94Y0lqN0pWSzZORUlkSjhMU3VYQVZ1V2Jvb0pFbTU0andyalhGSEpPWG01V21JRXJWNzNJRlpvcVdVN050ZUlvcTNxKzVRbS9DUFYxUWZjQzZqWk5iVVovcER2Tm9iRmF0QUJqN0VLTHpEVythdDZPcElYNnNXaWw4ZjJoYWE0VnkvVXRUSHV0VzRjZW1FdGc1RjZIbnZSM2VpZDZPSEtXMFBWK1JhSXloRXhMQlBHdkcyWWRXM1lSa0ZxQjFkOExVWmNpOG5VMUlscVVYV2xGVnQrdjdVRU84dS9qUHlXZi9IZWU1b3ozcDErMjRQMzMvUE9lOS81dWp0ZWRjdXB1NisvKytWbnZXdGZZMjVLVFZhZjVwd0R6Y2ZOVnFJTHRmK2Q1dmJaNy9MWnh6YVk4SGwzdDk1UWZCa05mbXNxc05hbWtUS3N0WGtaMUtLYVovUnYrWmdwOEJGenRISVlHYkp4RXBtU0lwbk1aNXhJQ2prbVlrSWxRby9wbUFvUzVXSFFrb0NPSWFSS1NEM0c4RFRMRHNYQ0kyQm1hcHE2aEZSVlc0YXBxaTF1MnpLN1lmMEVTSzZESFRDN09rTFo4b0FsdFhmbm1xWDNMTTgxemdOVXV2bHFHb05sNWswZ2NlWUxueERFam15WWkwNWxnRWlGWnVrZnZ6YkFJalNoSjBGbUQvejRrRStucDRFRG5hYTZkZEZJZDIvZjN2blpYZVFlcithU2RjdGpleGZtaWwyc0dlRVh1c0orNExWVm82Q09uU0I5bHlpK1N3MzBIV2hydTdHejg4MURjRVNEWS92NzRXQjJZVytRNG4rdXRhN21JSEh6VEk3emZPeU0yQ3FjMklxVUVJbTQ0VDdJamZhUmo3RDVNOURmVldTcmlmakhBK1BudDBSSTJWWGprN2xRZUtUS2sxZmNsTkNzeWROOCtQU25TZ0Z5MnczTUJOT3ZCM282OGlYRDlobmRuWkcrN3RhdTN2M3JObWFLSmZ3WlFEcHplcUEzaWU4MTdHQnY4aWxtcDdoaDhKSzJCSnk0RTdDUkpsbW1URFVyMTczakJXNm1hTUR5U2JRUnpWYzI5UU5Vd1R5WHhrbkZYUnlDa3RxQ0FPY3VEakcxSG9UalZVdERxQzlqYVFocFZaNmtQRU85emFGTjBmT3RETEhPOHhWaWdVN1gwaGdPYWRBdVJxOTFvNXJPc3pMRUhhb0sxM0JqTDNkVE9zMVBIM1VYaHVoaUMwUFVzT0FYeUtQQXk1aW1wZVlIMGZ6YTBXQXd3alF0dVFabHhZaW5yR0F3RVo5MHZrQnBGNkR0WDhpMmpMOEJoUzVLei81QWphZnhOTk5UVVBydmtvUy96VHd6VytqWjcycWVMb0w4RzgvOTM2aGhUa2FZaGxseXBmUHFEekIzVDdiQVVZWTg2SnlDTjN2QTFXMndIOFhqbEhZcjBZMzRYdmdkL0NZNGdIUE8welN1d2daYUthZzVGL0VHdEl4MlZCWjNMVmdTeUJFVEE3azJrWWhrbm1VUDVzL0F4N1lnTjJoMldFWmhjb1RsRWQ2L3RIWEx6RlI1S0p0cHppTzhPbU53eEZVL3d0ZlA5K0VHS1p3UGlseFR3bUNaRHhQY2tGMTRpSWQxTXVJZ2ZORDVscVVZdFpUQmgvU0lkZVorM0tscWhGWXorVDYrWWtZRHd1OUhXTHJmc01yVEFCdEFkb3FxZWVad05XRXdwWThmMG1XZjh4MHRKUFNzMWZKS0k2QTBOdzFIY1RmL2NTOWpNUHR4NGJyVm1ZVlh6Rml3T3EvdUVyNHNyQU9zZVIzeVZZd3NSck1NY25YdzlOd2MyVFFCbnpydVlRQW02cW9EbEdxb3VBdHpodG15S3Z4S0YvbWNGL2g0TnhzZWNlK2RKM3JSWjZ1U0phcHRtN2UycFdMQjlnZGJDMzJsVkFCa3I0Z3lyS3NTdld4UHU1MHZsdzRWczdFM0R4Ujh2djZCK1UzM0RmWExCajQ0Tkx2eHJuVTltbVoyRmkxVmE5MnlwUzBWRHlZZWJDbjBsOW9pL0E1bGdEVTBHR2pydlBpU3ptejh3YklkS1BiTG9pZ1FRZFRhSWxhOGRmdk94SU54UzdkOUFjMEhIMnZZc0JYMTJrdGExYmhHelVnSWZ2SHVEYk9ESTZGUWRtaWQ2RGZKay8wK1gzR2dTMnNsZ2lHb2FsdkVqTGZ1Z0Z1MEdFYkFDT2tXU0RRQVQ2aHBoK3dXMndxSDRnOE96YysreVoxSHp3ZzNrZStCdkRSV0dlNW1uc256aUJNd2xzUWRDOGVSSUp5UXNFaUl1QVE3a1N3enk5MGlmSm8rMURjU2o3YkpUSVhLTy85OER0WWpMbzEycVRrMzgrRHJtTThZa2J4Vlpwd3pkWEp6dFVxMWF3NHVENC9LUU1WTWl5ajNuTG9KLzRjZ0tMSUt6YU1xbTdkc21iSGFZamMwSW9qRDVlV0xqdW4rZ0hudmp6Zk9Jdk04UGhVc0UrRTcwUlBvcytqdjBWT1Z2MjZweW9QdGNwdllLbkZ4a0lJNG1ES1NXa0txQ1lIWlFNYWZscXlnVFh3aHk3ZVNqK1VpSFZJb0hBNHRlY1ZRZURrZUplRlFlUEh6VDMzMEkrOSsxNE1QbkpzWCtla3ZQdlgzbi8vN1QzMzhJNS85NkdjLzhMNTNQZkh1SjA2LzdZRjNQdmpPM3k1ZmN1Ry9RWEw4djYzOXF1Vkd6cjZaNnlJZlovNUluVjRSQk1raXErQnF5ditCQnE5QUVuM3FwVTkvN2dKeTZrdGZYZVd6UTJRSDZtZHpOR2ZCb0kxakVTQnRTU0o0Vm1LT2I2ZUl1eXdFNGN0Q0NFd3R5K1pvUCtvZlR1U0xiSTV5NVpIZ0xZWGhRcmFSS1p6QTBTRGZKWmwrdllyMCtwam1IZitMb2hqaTlobkJwM0xEMU56Rm9qL2tJenVPaXY2QUpRN3h1aE9xVDB5ZkVxM1hpYklmai82aHFuRXM5azFnTDRibS9NM3pzTmZwcmJ4T285ditQNnF0eWhHNjJ0L3BPNVcyTitLZ1pZSVFkWFJsb1ZKTXlhSzB2SE8wUCthWGdTak9iLzFJK1A4Szd5ZU1mci9KKzZsNW5jR09USnZuL1lSL0srK25acFQ5U3MvWHZKK3lhM3Mva2Y4OCs1OU1ROEdDUnczbmdiVmlDdTk3MlpYRmdXZzY5aVQ4SCtEZXlSUnVqRC9NUEVPcjJnL25wN1htVjlaS1Q3N01PaXlHN0dqVURybmJiTndOYUkxbkVjL05kRzVPKy8yVkpVczBpU0h4bFRDQmZZRXdabXQrNnBPQTI1L1VWYUlvUjM3YlRFeU5jQ1I5Z2VOWDNENzZPMU1yQ1NETEp6bjRtK2NXbkRYTGJDMG01NVBjdFdlZVMvUnJsdGtVbGIxWW44ZFc5UzliL1kxWk9WaGNtbnFLRVNZM2lwb3R6eUNJTE9NYnBkSVM3Q1M2ckdFcTBjVkxEdTdkdlcxTHVXcmxNZ0QzTm52dnBadHdyTFRhMGJiY2pKTXZkUDUwZlJrcW9kaW9oRHp6bmZvWjhneWMrUkEvczZRSHp1Yk9kdzNaWGpOL2VRdFgyZm8zMWlEVWE5V2R2eDhCR3hNV2djNFhYSURPWXgwblNpek9UMVhkT0Q5MW1mZnhtdjMzTy9iUC8yei8zVlBydHZIZnBnT1pmUG91d0Y2dHFCc0ZLLzY2dlhFcU1jaXpicmxPQnhIWlM4bHJZUThROTJLV3RZYW5rWUx6TEtBelFuekx3TXR3MnZJVC9WK29KRndzbWpIOVowcVEvbHlQbTlLeUlDay8xNGx0NG5SRU9paEdvNExnL0lxcTRWYjZ1QnhRblorYkVabCtRSkkrUU9XSWljTnFRSDZjdG9hQm5aaHE5VG4vc2dHUDFwWTk0bmhVOVlCdW40dExtVGM0QjhKNEdiOEY1Tm5yQVc2Q1hJdkhvUHkzUFB5UW5IVnVaa0QwWmhmeTR1SHFwb3RXNVlHM2t3UHdXNmxLdTRCZGZ6b0FVVXZjdVl5aHFjVmdNQnBnbUZ0MXpiRDg1NklOdUZ0NGEvMFhHUFJ0K0FWOHhya2VudVl0SGtyK0lwUkgrRk41V1BndmhXK1JUOVN5QUd5cHpBTVJvQ3BGNm5GRVZFMGwybkVrYXVJcGxpQVFTeXdQSkp4R21LNGdPTldvRjl1OVk4czhET3JSYURBOGF1dE1JK2FxTnhvVlBabStac2Y1Q3psNE5oL2pid0ZLNE5sY1lPd1pmbW5XQlJFc2Y4djNBZjkvQzBicktCdVU1RXRjSDFsUGNRY1VrV3ZCZ0NMK0c2VnpWRFVkMXM1Uk5XbU82UWxpOURsVjVVR0wzNnFKYzQ5N2t3Q0ljbjBVczdIeEJ6Q0d1OUZtcmhYejFsYUNFY0tTSUNqQW00NGpSVGtoWWlSSmJoU3J0S3d5WGRMaXpIUkhLRnZLZG9Tek9ZM0ZJQUNTYlhkTkZDdyszZXNhbnUxWTVnRUtYa2Z4dE1jUnp2anJDa1dlNzVoRnI3TmVGRDc5TGhwOFN0V3VVMEhlK3JEa2x6NU1EZXU0cGo3bGF2emNjNWFoUGk3NVlaenJQblpLTThWM3lmaGFkbmpTTzVTa1dsTjZ2cnZBTDhpUEszNVV6ZUg3MHdhZXZaZkZxUUdObEU4aVJWQk9zWG5FS0NMd2ZYaC9abUZ1OXRuWnRyVlFKWVc4UTg1MWVsMUYyczVSa1RaN0h1YWJja2E3YTZ6K2xQTk0vdTBOZTFzOWQrRzJ4dnJHZFEyZDAycmdOYXo4bWlCOXB5U1JtMm9mMzdtMk5qWndxa1lBOFVOMUYyS3lUSFhyRkQ5eFBldHgxMmpvNmxKdjR1dnBEcUZyM1F3OUhYeHhiMWVweEdJaUVibEN4anlpaGRubW1aTWJZcTV4MmFabTVPUzVyUTVVb2pZSVFEMmQyWFJyekQ5a0Q3bkNEazl4M29Rc2MweEhVb3NBdDBQTUdXT3FzWUl2MUxvTXM0ajVEN05aNUx4aGZuSnNFNCtBejI4b2xyYjJ1TUh3K2NxR3Jqb2IyQ1lXOHErWnh6SnpTblgrczNPK1JJVGk1aDQzdHQ3NTFXSmxLdHRSczVjTmtjdFIzTXZldm9ndXFnQnp4TWpHZkpsQnhoQlljbWNaeEhZc3JoaUtMbWtnK2hGaHlTc0tUR1VoRUJZb09qRTQwTnF5ZVdIVDR1eGlZMnIzbnE2V2RhM3JDaVpQcGNCY1RGZ2NuNndrQU5RcjdxcDB3d1htNDlhMENDRVBLRkhPNzZvaFJJbllPbkY0TWovZlBuWEZXRGpScWtnVmFoTG44T1RoaVRZQmh3VlRyVkN4UEEySEU0ZWY5TWRpNldqMHFsVTczRTdGZGNOaksyUHhpTG50eFBSSUgvV0xRaFN1dzFtb0hPbFhwSTJxQ1Q4akpNZFdybDhaZTVGZGs0NDFidXN5Q0NFUG9RRHE4aksySDBVM1ZhNlBZVmtjN0NZQ0ttSmQyTE9WYVByR0NVSlZhWjR0WVNNakFlZzR5eVlvQWcwM3libXAxQ1JDcFhQeUlvZURoNi9ZNzZWc0h5bjNsZGpxTDhHdWNGZW1iRnZBcjNOMkF4aktjbitHdFd5dXE3SVV2RXpyNDJvYkxiTkJNZ1FTejc3UWJTY3NQLzdLbFF5aHZLdGFhemlmOE5iVG5PUzVkNS8wTUVqUlcra0FOb3NYYzZ2dUJwaytpeXZadVBNR2RxMUlZMjE0TWh1L2todDVlZFVMY05WTFdpWWZ2VmlrOGdadUFYWjk2TjRKTkhBRzVTdFp3Wk5ub1B1WXZweU5WRXdXQ1pvY0cxcUhac2lNeUd3aExqQjNYYUM1bGpJYTRjNXl2Wmk5KzRnYmZPdDZUOWZpbUNPTmdjL1h3SFR6SE9RMlQrMi9qSkR4a2FHN3R2aENQbVAycGx4RTlVWG1SenBUMng0Yzl2emkvSmJ1L0lubVc5c3RicVFpazRBNVp2aUl2SGtxMXpGOSs1RjBsQWFMdzgxT2NhaUswUnB6dGkraFc1SGowcktMRWRZb1NMckhFYUtDZ0E2RGNLQVRWVCtPdEJDbVNLTjhCUkNpQ3VTeU1OYVJJZW5HU29ENUhabU1LNWpJTDV2K0ZlUlRMTjlTa09WN3Q1aHJuYzluTFNQTFp3SFF2NlR4OXBRTjVmL08reCtvak96Zk8rUEJ5QnV1TzNYaTZpT1hYWHJvNHIyMzdyK1ZyWWxWV1pwWk9oZE9sZ2NqTEJJL3ZEb2tzem1KYi9QcXNPY2s3UjBNcjE1amxwMnNMNTRXYmxLckFkLzM0b3VGenpkS04yZWZ4UWM1ZjNvdmk5NEpOb2c5bitCVkJqOTl0dElmMEVPNkhmSHZCN2IxeEtPTWQ3M21Ca2FoK2ZKS3I3a1JpdVJiVmNrLzRIeXZ6aElmWDFQQlJhNTZnZDg4Nm8vWVJoQVk1NTBCUFFpTU5lby83ZFZzaTBBeDZ0bGNiaEw2VVlybmE1OURpNVhOQ1pndGN4TnNsYTE1b2hBV3dZN1llZ1VBb0hoOElFTlU1NlIySkdpMDNGOHE1bHBpdGdVeWFvcWtxRHVuMXJOQXZ5alErSElJT210OXd5cWNTZ0lYd2xKVFR1RWNkenpOVHdPZ21DSnVhcDF2Ymd1T1hqb3lzS3N2dEMzSUYrWGN1V2xtT3lHNlNUN0cxdDNpYVJ1UHBrck9kNGloM2FmcEpCT0phTVdKY2lvY3hEKzJ5ZkJGZzZJd2VuQlFodjczRnV2czZYclRMcXJhOUQxOFVla0gyUTBxS3N6R0czenJSb3Q2cE5RZUxSb2Uxdmk0OEFXT05acDhNQzJkK1hnSXJ0YkpZaXVhTnFnWlFQVHZ4Y0tmbnZtQUZjQVUzMlFIZ1EzN3cvZzJpZ09DRkdqUm5NVlF3dms1L3o3aDFpaCtVbXNKZUZqakhXUi9BOVk0VlY4ZVlwa1ovV3BZdzF2OWs1dmF2THpDSFBMc3hmY3lkSEd2QzJhNFlZMmIyTHFVcDFiaG53a1hiWFNwMFZVKzA1dFlGaFhLZmFZVjdQckdjZnNhRWJ6VXhxN1g5T1RFNk1qUUlQT2NibXU5a05kaDFIM0k2c0l6bmhmMTBGcmUxRXltWHN1ak92VXc5L2lTSHBiZC84T3lERFdQdUc1Z2o4RC9oeVczVWx6VHlUcGJ2OGE5RVd2UHJtT1ZqMGh3UzduczN0bkxlL001bnZlbVZPbHkvUWJobzU5aTNvWENFc3Q5czh4UzRLQnowdDRFMDJ2bHNlREhjcFhnekpBN3ZLdzNMRUhGTHZnRVQ3aVdHSmIxNXV4cmRkdUhPMkwwazI0VU1kN0Q4TTR1MTVwY3ozclRhQmZQZ256QklnMEVpVWc4NDZNSWtqeGZSd0hvS09iUkdRSVBqVmNVN2dmTk1ocUpDano2N0liMVBIcVV2UUpJby9BS2FvT2RnL0cwK3FJS3c1R2FqRy96eFJXYTgzeTR3UWxOR1ZuL3pIbkFDQVNNUnl4TmN6N3BSaXJqT1RVUzBrRjB0VjZjQ2RpZXVQNmNFVlkyTUx6M2VoYmtTMXBUcFpqUVk4R3JoaU9xOHlrM0JoclBRNE5IOUhESXdDZE15NW5jNUk4OVUwM2tvYW96YXF5V3lPTTFwdHFJZmNJb2g4cG9GckFQVzBPUUVub1NxWko2cWhxWklXc0VLYTVpcU5sVkhLTTlPN2N1Ykt4TWpBNzJkeGV6S1JEY0xSVEdZYjJhN0trUi9ua2kxTytJanladUIwQWppdTlVQTdjYndTRDUwMWNLalBBSHIvUHA5SEVZeUkrcmhuV0NTLzlQdndKdzVQa2hNejZBVVErcXNCVk1LbVVpYy9kWk43ZWpDSndBZ0kzTEFjZ2FIRUFnQTMyRmptUWlIdlZicWtKNmhCN09BY0pTdXN4WENFK3cxWnBxcGttWEE0U2JSczY1eFA4cGN0UXgrbllQOU82YU1JaW03S0FHOWwyOFlkTWk1d0ZWMGwvNjM0ejA2N3FRaVlZTmovVC9COTEzY0hCNVZCQXlNMTJ5NXFPYmIwZ21HZW0vYitlaEt0SEhKNEJydkZFRlVlb0cvN3FSR3VVbkhoYTZFK1NwQmJSVTJiVXVBbXlRWmVJQW9DZnJoS2lZaGM2ejlGSWduUXQwUlhOaG44Ym0zaktqR0h5ZHRObE5sYW1KOFpIaHZsSkh0aVhtWDdBWFhGdUZzUWIyWTRsUlE1R294UmF5S25oSjQ5eXFTSmg1NXVjTFhsV0k1NlFZNUdGQkxOU0hmTkU1cUJpdTI1N2VDZjgxY3lSVEhDUEVEbWNIc21HYmtMRmladFRRZERqS3h0dXdydUFQS0JwcEEzbjZYZldNZi9oME5tN0dhU0tMb2JsTmxVU1FuUWdrRldxemUzVWtLSnpPd2kzK1VWRlY1UitoVVBkTGlaTlhvYmJWL0JFamQxbDU0YVdXbGVmMjZYOWRlM2w0dkd2VEhMbnR2QXUrMTM3N1NEVSt3bDBaSENwWHhVZEFML2RpajFuS3drS1QwL2d0RGF1UDEvSXdEMWJYVm1jTU9JSVJ5d25vcWYzY2hkV0toVXc2SG1OM2x6RDNtUmQ0NkFSYjdYNkVyVHpBVitDcDV6YUFCeEErNVRoRk82anBGNzM1c2UxYnIydHI4Ky83L1YwTHN4dEdNWEpYM1Ruem5ZM1gzM1g5UnI0Sll6UzZZWFpoOSsvdjliZTFYYjlsKzN2dnUxalhBbmJ4TjRndnRZTy90OUZydU9GNi9zeDNDUDhnVEhEZVhhNE1sTEVnbG9CQnRjTm9GTnpWN1BrS1h5ZnJuMlptZW14a29JL2xWNDI3Nnpvd1lhd1crOEV4VG9HbDFLN3FCUnV5cTFZUjRIQmp1blUzVzkzRWdkdHV1dW0yUDAvQ256K0gwcTEvbm9MU01aMStVekVNWlp1cWErbzNWTjFVdnFGcXBySk5NVFFWVHBESGxxdnRiL3RvS3BGSWZaU1ZuSDlWZFoxK1F6RjF1RVRUMVdwcnVKZXFHUXJuMFE5eS9uY0RlbVBsZFFrWWRVS0JwUnU1Ykk1bzZ2SU9vQU5pN2MweDg0cGpJOE9QTmRXQTY0OWIyREJWd3p5R1RQTUVCWUFsSWxWRlMyNEpxY3UyVHhkVXBBSUhPSEh0a2NOWFhINFJzd29zem03YU1ETXhOalRRMDkxWlRBTTNZSndmQnRrTitBYStWRTYyNWppVUxkZUt0U3dtTmY4aGx1ellLOWF3UTgwVGFUQmNLOVpXVkt2NUdKVUhhOFVxeG5qc1RYc3BUU3NCK2FIakR5a0tLeXh4V3I4RXBiU2lzRnBlMlBzbVJ1bmZ0RmRSa3RTV0h6cjVFQ3NFNVNXK0hPc1NWQ1VwZmZENFF6UWdRV0hQbTVqWjZ4Rlc3ZDREcXRPVTdtWFYra3Y4WUJJYUgzdElDVXBKOW9QQXZOMGZoRE1QSEgvSS9lVjlWVWRRTm1hL0svd3Y4aHpNc3dsVXJPVFlZcTFoSmwyNkdxYXFrcDBjU1NZRytoTVR5WWxPbG5remw2OHVlY1dUYnJLeHVrcG5kQjRhNHdxaGJ4T2t6bEwzbG0zTFUrTWpwY3ZmM2R2ZjJwcTExSnRVblp6OTRQSzJ6ZDJsb2lKMUNicDZrNlZ1ditqQTRwYnVFclJlZEV4dFlYSFB3bHhuVnlTYzE0L3QzcnV5ZVZvTlNFSWYwVlg4NmE3T3VZVTkyK2RNN1NiVkVQb0VxY1FxSGx1WTdleXE1bkt5eWMwZ2pjVFJEblM0Y25sdk1ob0IyUUp2QmU2QnlMeUtNY2hpbUsrM0RsSVpPZ2I5SWlFaUhVZFVvcWMwbUxNS1p1c21RQlhhemJSenkyejV4TVhXRmtWZW1CdGNWK3FHb1pScTJkRzZ3KytUNDBvOHdKWmV4M0k0T3pUaWVUaldZL2xaOWxIbTNlcHIwbEpQRVI3bnAxaUVjWmM4ZDl4SzRKRXA0c1lCeGZFa3h2bUVySXBMa2lHR0pXbE9EVytlWHI5TndpV055bHNsUzl3cVU2MUhXbi9aYU9XYTFuWkZHdHZmVjc0c2EyZ3hnVWlkeHlibmIxK1U1RnoyamZoNnhUU1ZXMVg1OVNBcmlIQWpRNXkvVGxidnkyWnVXZEJzNVNKSnVvajZ0WkdMeXh0SHgyYjY5bzJKVWk1dm1lMmlMSFhEVTh6ZFBMOXpidFB1aHRpT0VqSmg1SlRSTm5RWXpWWTJJQkIrbVFJV3BGOTBuQ25ma0hBTVVJc2ljRjAveTFkN2pFZEpFbkdWZXJ1MXRUVWNiUXZiUEJqUWRhVHlCUGZwcHRUM3VYb1N2NkZDUTNLLzh5VDZHeExPMDU0a0FIVTRaVHZUWitNdnkvS3VLZGVyYW9wSHJ6aWRJN3R0QWY3dUdxVzBWbFRJZjYyYnQ0bGY4TSt2Ky85THUzN2Zwb0VvN0xOOWQ0NS9KN0ViTzNiYXBvbVRxaXFsYWVNV2lsU2xMS0dnVXBZaUtxRUNxanBCcVVDdEVDQWhRRXdWTEJWQy9BTXNuVUJpb1VJTXFBSW1aZ1lHMkJBcmxWaEl5anNuYVpNS3djRGk5ODVuZnhmSnp2bDc5cjN2VVZxcWdzUEhxeVhwYTZHc0lnMHBZWUdRWUV3QlZ3MERndDRRVWkvSGgvb1lQZ1Eza3cxWm9rbVdKb08zT3BHYmJuMERrQ1VwUXQ0ZkpJRTIxVEtERHFOUnhnSkNDaUdNMHJnR3o0VFBRamJTWmFqQU5YaUt6bFo2czBrMXhtT0pHMFFhWFZ2bWRXMWpsamZWUENLbUMxRWtxWjU2bmpoenJqS3JJSmhaVjBRK0RxUUpjWXRKT1NHd3NvR0xuRVoxcXVuTG5NN2VBbDNtVEpVUWM0bDl0NkVhb3BlQWc2bW1vYmF4elhuR05sbE91dyt3cDl0aHVaWC9SdTM4blg4SFZFMnkvRS9FK2ZsSzZmaFVXRWJjazhjUDd0KzhjVzFsNGZ5SjZ0VE04WmxqRStWS1dCa2U2aTlrUE5zeURVVW1tSlhhak9ybTV1eXVpRHlNaDlrOUwzZUFMTzlIWWxHQ1NSQTlvU2RSUTVhaXZSR0o4Ykt2QzR5YlFJVE9pR054VDh1NC9YRSsyaFVwbnJGMFlEYlJXcXhwTWFiZTRnTEN4d1ZlY1R3SDVzNjNUV2VCVUFrTEw3RkVweVg4NndkYm1pQm9XS3I1dW1WNVZwSi9xQ2ZCV3ZXN0ZBZDlvb2hrcEpDZzMvRzlubUhIR3l5S1JNSWVxOFdkOFRBR2FxM2duajVYbFRQNTBzQ2hnV1luLzhyUVhjTndkYU5sWTZRV1l5UHhQMG1zZGpMeW92WnRXNS9UazhDODVuUzd6YTF0QW9wZzhCS0dPMXVJbzBSUGwyTGFicEFia1JIRlBqc3pCY1BJQUpJbm1OZGlVdHJXNHNQVFk2eEtZeTkwUjdIM2JtMzNoWEJCVUxnOFYySTVUOTIyS29pTjRyWndHOEJjZlZGQWtUWXJtSlk0cTUyeWZNdU45Q25LSFd1TS81enBOeDV4Umo2aWovdzllV2xKbGtmbGJyQkt0enlpS0dDVkVia2JMT3djbFQ5ZGYvZnR3MVZ5Ni9YTzFwMHZPdXZOS0syandPMXNQMXJiWGwzZC9zNDIrMXJtNjV6T1RiRFZia2NVbUNLNUFRVGJhcXNRMklHOFNVYnNTNGVMZ1pVQTlxTWp2U0dlQy9OZm5Na09oSEc0cTlqNm55SXJWNG9hTC9sSVUyR0U1WndXOXZJSEdnb2pTSFJ6bHBOTldUbTA0MmRjUCtWWm1aSnZlNDZmMWt6WjlWSnAyd3ZtZk10TGVXbmZGeUZnWDgrVkUvV2pwdU9ZNkgyaW5MdGlFSUtJS09tVUYzbVdRMUN2eXlyOFcwV0J5ZzRWTWFVRzdFVndGUGNialBsa1V3QUFBSGljWTJCa1lHQUE0a2I5dCtmaitXMitNbkF6dndDS01GeldMaEtDMGYvLy9zOWlmc2NjQk9SeU1EQ0JSQUZpOHd5OUFBQjRuR05nWkdCZ0R2cWZCU1JmL1AvNy94ZnpPd2FnQ0Fyb0JBQzIvZ2diQUhpY1kzN0J3TUJNTnY3L2ozeTllSEEyamRSQzNQeWZKbTRlampqeS8xOFFEUURoSW9JeUFBQUFBQUFBQUZ3QXVnRVlBZGdDV0FNQUEyWUQ3QVJ3QlRvRmxnWWFCdm9Ib2dmK0NGUUlkZ2phQ1NnSi9Bck9DODRNY0F6ZURZWU9XZzhDRUFJUVRoRDJFY0FTTUJMS0UxQVQzQlRXRldvV0lCWnNGc1FYRWhlT0dEb1l4aGt3R2VnYWxodnVIUEFkdmg0MEhxSWZPaCtRSURJZ2hDRHlJVVlocGlJV0lzQWpQaVBzSkdRbEtpWWFKcHdudWlnZ0tKUXBDaWx3S2dZcWJpcnNLOG9zUkN5T0xQSXRmaTMwTGh3dWJpN29MMm92akRDT01VUXhsREpDTTF3MEFqUjBOUG8xT0RWdU5pQTIzRGRHT0s0NUZEbzRPdWc3akR3c1BJQTh0anowUFk0K0VqNm9QeXcvemtDVVFRcENLRUsyUXV4REtFT3VSQUJFa0VVc1JiSkdSa2FFUnF4SEJrZUFTR0JJMGtsOFNqNUx2a3drVEp3QUFRQUFBSWtBMEFBTkFBQUFBQUFDQUU0QVhnQnpBQUFBMFF0d0FBQUFBSGljZFpETlNzTkFGSVhQMkIrMUJSVUZ0ODVLS3RMMEIzUWhGQXFWZHFPYkl0MUtHdk5YMGt5Wm1SYjZHcjZERCtOTCtDeWVwbE9SaWdtVCtlNjU1OTY1R1FEbitJTEE5cm5qMnJMQUVhTXRIK0FRUGNjbDZvK095K1FueHhYVThlSzRTdjNWY1EyM2lCM1hjWUYzZGhEbFkwWXpmRGdXT0JPbmpnOXdJcTRjbDZnM0haZkpQY2NWWElwbngxWHFnZU1hSnNJNHJ1TmFmQTdVWXEzVE9MR3lNYmlSM1hiblhrN1hVbEZLY3orVC90SW1TaHZabDVIS2JaaGx5Z3ZVM0VUTk5GQzVHWWZ4TXZQMUx0enRrMUNiVk9XeTQ3VjMwaWpNUSszYjhHM1QzYXppcnJXUmpMU2F5NkhyS3hkYXpjTEFlb20xaTRkVzYvZDVHRUJoZ1RVMFVsNVZBZ3VKQnRVYjdsMjAwY0U5YVVxSHBIUHJTcEhEUjBiRng1SVZTWkV4alB0Y0VhT2Nha2hIUnZZUThEdG5Qa0tUdFVHUk54alRFYk0rWXhmOUo3c2ZUK2pldU5JaWxwekw0M1Q3cmhGZGVlSDBpd25lZm1ZM1dQRzBMbFhMbXMyVXVwaEtZcmczcitSOWJISXpLZ0YxcjdnVlMvVUJMYjcvL044M2dyT0NSd0I0bkcxVDUzOGpOUkQxUzdiWTZRY0hITDEzQXBjRURvNTI5TjU3TjdJMDYxVzhLeW1TMW81RDd4eC9OU01uNFhjZjJBK3lkelh6M3BzM003Mmwzdkd6MHZ2LzV6S1dzSXdNT1FxVTZHT0FGYXhpRGV2WXdDYTJjQVpYNFdxY3hUVzRGdGZoSEs3SERiZ1JOK0ZtM0lKYmNSdHV4eDI0RTNmaGJ0eURlM0VmN3NjRGVCQVBZUnNQNHhHY3h3NTJzWWRIOFJndTRIRThnWXQ0RWsvaGFUeURaM0VKeitGNXZJQVg4UkpleGl0NEZhL2hkYnlCTi9FVzNzWTdlQmZ2NFgxOGdBL3hFVDdHSi9nVW4rRnpmSUV2OFJXK3hqY1k0bHNJakNDaFFLZ3dSZzJOZlV6UW9JV0JoY01CUEFJaU9rd3h3eUhtT01KMytCNC80RWY4aEoveEMzN0ZiL2dkZitCUC9JVy9jUm4vOVBJOVpXTllGa3Jsc3JHQkJzNXJTU05ySjFsTmplc2JHNC9mdkoyRm9uT05GWXRJT1NuRzNuWXVyRnBIWmxqWlJwSGY4bnBjeDZGbzlOZ01JeDNHMG5tck9oblhEem9LVVZzT0pGTGxUSGlqelRqckF2bDhrYlBHUExyU1VxU2dyTFl0OWFVMTBRc1pTOWFXQWpQaFhNaWtkZk5jdDJKTVdTTHVCNHFSb1VKeFpHMnJUZUZKV3E4R3dyTmVaV2RtV1haeFV4dk9qNnlvZFkySXRKNHlTWjJJSGdTdGFOam9FTXVFWWJ0WUhIUmNkVmp6bEtMVjRpNGJLeXZMWUxSekZEUEgvS3V5QzlHMnd5U3JYUEIxcmhBeENsbVhTc3lubW1hWk5wWGRPbVVYNDJHbHFWRzVFeUZTRnF5UHkwNVZMTm54M3l5S01Pa3ptTGRUMGF3R0s3Vm9RaTA4Rlk2c2E2alFrWTJWaGFLR09IMGs1R1I1SkV4T3JkQk5OdUphMkcxS3RQa2liYUJFcUVkV2VGWEVXcGhKeUtObFhTdW52bTd2bE1GcFk3Z0ZycmJSNWpRbEU4dFJwNU1yYS90Y25hN21pemFla1h4RC9vckdacVIwTEJveFo3djZQRExXNnpqZkNsRVl4WVJETzlvbkdVT1p1SmlxZjJ6VnhiMXlJVFl4ZDFKU0NLV255bE9vTnh1cXJweWJMTFV1bDF4R3pQaU1PYkcvUGt0UnE1NWFPMDBOTXhPR2FWdmg1MzN1VGRleXhrSjVVY1d3ZnZKZFVXUTZKdUcyUzhvYVBhRitRajRlNHBya1pKWFBxYmNtSVJkMDZGaC9scER6bERQUG94ZzFsQzFtZHVITzlzNUcxQTBOWlNveWpjVlozcFk2S1I1MVRXcUxXc3hLT3ZxVm1DWlhhTzJFWWpIbnAzeEpSVkhwaGwzTlVqa2JwemphS09ZWmRQempXUWoxRTNucWRjYlJsUEYzK3grbjZkb1IrVk5PWHNtVlk4VDBQamdoNmh4dkt3bGZWdGJ6MnFrVlE3UGhUQ2NCbTZjNDNNTkVXblFtZ2ZCQ3AzbnNESGMwY3piRUpaN3J3QkN5WHVia292TDJpQmRQMmpZNUh0TEdKY1c4a2xyTzJMOXpTZ2RwTzc1aUNhcHJTUE1VaE8zenV4dFNHRW5OdHRTZUphbVRvZGk5ME92OUM4eDYwN2dBQUhpY1kvRGV3WEFpS0dJakkyTmY1QWJHblJ3TUhBekpCUnNaV0owMk1UQXlhSUVZbTdtWUdEa2dMRDRHTUl2TmFSZlRBYUEwSjVETjdyU0x3UUhDWm1adzJhakMyQkVZc2NHaEkySWpjNHJMUmpVUWJ4ZEhBd01qaTBOSGNrZ0VTRWtrRUd6bVlXTGswZHJCK0w5MUEwdnZSaVlHRndBTWRpUDBBQUE9JykgZm9ybWF0KCd3b2ZmJyksXG4gIHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LEFBRUFBQUFQQUlBQUF3QndSMU5WUXJEK3MrMEFBQUQ4QUFBQVFrOVRMekkrSUVuN0FBQUJRQUFBQUZaamJXRnc3VGdEc1FBQUFaZ0FBQWpTWTNaMElBYlYvd1FBQUsvc0FBQUFJR1p3WjIyS2taQlpBQUN3REFBQUMzQm5ZWE53QUFBQUVBQUFyK1FBQUFBSVoyeDVabEVaeWQ0QUFBcHNBQUNaT0dobFlXUUpZU2ZGQUFDanBBQUFBRFpvYUdWaEIwQUQxZ0FBbzl3QUFBQWthRzEwZUJXaC8vb0FBS1FBQUFBQ0pHeHZZMkV4SGxwbUFBQ21KQUFBQVJSdFlYaHdBaWtNb0FBQXB6Z0FBQUFnYm1GdFpiOWFvdDRBQUtkWUFBQUN6WEJ2YzNSZ3FOTXpBQUNxS0FBQUJicHdjbVZ3NVVFcnZBQUF1M3dBQUFDR0FBRUFBQUFLQUI0QUxBQUJSRVpNVkFBSUFBUUFBQUFBQUFBQUFRQUFBQUZzYVdkaEFBZ0FBQUFCQUFBQUFRQUVBQVFBQUFBQkFBZ0FBUUFHQUFBQUFRQUFBQUFBQVFQbEFaQUFCUUFBQW5vQ3ZBQUFBSXdDZWdLOEFBQUI0QUF4QVFJQUFBSUFCUU1BQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQVVHWkZaQUJBNkFEb2h3TlMvMm9BV2dOU0FKWUFBQUFCQUFBQUFBQUFBQUFBQlFBQUFBTUFBQUFzQUFBQUJBQUFBbUlBQVFBQUFBQUJYQUFEQUFFQUFBQXNBQU1BQ2dBQUFtSUFCQUV3QUFBQUJBQUVBQUVBQU9pSC8vOEFBT2dBLy84QUFBQUJBQVFBQUFBQkFBSUFBd0FFQUFVQUJnQUhBQWdBQ1FBS0FBc0FEQUFOQUE0QUR3QVFBQkVBRWdBVEFCUUFGUUFXQUJjQUdBQVpBQm9BR3dBY0FCMEFIZ0FmQUNBQUlRQWlBQ01BSkFBbEFDWUFKd0FvQUNrQUtnQXJBQ3dBTFFBdUFDOEFNQUF4QURJQU13QTBBRFVBTmdBM0FEZ0FPUUE2QURzQVBBQTlBRDRBUHdCQUFFRUFRZ0JEQUVRQVJRQkdBRWNBU0FCSkFFb0FTd0JNQUUwQVRnQlBBRkFBVVFCU0FGTUFWQUJWQUZZQVZ3QllBRmtBV2dCYkFGd0FYUUJlQUY4QVlBQmhBR0lBWXdCa0FHVUFaZ0JuQUdnQWFRQnFBR3NBYkFCdEFHNEFid0J3QUhFQWNnQnpBSFFBZFFCMkFIY0FlQUI1QUhvQWV3QjhBSDBBZmdCL0FJQUFnUUNDQUlNQWhBQ0ZBSVlBaHdDSUFBQUJCZ0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQU1BQUFBQUFad0FBQUFBQUFBQUlnQUFPZ0FBQURvQUFBQUFBRUFBT2dCQUFEb0FRQUFBQUlBQU9nQ0FBRG9BZ0FBQUFNQUFPZ0RBQURvQXdBQUFBUUFBT2dFQUFEb0JBQUFBQVVBQU9nRkFBRG9CUUFBQUFZQUFPZ0dBQURvQmdBQUFBY0FBT2dIQUFEb0J3QUFBQWdBQU9nSUFBRG9DQUFBQUFrQUFPZ0pBQURvQ1FBQUFBb0FBT2dLQUFEb0NnQUFBQXNBQU9nTEFBRG9Dd0FBQUF3QUFPZ01BQURvREFBQUFBMEFBT2dOQUFEb0RRQUFBQTRBQU9nT0FBRG9EZ0FBQUE4QUFPZ1BBQURvRHdBQUFCQUFBT2dRQUFEb0VBQUFBQkVBQU9nUkFBRG9FUUFBQUJJQUFPZ1NBQURvRWdBQUFCTUFBT2dUQUFEb0V3QUFBQlFBQU9nVUFBRG9GQUFBQUJVQUFPZ1ZBQURvRlFBQUFCWUFBT2dXQUFEb0ZnQUFBQmNBQU9nWEFBRG9Gd0FBQUJnQUFPZ1lBQURvR0FBQUFCa0FBT2daQUFEb0dRQUFBQm9BQU9nYUFBRG9HZ0FBQUJzQUFPZ2JBQURvR3dBQUFCd0FBT2djQUFEb0hBQUFBQjBBQU9nZEFBRG9IUUFBQUI0QUFPZ2VBQURvSGdBQUFCOEFBT2dmQUFEb0h3QUFBQ0FBQU9nZ0FBRG9JQUFBQUNFQUFPZ2hBQURvSVFBQUFDSUFBT2dpQUFEb0lnQUFBQ01BQU9nakFBRG9Jd0FBQUNRQUFPZ2tBQURvSkFBQUFDVUFBT2dsQUFEb0pRQUFBQ1lBQU9nbUFBRG9KZ0FBQUNjQUFPZ25BQURvSndBQUFDZ0FBT2dvQUFEb0tBQUFBQ2tBQU9ncEFBRG9LUUFBQUNvQUFPZ3FBQURvS2dBQUFDc0FBT2dyQUFEb0t3QUFBQ3dBQU9nc0FBRG9MQUFBQUMwQUFPZ3RBQURvTFFBQUFDNEFBT2d1QUFEb0xnQUFBQzhBQU9ndkFBRG9Md0FBQURBQUFPZ3dBQURvTUFBQUFERUFBT2d4QUFEb01RQUFBRElBQU9neUFBRG9NZ0FBQURNQUFPZ3pBQURvTXdBQUFEUUFBT2cwQUFEb05BQUFBRFVBQU9nMUFBRG9OUUFBQURZQUFPZzJBQURvTmdBQUFEY0FBT2czQUFEb053QUFBRGdBQU9nNEFBRG9PQUFBQURrQUFPZzVBQURvT1FBQUFEb0FBT2c2QUFEb09nQUFBRHNBQU9nN0FBRG9Pd0FBQUR3QUFPZzhBQURvUEFBQUFEMEFBT2c5QUFEb1BRQUFBRDRBQU9nK0FBRG9QZ0FBQUQ4QUFPZy9BQURvUHdBQUFFQUFBT2hBQUFEb1FBQUFBRUVBQU9oQkFBRG9RUUFBQUVJQUFPaENBQURvUWdBQUFFTUFBT2hEQUFEb1F3QUFBRVFBQU9oRUFBRG9SQUFBQUVVQUFPaEZBQURvUlFBQUFFWUFBT2hHQUFEb1JnQUFBRWNBQU9oSEFBRG9Sd0FBQUVnQUFPaElBQURvU0FBQUFFa0FBT2hKQUFEb1NRQUFBRW9BQU9oS0FBRG9TZ0FBQUVzQUFPaExBQURvU3dBQUFFd0FBT2hNQUFEb1RBQUFBRTBBQU9oTkFBRG9UUUFBQUU0QUFPaE9BQURvVGdBQUFFOEFBT2hQQUFEb1R3QUFBRkFBQU9oUUFBRG9VQUFBQUZFQUFPaFJBQURvVVFBQUFGSUFBT2hTQUFEb1VnQUFBRk1BQU9oVEFBRG9Vd0FBQUZRQUFPaFVBQURvVkFBQUFGVUFBT2hWQUFEb1ZRQUFBRllBQU9oV0FBRG9WZ0FBQUZjQUFPaFhBQURvVndBQUFGZ0FBT2hZQUFEb1dBQUFBRmtBQU9oWkFBRG9XUUFBQUZvQUFPaGFBQURvV2dBQUFGc0FBT2hiQUFEb1d3QUFBRndBQU9oY0FBRG9YQUFBQUYwQUFPaGRBQURvWFFBQUFGNEFBT2hlQUFEb1hnQUFBRjhBQU9oZkFBRG9Yd0FBQUdBQUFPaGdBQURvWUFBQUFHRUFBT2hoQUFEb1lRQUFBR0lBQU9oaUFBRG9ZZ0FBQUdNQUFPaGpBQURvWXdBQUFHUUFBT2hrQUFEb1pBQUFBR1VBQU9obEFBRG9aUUFBQUdZQUFPaG1BQURvWmdBQUFHY0FBT2huQUFEb1p3QUFBR2dBQU9ob0FBRG9hQUFBQUdrQUFPaHBBQURvYVFBQUFHb0FBT2hxQUFEb2FnQUFBR3NBQU9ockFBRG9hd0FBQUd3QUFPaHNBQURvYkFBQUFHMEFBT2h0QUFEb2JRQUFBRzRBQU9odUFBRG9iZ0FBQUc4QUFPaHZBQURvYndBQUFIQUFBT2h3QUFEb2NBQUFBSEVBQU9oeEFBRG9jUUFBQUhJQUFPaHlBQURvY2dBQUFITUFBT2h6QUFEb2N3QUFBSFFBQU9oMEFBRG9kQUFBQUhVQUFPaDFBQURvZFFBQUFIWUFBT2gyQUFEb2RnQUFBSGNBQU9oM0FBRG9kd0FBQUhnQUFPaDRBQURvZUFBQUFIa0FBT2g1QUFEb2VRQUFBSG9BQU9oNkFBRG9lZ0FBQUhzQUFPaDdBQURvZXdBQUFId0FBT2g4QUFEb2ZBQUFBSDBBQU9oOUFBRG9mUUFBQUg0QUFPaCtBQURvZmdBQUFIOEFBT2gvQUFEb2Z3QUFBSUFBQU9pQUFBRG9nQUFBQUlFQUFPaUJBQURvZ1FBQUFJSUFBT2lDQUFEb2dnQUFBSU1BQU9pREFBRG9nd0FBQUlRQUFPaUVBQURvaEFBQUFJVUFBT2lGQUFEb2hRQUFBSVlBQU9pR0FBRG9oZ0FBQUljQUFPaUhBQURvaHdBQUFJZ0FBQUFEQUFBQUFBUENBZElBREFBWkFDWUFPa0EzQ0FRSEFnWUZBQUVCQUZRSUJBY0NCZ1VBQUFGWUJRTUNBUUFCVEJzYURnMEJBQ0VnR2lZYkpoUVREUmtPR1FjR0FBd0JEQWtGRkNzVE1oNEJGQTRCSWk0Qk5ENEJJVEllQVJRT0FTSXVBVFErQVNFeUhnRVVEZ0VpTGdFMFBnR2FIelVmSHpVK05SOGZOUUY1SHpVZkh6VStOUjhmTlFGNUlEVWZIelUvTlI4Zk5RSFJIelUrTlI4Zk5UNDFIeDgxUGpVZkh6VStOUjhmTlQ0MUh4ODFQalVmQUFBQUFRQUEvN2NEbXdNRkFDOEFORUF4QUFJQkFtOEFCUUFGY0FNQkFRQUFBVlFEQVFFQkFGZ0VCZ0lBQVFCTUFnQXFKeUlmR2hjU0R3b0hBQzhDTHdjRkZDc0JJVEkyUFFFMEppTWhJaVkxRVRRbUt3RWlCaFVSRkFZaklTSUdIUUVVRmpNaE1oWVZFUlFXT3dFeU5qVVJORFlDUVFFOURCRVJEUDdEQ1FvU0N6b0xFZ29KL3NNTUVSRU1BVDBKQ2hJTE9nc1NDZ0VrRWdzNkN4SUtDUUU5REJFUkRQN0RDUW9TQ3pvTEVnb0ovc01NRVJFTUFUMEpDZ0FBQUFBQkFBRC8rUU5YQXNFQUx3QW9RQ1VDQVFBQkFHOEZBUU1FQTNBQUFRUUVBVlFBQVFFRVdBQUVBUVJNRXhNZkV4TVdCZ1VhS3dFM05qUXZBU1lpRHdFR0lpOEJKaUlQQVFZVUh3RVdGQThCQmhRZkFSWXlQd0UyTWg4QkZqSS9BVFkwTHdFbU5BSlUrZ2tKSmdrWENmd0ZFQVg4Q1JjSktBa0ovQVVGL2drSktBa1hDZndGRUFiN0NSY0pLQWtKK2dVQmF2d0lGd2tvQ1FuOEJRWCtDUWtvQ1JjSit3WVFCZjRKRndrb0NRbjhCZ2I4Q1Frb0NSY0ovQVVRQUFVQUFBQUFBd3dDaWdBbkFEY0FSd0JYQUdjQWRFQnhZRkJBTUFRRENWaElPQ2dFQ0FRQ1J3QUJBQUlKQVFKZ0VBRUFEdzBMQXdrREFBbGdBQU1BQkFnREJHQU9EQW9EQ0FVSENGUUFCUUFHQndVR1lBNE1DZ01JQ0FkWUFBY0lCMHdDQUdSaVhGcFVVa3hLUkVJOE9qUXlMQ29pSHh3YUZ4VVVFZzhOREFvSEJRQW5BaWNSQlJRckFTRWlCaDBCSXlJR0ZCWTdBUlVqSWdZVUZqc0JGU01pQmhRV093RVZGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVVhGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlJjVUJpc0JJaVk5QVRRMk93RXlGaFVDemY2SUdTUVVFQmdZRUJRVUVCZ1lFQlFVRUJnWUVCUWxHQUY0R1NZbC9zY0ZCU2dFQmdZRUtBVUZVQVVGRkFRR0JnUVVCUVZrQlFVb0JBWUdCQ2dGQlZBRkJSUUVCZ1lFRkFVRkFvb2pGeFlYSVJoa0Z5RVlaQmNoR0JJWEp5a1pBZUFZSHY1bUJBWUdCTndGQlFVRjNBUUdCZ1RjQlFVRkJkd0VCZ1lFM0FVRkJRWGNCQVlHQk53RkJRVUZBQUlBQVArUUF5c0RMd0F4QUVFQVBrQTdBQUlCQUFFQ0FHMEdBUUFGQVFBRmF3QURBQUVDQXdGZ0FBVUVCQVZVQUFVRkJGZ0FCQVVFVEFJQVB6dzNOQ01oR2hjUkR3QXhBakVIQlJRckpTTWlKajBCTkRZM05qYzJOell1QVNjbUJnY0dCdzRCS3dFaUpqYytBVGMrQVJjZUFSY1dGeFlPQVFjT0FSMEJGQVlYRkFZckFTSW1QUUUwTmpzQk1oWVZBaUpnQ3hCSE9pUWFJZ1lGSjBjckh6c1lKZ1lDRHd4Z0RSRUJCakFuTG5OQVRvWW9LUU1ETVY0K0RSQVRFeEVNWUFzU0VndGdEQkYzRUFzZFBXUVVEUnNxTHl0Tk1BRUJGaFVqTWdrTUVnMDJZU2NyTFFFRFVVSkVUMEo1WEJjRkZRd2REQkhLQ3hJU0MyRUxFUkVMQUFBRUFBRC9rQU9iQXl3QUp3QTNBRWNBVndCalFHQU9BUUFBRFFJQURXQUFBUUFDREFFQ1lBQU1BQXNFREF0Z0FBTUFCQW9EQkdBQUNnQUpCUW9KWUFnQkJRQUdCd1VHWUFnQkJRVUhXQUFIQlFkTUFnQlZVa3hLUkVJOU9qVXlMQ29pSHh3YUZ4VVVFZzhOREFvSEJRQW5BaWNQQlJRckFTRWlCaDBCSXlJR0ZCWTdBUlVqSWdZVUZqc0JGU01pQmhRV093RVZGQll6SVRJMk5SRTBKZ01VQmlNaElpWTlBVFEyTXlFeUZoVTNGQVlqSVNJbVBRRTBOak1oTWhZVk54UUdJeUVpSmowQk5EWXpJVElXRlFOTy9iOGZMamtaSVNFWk9Ua1pJU0VaT1RrWklTRVpPUzRmQWtFZ0xTMm1Dd24rOHdnTEN3Z0JEUWtMSmdzSS9xWUpDd3NKQVZvSUN5Y0xDZjVaQ0FzTENBR25DUXNETEMwZ09pRXlJSm9oTWlHWklUSWhPaDh1TFNBREFpQXQvWElKQ2dvSkpna0tDZ2wwQ1FzTENTWUpDZ29KbWdrS0NnbHpDUXNMQ1FBQUFBQURBQUFBQUFPYkFyZ0FEd0FmQUM4QVFVQStBQUVHQVFBREFRQmdBQU1IQVFJRkF3SmdBQVVFQkFWVUFBVUZCRmdJQVFRRkJFd2lJQklRQWdBcUp5QXZJaThhRnhBZkVoOEtCd0FQQWc4SkJSUXJBU0VpSmowQk5EWXpJVElXSFFFVUJnTWhJaVk5QVRRMk15RXlGaDBCRkFZRElTSW1QUUUwTmpNaE1oWWRBUlFHQTM3ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSRVFKRkVRdzVEQkVSRERrTUVmN2hFZ3M2Q2hFU0N6b0tFZjdlRVF3NURCRVJERGtNRVFBQ0FBRC9rQVBDQXkwQUh3QkVBRWhBUlFBRUJnUnZBQVlGQm04SUFRVUFCVzhDQ1FJQUJ3QnZBQWNCQjI4QUFRTURBVlFBQVFFRFdBQURBUU5NQWdBL1BqWXpMaTBxS1NJaEdoY1NEd29IQUI4Q0h3b0ZGQ3NsSXlJR0hRRVVCaU1oSWlZOUFUUW1Ld0VpQmhVUkZCWXpJVEkyTlJFMEpnRW1JZ2NCQmhRZkFSWXlQd0UyTWhZVkVSUVdPd0V5TmpVUk5EWWZBUll5UHdFMk5DY0RwVG9MRWhFTS9ZWU1FUklMT2dzUkxSOERBaUF0RXY1WENCZ0kvdndJQ0NrSUdBaHNCUkVNRUFzNkN4UVdDbXdKRndrb0NBaitFZ3ZBREJFUkRNQUxFaElML3Z3Z0xTNGZBUVFMRWdJbUNBaisvQWdZQ0NnSkNXc0dDd2orYUFzU0V3b0JsZzBKQ1dzSkNTZ0pGd2dBQXdBQS81QUR3Z01zQUJRQUtRQS9BRVJBUVFBRUF3VURCQVZ0QUFVQ0F3VUNhd1lCQUFBREJBQURZQWNCQWdFQkFsUUhBUUlDQVZnQUFRSUJUQllWQVFBNk9USXZJQjhWS1JZcEN3b0FGQUVVQ0FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ01pSnlZbkpqUTNOamMyTWhjV0Z4WVVCd1lIQmdNbVBRRTBKaXNCSWdZZEFSUWZBUll5UHdFMk5DY0I5SDFyYVQwL1B6MXBhL3BzYUQ0L1B6NW9iSDFkVVU0dkx5OHZUbEc2VVU0dkx5OHZUbEVjQnhJTE9nc1NDSTRKRndrb0NRa0RMRDgrYUd6NmJHZytQejgrYUd6NmJHZytQL3pZTHk5T1VicFJUaTh2THk5T1VicFJUaTh2QVZZSURia0xFaElMNlFrTWpna0pLQWtYQ1FBQUF3QUEvL0lENkFMTEFDZ0FUd0I3QUMxQUtqb0dBZ1FBQVVjQ0FRQUVBRzhBQkFFRWJ3TUJBUVVCYndBRkJXWjBjVjVkU2tjM05SOGRLUVlGRlNzQkpqVTBOelkzSmljbUl5SUhEZ0VWRkJjV0ZSUUhCZ2NHQndZSEhnRTdBVEkyTnpZM05qYytBU1VtSnlZMU5EYzJOVFFtSnlZaklnY0dCeFlYRmhVVUJ3WVdGeFlYSGdFN0FUSTJOVFluSmdVbUp5WTFORGMrQVRVMEppY21JZ2NPQVJVVUZoY1dGUlFIQmdjR0J3WUhGQll6SVRJMk5TWW5KaWNtQVRJcEdoa3NFQnNkSkNrZkhTQXJIQWtOSVQwZ0tRRUNKUjVBQnc0RUZTa2NMZzBHQWlvaERBb2NLeDhkSHlva0hSd1JMQmthS1FjSERHUWtCQTRIUUI0bEFTY2cvdFVrRGd3aEZ4a2lJQ05hSXlBaUdSY2hDdzRsU0NBdkFTNGhBWkFoTGdFV0V5VVpBVGc5VFVFM05DSWJEeEVWRTBRb1FpVWVHQkVNRVE0YkhTVXJJU29JQnlZZkZoZ0dHakVQRHd3U0hCb25RQ2hFRXhVUkR4c2lORGRCVFQwTUdRWXdRd2NJS2lFckpSMXhFQkVPRWgwZkZqc2lMRW9WRnhjVlNpd2lPeFlqR1JRTUVSQWZHU1F2SXpJeUl5QWFGeFlPQUFBQ0FBRC90d1BDQXdVQUZ3QW5BRHhBT1FBQkF3RnZCUUVBQkFJRUFBSnRBQUlDYmdZQkF3UUVBMVFHQVFNREJGZ0FCQU1FVEJrWUFnQWhIaGduR1NjU0R3b0hBQmNDRndjRkZDc0JJU0ltTHdFdUFTc0JJZ1lWRVJRV015RXlOalVSTkNZbklTSUdId0VXTXlFeUZ4WTJOVFFtQTNYK1N4UWtDME1MSkJXRElDd3NJQU1DSUMwdElQNHdCUVVESGdZTUFhY2lHUVlNTFFKRkZSRjBFaFF0SVAxTUlDMHRJQUgwSUMyYUNRVTBDd3dEQ0FjZ0xRQUFCQUFBLzhvRG13THlBQThBSHdBdkFEOEFVMEJRQ0FFQUFBRUNBQUZnQ1FFQ0FBTUdBZ05nQ3dFR0FBY0VCZ2RnQ2dFRUJRVUVWQW9CQkFRRldBQUZCQVZNTWpBaUlCSVFBZ0E2TnpBL01qOHFKeUF2SWk4YUZ4QWZFaDhLQndBUEFnOE1CUlFyQVNFaUJoMEJGQll6SVRJMlBRRTBKZ2NoSWdZZEFSUVdNeUV5TmowQk5DWURJU0lHSFFFVUZqTWhNalk5QVRRbUp5RWlCaDBCRkJZeklUSTJQUUUwSmdOKy9Pd01FUkVNQXhRTUVSRU0vWVlNRVJFTUFub01FUkVNL1lZTUVSRU1Bbm9NRVJFTS9Pd01FUkVNQXhRTUVSRUM4aElMT2dzUkVRczZDeExuRVF3NURCRVJERGtNRWY0ekVnczZDeElTQ3pvTEV1WVJDem9NRVJFTU9nc1JBQUFBQndBQUFBQURJQUtLQUE4QUh3QXZBRDhBVHdCZkFHOEFqa0NMYldVQ0RReE1SRHcwTENRZEZRMEZDZ0FCWFZVQ0N3b0RSd2dHQkE4Q0JRRU5BQTBCQUcwU0NSRUhFQVVERGdnQUNnMEFDbXNVQVF3QURRRU1EV0FUQVFvTEN3cFVFd0VLQ2d0WUFBc0tDMHhoWUZGUVFFQXdNQ0FnRVJBQkFHbG5ZRzloYjFsWFVGOVJYMEJQUUU1SVJqQS9NRDQ0TmlBdklDNG9KaGtYRUI4Ukh3a0hBQThCRHhVRkZDczNNekkyTlJFMEppc0JJZ1lWRVJRV0FTTWlCaFVSRkJZN0FUSTJOUkUwSmdFeU5qVVJOQ1lyQVNJR0ZSRVVGanNCTWpZMUVUUW1Ld0VpQmhVUkZCWXpJekkyTlJFMEppc0JJZ1lWRVJRV013VWhJZ1lkQVJRV015RXlOajBCTkNZRElTSUdIUUVVRmpNaE1qWTlBVFFtM0RJSURBd0lNZ2dNREFJNE1nZ01EQWd5Q0F3TS92NElEQXdJUEFnTURBaTBDQXdNQ0JRSURBd0k4QWdNREFnVUNBd01DQUdhL2RBSURBd0lBakFJREF3SS9kQUlEQXdJQWpBSURBeStEQWdCTmdnTURBait5Z2dNQVY0TUNQN0tDQXdNQ0FFMkNBeitvZ3dJQVRZSURBd0kvc29JREF3SUFUWUlEQXdJL3NvSURBd0lBVFlJREF3SS9zb0lERHdNQ0JRSURBd0lGQWdNQWdnTUNCUUlEQXdJRkFnTUFBQUFBQU1BQUFBQUF5RUNkd0FjQUN3QVZnQlZRRkl4QVFRR0pSMENBZ01DUndBRkJ3WUhCUVp0QUFZRUJ3WUVhd2dCQUFBSEJRQUhZQUFFQUFNQ0JBTmdBQUlCQVFKVUFBSUNBVmdBQVFJQlRBRUFVVTlKUmtGQU5UTXBKeUVmRkJJQUhBRWNDUVVVS3dFaUJ3WUhCaFVVRnhZUEFRWVdQd0UyRnhZek1qYzJOelkwSmljbUF4UUdLd0VpSmowQk5EWTdBVElXRlRjT0FSMEJGQVlyQVNJbVBRRTBQZ0UzTmk0Q0J3WUhEZ0VyQVNJbU56WTNQZ0VYSGdJWEZnWUI5RkpHUXlncEpnVURIQVFTREZnSkNFaFdVa1pES0NsU1EwWTBEQWdVQ0F3TUNCUUlEQWdEQlF3SUZBZ01HeW9IRUFVaUxoUU5Bd0lLQnhVSkRBRUlHaEV0R1I4MUlBRUNMUUoySmlWQVFVeElRUWdJV1F3UkJCOERCU29tSlVCQm1JRWxKdjQrQ0F3TUNCUUlEQXdJYXdFRkJCQUlEUTBJRUJZbER3c1ZMaDhCRWcwUEJ3a1BDU1laRVJJQkFTQTFIeWRBQUFQLy92KzNBK3NEQ1FBT0FCY0FKd0E0UURVZ0FRTUVBVWNBQkFNRWJ3QURBQUlCQXdKZ0JRRUJBQUFCVkFVQkFRRUFXQUFBQVFCTUVBOGtJaDBhRkJNUEZ4QVhPUVlGRlNzbEFTNEJCZ2NCQmg0Qk15RXlQZ0VsSWlZME5qSVdGQVkzRkFZckFTSW1QUUUwTmpzQk1oWVZBOTMrUndzbEpRditTQTBHSUJjRGNCZ2hCdjRKR1NFaE1pRWhJUXNJVFFrTEN3bE5DQXNoQXNjVERnNFQvVGtXTWlJaU1rWWhNaUFoTUNLdENRb0tDZm9JQ3dzSUFBQUNBQUQva0FQQ0F5MEFIUUFxQUNSQUlRUUJBZ01DYndBREFRTnZBQUVBQVc4QUFBQm1IeDRsSkI0cUh5b3JNd1VGRmlzbEZSUUdJeUVpSmowQk5EYzJQd0UyRnhZek1qWTNOaDhCRmhjV0Z4WUJNaDRCRkE0QklpNEJORDRCQThJM0p2MGVKVGRRT1hRTUVBMU1XU3RWSmcwUERFMHVRQ0FuL2pJK2FqMDlhbnhxUFQxcUZ5b2xPRGNtS2t0QUxUTUdCUWN5R2hnSEJRWWhHeVFuTHdMZ1JIV0tkVVJFZFlwMVJBQUFBUUFBLyt3QzJ3TE1BQXdBQ3JjQUFBQm1Fd0VGRlNzbEVUUStBUmNCRmhRSEFRWW1BUTBPRkFrQmx3d00vbWtPSFFvQ3FBb09BUWYrc3dnZkNmNnZDZzRBQUFBQ0FBRC9rQVBDQXpBQUl3QXZBRHRBT0FBQkFBRnZBZ1lDQUFBREJBQURZQWNCQkFVRkJGUUhBUVFFQlZnQUJRUUZUQ1lrQWdBcktpUXZKaThlR3hZVERBb0FJd0lqQ0FVVUt5VWpJaVk5QVRRbkppY21Cd1lIRGdFZEFSUUdLd0VpQmgwQkZCWXpJVEkyUFFFMEpnVWpJZ1lYSGdFeU5qYzJKZ04xQ2hzb0xDeEpTMWRSUlVKTkp4d0tIeTBSQ3dOaUN4SXQvcjI4Q1F3Q0IwQlVRQWdCRE5jb0hOMVdTVWNvS1FNRUxTdVBVOVVjSmk0Z0hRc1FFUXdkSHkzVER3Z29OVFluQ1E0QUFBRUFBUCtRQThRRExBQWlBQ3hBS1FBRkFBVnZCQVlDQUFJQWJ3QUNBUUp2QXdFQkFXWUJBQjBjRlJRUURnc0tCd1FBSWdFaUJ3VVVLd0VqRVJRR0t3RWlKalVSSXhFVUJpc0JJaVkxRVNNaUppY21Od0UyTWhjQkZnY0dBNjVnQ2duQUNRdm1Dd25BQ0F0Z0Jnc0JCQWdCdXdVU0JBRzZDQVFEQVV2K1dRa0xDd2tCUi82NUNRc0xDUUduQmdVTUNnRzZCZ2IrUmdnT0N3QUFBQVFBQVArUUE4SURMQUFWQUN3QVF3QmFBSk5BRUZKSkRnVUVBQUU3TWlRYkJBTUNBa2RMc0FsUVdFQVpCZ0VCQUFGdkJ3Z0NBQUlBYndVSkFnSURBbThFQVFNRFpodExzQXBRV0VBZEFBWUJCbThBQVFBQmJ3Y0lBZ0FDQUc4RkNRSUNBd0p2QkFFREEyWWJRQmtHQVFFQUFXOEhDQUlBQWdCdkJRa0NBZ01DYndRQkF3Tm1XVmxBR3hnV0FnQlpWa3hMUWo4MU5DSWhGaXdZTEF3TEFCVUNGUW9GRkNzQklUSTJMd0UzTmpRdkFTWUdEd0VuSmdZVkVSUVdCeUVpQmg4QkJ3WVVId0VXTWo4QkZ4NEJOalVSTkNZWEVSUVdQd0VYRmpJL0FUWW1Md0UzUGdFbUl5RWlCaWNSTkNZUEFTY21JZzhCQmhRZkFRY09BUll6SVRJMkFqa0JLQThHQzE2dENBaEhDQlFKcldJTEdSU0EvdGdQQmd0ZXJRY0hSd2dVQ2E5aUJoRU1GV0laQzJDdkNCWUhSd1lCQjYxZUNBSUtDZjdYQ2hKTkdndGdyd2NXQ0VjSEI2OWVDQVFLQ2dFbUNoY0JoUmtMWUs4SUZnZEhCZ0VIclY0TUJ3Nysxd29TVFJvTFlLOEhGZ2hIQndldlhnZ0VDZ29CSmdvWEgvN1lEd1lMWHEwSEIwY0lGQW10WWdjU0RCV0FBU2dQQmd0ZXJRZ0lSd2NWQ2E5aUJoQU1GQUFEQUFEL3BBUEFBeG9BTEFBNUFGMEFsa0FPSEFFSENEb0JCQWMvQVFVRUEwZExzQkZRV0VBdUFBQUNBRzhKQVFjSUJBZ0haUVlCQkFVRkJHTUtBUUlBQ0FjQ0NHQUFCUUVCQlZRQUJRVUJXUU1CQVFVQlRSdEFNQUFBQWdCdkNRRUhDQVFJQndSdEJnRUVCUWdFQldzS0FRSUFDQWNDQ0dBQUJRRUJCVlFBQlFVQldRTUJBUVVCVFZsQUdpNHRXMWxXVTFCT1NVZEVRVDQ4TkRNdE9TNDVLQ1VkQ3dVVkt5VTBOamMyTnpZM05qYytBUzRCRGdFSEJoY1dGeFlYRmdjR0J3WUhOZ2NHQndZSEJoNEJNeUV5TmljdUFRRWlEZ0VVSGdFeVBnRTBMZ0VYRkFZckFSVVVCaXNCSWlZOUFTTWlKajBCTkRZN0FUVTBOanNCTWhZZEFUTXlGaFVCcFJnVURoUUdIQlFMSkEwdFpvQmhGQmdORFRJWkRBNEtCaEVORlFjclNpYzVDd2NaT2lZQlJ3c0xCeVFuQVRRK2F6NCthM3hyUGo1ck53d0pPQXdKSmdrSk93a0pDUWs3Q1FrbUNRdzRDUXlMSmxRakdSY0lIUllRTll0MVFnTklPMFJFU1M4WUdpQWNFUThMQ3dRVklSNHRPeVJGS3hZSUttZ0JIVDVxZkdvL1BtdDhhajc2Q0FzNkNBc0tDVG9LQ1NjSkNqb0pDZ3NJT2dzSUFBQUpBQUQvdHdPYkF3VUFEd0FmQUM4QVB3QlBBRjhBYndCL0FJOEFpRUNGR0F3VkJoSUZBQTBIQWdFRUFBRmdHaEFYQ2hRRkJCRUxBZ1VDQkFWZ0dRNFdDQk1GQWdNREFsUVpEaFlJRXdVQ0FnTllEd2tDQXdJRFRJS0FjbkJpWUZKUVFrQXlNQ0lnRWhBQ0FJcUhnSStDajNwM2NIOXlmMnBuWUc5aWIxcFhVRjlTWDBwSFFFOUNUem8zTUQ4eVB5b25JQzhpTHhvWEVCOFNId29IQUE4Q0R4c0ZGQ3NUSXlJR0hRRVVGanNCTWpZOUFUUW1BeU1pQmgwQkZCWTdBVEkyUFFFMEpnTWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQXlNaUJoMEJGQlk3QVRJMlBRRTBKZ01qSWdZZEFSUVdPd0V5TmowQk5DWUJJeUlHSFFFVUZqc0JNalk5QVRRbUF5TWlCaDBCRkJZN0FUSTJQUUUwSmdNaklnWWRBUlFXT3dFeU5qMEJOQ2I2Y3hraElSbHpHU0VoR1hNWklTRVpjeGtoSVJsekdTRWhHWE1aSVNFQkczUVlJU0VZZEJnaElSaDBHQ0VoR0hRWUlTRVlkQmdoSVJoMEdDRWhBUnR6R1NFaEdYTVpJU0VaY3hraElSbHpHU0VoR1hNWklTRVpjeGtoSVFNRklSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFFMElSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFFMElSbHpHU0VoR1hNWklmMlpJUmx6R1NFaEdYTVpJUUV6SVJoMEdDRWhHSFFZSVFBQUFBVUFBUCtRQTVzRExBQVJBQ0VBTVFCQkFGRUFZRUJkT2pJQ0FnZ0JSd0FDQ0FjSUFnZHRDd0VBQUFFREFBRmdBQU1BQmdVREJtQUFCUUFLQ1FVS1lBQUpBQWdDQ1FoZ0FBY0VCQWRVQUFjSEJGZ0FCQWNFVEFJQVQweEhSRDg4TnpRdkxDY2tIeHdYRkF3S0J3VUFFUUlSREFVVUt3RWhJZ1lkQVNFeUZoVVJNekkyTlJFMEpnTTBKaU1oSWdZVkVSUVdNeUV5TmpVQkZBWXJBU0ltUFFFME5qc0JNaFlWRXhRR0l5RWlKajBCTkRZeklUSVdGVGNVQmlNaElpWTlBVFEyTXlFeUZoVURUdjRNSHk0QnppQXRKaUF0TFpNdElQNE1JQzB1SHdIMElDMytwZ3NKbVFrTEN3bVpDUXVhQ3duK3pRa0xDd2tCTXdrTFRBb0ovb0FKQ3dzSkFZQUpDZ01zTFNBbkxTRDk1aTBnQWtFZ0xmN3lJQzB0SVAyL0h5NHVId0c3Q1FvS0NTWUpDZ29KL3FZSUN3c0lKd2dMQ3doekNRb0tDU1lKQ3dzSkFBTUFBUC9kQThJQzN3QVBBQ01BTEFCTFFFZ0FBd1lGQmdNRmJRZ0JCUVFHQlFSckFBUUNCZ1FDYXdBQUFBWURBQVpnQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNSlNRU0VDa29KQ3dsTEI4ZUZ4WVFJeElqTlRJSkJSWXJBVFFtSXlFaUJoVVJGQll6SVRJMk5TY2hJaVkzRXpZeUh3RWVBVDhCTmpJZkFSWUdBeUltTkRZeUZoUUdBOEl0SVB6K0h5MHRId01DSUMzSS9kSVJFUW1wQmhVR1pnVVdCVk1HRlFhWUNBMUNJQzB0UUMwdEFwSWdMUzBnL1pnZ0xTNGZUUjRQQVNZS0NxOEpBZ2wzQ1FueURoa0JXaTFBTFMxQUxRQUFBQUFEQUFEL2tBUENBeXdBQWdBeUFGY0FYa0JiRUFFQkFnRkhBQVlEQ0FNR0NHMEFDQWNEQ0FkckNnRUhBZ01IQW1zQUNRRUpjQXNCQUFBREJnQURZQVFCQWdFQkFsUUVBUUlDQVZnRkFRRUNBVXdGQTFkV1RrdEdSVUpCT2prdEtpVWlIUm9WRWcwS0F6SUZNZ3dGRkNzM05SVUJJU0lHRlJFVUZqc0JNalk5QVRRbUt3RWlKalVSTkRZeklUSVdGUkVVQmlzQklnWWRBUlFXT3dFeU5qVVJOQ1lETnpZMEx3RW1JZzhCQmhRZkFSWXlQd0UyTWhZVkVSUVdPd0V5TmpVUk5EWWZBUll5bWdMYi9QNGZMUzBmNXdrS0NnbWpEQkVSREFKNkRCRVJES01KQ2dvSjV5QXRMY1FwQ0FqekNCZ0k4QWtKS0FnWUNGa0ZFUXdRQ3pvTEZCWUtXUWdhc1F3WUFvY3RJUDFMSUMwTENVMElDeEVNQWVBTUVSRU0vaUFNRVFzSVRRa0xMaDhDdFNBdC9ZMG9DUmNJOHdnSThRZ1hDU2dKQ1ZnR0N3aitwd3NTRWdzQldRMEpDVm9IQUFBREFBRC9rZ09sQXlvQURBQllBR1VBZEVCeEtSd0NDUUlPQVFFQVQwSUNCd2dEUndRQkFnTUpBd0lKYlFvQkFBa0JDUUFCYlFBQkNBa0JDR3NBQndnRkNBY0ZiUUFGQmdnRkJtc0FBd0FKQUFNSllBc0JDQWNHQ0ZRTEFRZ0lCbGdBQmdnR1RGcFpBUUJnWDFsbFdtVlRVVXBIUUQ0dEt5UWhHUmdIQmdBTUFRd01CUlFyQVNJT0FSUWVBVEkrQVRRdUFRRW5OalFuTno0Qkx3RXVBU01pRHdFbUx3RXVBU3NCSWdZUEFRWUhKeVlqSWdZUEFRWVdId0VHRkJjSERnRWZBUjRCTXpJL0FSWWZBUjRCT3dFeU5qOEJOamNYRmpNeU5qOEJOaVlGSWk0Qk5ENEJNaDRCRkE0QkFmWWxQaVFrUGtvK0pDUStBVzlIQlFWSEVna01Id2dlRVFZUFdUSS9FQVFqR0Q0WUl3UVFPamxZRUFZUkhnZ2ZEQWdUUndVRlJ4SUpEQjhJSGhFTkNWZ3lQeEFGSWhnK0Z5UUVFRVF6VXc0SkVSNElIUTBJL2xvNllUazVZWFJoT1RsaEFlTWtQa285SkNROVNqNGsvd0E4R2s0YVBBOHVGRFlPRUFNaExSUmJGaG9hRmxrU0x5QUVFQTQyRkM4T1BDTThJendQTGhRMkRoQURJUzBVWFJjZEh4ZGRGekFoQkJFT01nOHRTemxnZEdFNU9XRjBZRGtBQUFBQUF3QUEvNDhEd2dNc0FDTUFSQUJSQUdoQVpTVUJDUVE5QVFjSkFrY0FBUW9BQ2dFQWJRQUVBd2tEQkFsdEFBZ0hDSEFBQmdBS0FRWUtZQUlMQWdBRkFRTUVBQU5nREFFSkJ3Y0pWQXdCQ1FrSFdBQUhDUWRNUmtVQkFFeExSVkZHVVVBL09qZ3ZMaDRjR0JZVEVRc0tCd1FBSXdFakRRVVVLd0VqTlRRbUt3RWlCaDBCSXlJR0hRRVVGanNCRlJRV093RXlOajBCTXpJMlBRRTBKZ0VuTmpjMk5UUW5KaWNtSWdjR0J3WVVGeFlYRmpNeU56WTNGeFl5UHdFK0FTVWlMZ0UwUGdFeUhnRVVEZ0VDVkhNTENFMEpDM01JQ3dzSWN3c0pUUWdMY3drS0NnRmQzU1FURkRVelYxclFXbGN6TkRVelYxbG9Qanc0TWQwSkZ3a29DUUg5NVVsN1NVbDdrbnRKU1hzQjVYTUpDZ29KY3dzSlRBa0xjd2tLQ2dsekN3bE1DUXYrQ05zeU9EcythRnBYTXpVMU0xZGEwRnBYTXpVVUV5VGRDQWdvQ1JtOFNYdVNlMGxKZTVKN1NRQUFDQUFBQUFBRERBS0tBQThBTHdBL0FFOEFYd0J2QUg4QWp3Q1FRSTBkRFFJQUFvaUFXRkFFQ2d0NGNFaEFCQWdKYUdBNE1BUUdCd1JIQkJNQ0FnRUFBUUlBYlFBQkVnRUFBd0VBWUFBREVRRUxDZ01MWUJBQkNnOEJDUWdLQ1dBT0FRZ05BUWNHQ0FkZ0RBRUdCUVVHVkF3QkJnWUZXQUFGQmdWTUVSQUJBSXlLaElKOGVuUnliR3BrWWx4YVZGSk1Ta1JDUERvME1pb25JaDhhRnhBdkVTOEtCd0FQQVE4VUJSUXJBVE15TmowQk5DWXJBU0lHSFFFVUZpVWpJZ1lkQVJRR0t3RWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKajBCTkRZN0FUSVdGVFVVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkJSUUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZBWWJjQ0F3akdZd1pJd3dCVWhRRUJpOGgzQ0V2QlFVVUdTTWpHUUc0R1NNai9wME1DQlFJREF3SUZBZ01EQWdVQ0F3TUNCUUlEQXdJRkFnTURBZ1VDQXdCR0F3SXlBZ01EQWpJQ0F3TUNNZ0lEQXdJeUFnTURBaklDQXdNQ01nSURBSVNEQWdvR1NNakdTZ0lERVlGQlNnaEx5OGhLQVVGSXhuK1Voa2pJeGtCcmhrai9sSUlEQXdJRkFnTURBaFFDQXdNQ0JRSURBd0lVQWdNREFnVUNBd01DTndJREF3SUZBZ01EQWhRQ0F3TUNCUUlEQXdJVUFnTURBZ1VDQXdNQ0FBQUFBQUJBQUQvb3dNOUF4Z0FKUUFoUUI0QUF3RURid1VCQVFJQmJ3UUJBZ0FDYndBQUFHWVRGVFVURnhVR0JSb3JOd1lVRndFV01qY0JOalF2QVNZaUR3RUdJaVkxRVRRbUt3RWlCaFVSRkFZaUx3RW1JZ2U1REF3QklBd2ZDd0VpREF3MURCOExXd2NVRHhjUFRSQVhEeFFIV3dzZkMvNExIZ3YrNVFzTEFSc0xIZ3MwQ3d0WkJ3NExBZ2NQRnhnTy9ma0xEZ2RaQ3dzQUFBUUFBUCtjQTZVRExRQXhBRG9BUXdCWEFEbEFOaVFmRHdNQ0FBRkhBQVVBQlc4QUFBSUFid1FCQWdFQ2J3Y0RCZ01CQVdZOE96TXlSa1ZBUHp0RFBFTTNOakk2TXpvaUlRZ0ZGQ3NsSmdjQkxnRVBBUTRCRnhNV0ZBOEJKZ2NPQVFjR0ZoY1dOejRCTnpZbUp6YzJNaDhCRGdFWEhnRVhGamMrQVNjdUFRVWlKalEyTWhZVUJpRWlKalEyTWhZT0FRTVdNajhCTmlZbk53Y21Md0VtQmc4QkJoUVhBdzh0THY1WEJCRUdEeGtIRThzR0JtMHFNVFZNQndjMU1ETTVNMDRMQnd3U1VRZ2VDRkVTREFjS1RqUTVNekExQncxTy9iWVpJU0V5SVNFQjJ4a2hJVEloQVNLcEJoTUdtaEFDRUFJQ0FnNE5CaEFGcVFZRzlnc1JBalFHQXdVTUV6NGEvdklIRkFlUkVBb0xVRFU0WUJnYUNnaEpNeU5CR1d3TEMyd2NRQ0V6U1FnS0doaGdPRGRQMXlFeUlTRXlJU0V5SVNFeUlRSFNCd2ZLRlRRVkFnSUVDd29FQWdiaEJ4UUlBQVVBQVArUUE4SURMQUFqQURvQVNnQmFBR29BZTBCNEFBWU5EQTBHREcwQUFRd0pEQUVKYlFBSkNBd0pDR3NBQkFNRWNBQUhBQXNLQnd0Z0FBb0FEdzRLRDJBQURnQU5CZzROWUFBTUFBZ0FEQWhnQWhBQ0FBTURBRlFDRUFJQUFBTllCUUVEQUFOTUFRQm9aVjlkV0ZWUFRVZEZQejA2T0RVekxpc29KaDRjR1JZVEVRd0tCd1FBSXdFakVRVVVLeVVqTlRRbUt3RWlCaDBCSXlJR0hRRVVGanNCRlJRV093RXlOajBCTXpJMlBRRTBKaVUwTmpzQkVUUW1JeUVpQmhVUkZCWXpJVFUwTmpzQkFSUUdLd0VpSmowQk5EWTdBVElXRlJNVUJpTWhJaVk5QVRRMk15RXlGaFUzRkFZaklTSW1QUUUwTmpNaE1oWVZBNlZYRVF3NURCRlhDeElTQzFjUkREa01FVmNMRWhMKzNoRU1NQzBnL2VVZkxTMGZBYWdSQzFmK3Bnc0lkQWdMQ3doMENBdm5Dd24rcGdnTEN3Z0JXZ2tMVEFvSi9sa0lDd3NJQWFjSkNuZFhDeElTQzFjUkREa01FVmNMRWhJTFZ4RU1PUXdScEFzU0FhY2dMUzBnL2VVZ0xUQU1FUUc3Q1FzTENTWUpDZ29KL3FZSkNnb0pKZ2tMQ3dsMENRc0xDU1lKQ2dvSkFBQUFBZ0FBLzdjRHlBTUZBQlVBSmdCaFM3QUtVRmhBSXdBQkFBQUJZd1VCQXdJRUFnTUViUUFFQkc0QUFBSUNBRlFBQUFBQ1Z3QUNBQUpMRzBBaUFBRUFBVzhGQVFNQ0JBSURCRzBBQkFSdUFBQUNBZ0JVQUFBQUFsY0FBZ0FDUzFsQURoZ1dJUjRXSmhnbUV6a3lCZ1VYS3dFMEppTWhJaWNtTHdNbUp5WXJBU0lHSFFFaEZ5RWlEZ0VYRXg0Qk15RXlOamNUTmlZRFRpMGcvdVlRRVEwTUNqQUlDZ3dSRkVrZ0xRSzBPUHpjRXg0TkJHNEdJQlFDU2hVaEJHNEZKUUl5SUMwS0J3c0tPZ29MQndvdElLMU5GU0lTL213VEZ4Y1RBWlFjTFFBQUFBQUZBQUQvdHdQQ0F3VUFEd0FmQUM4QVB3QlBBRjVBV3dzQ0NnTUFBQU1FQUFOZ0RBRUVBQVVHQkFWZ0RRRUdBQWNJQmdkZ0RnRUlBUUVJVkE0QkNBZ0JXQWtCQVFnQlRFSkFNakFpSUJJUUFnQktSMEJQUWs4Nk56QS9NajhxSnlBdklpOGFGeEFmRWg4S0J3QVBBZzhQQlJRckFTRWlCaFVSRkJZeklUSTJOUkUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lISXlJR0hRRVVGanNCTWpZOUFUUW1CeU1pQmgwQkZCWTdBVEkyUFFFMEpnY2pJZ1lkQVJRV093RXlOajBCTkNZRHBmMzVEQkVSREFJSEN4SVMvV2ZVQ3hFUkM5UUxFaElMMUFzUkVRdlVDeElTQzlRTEVSRUwxQXNTRWd2VUN4RVJDOVFMRWhJREJSRU0vT3dNRVJFTUF4UU1FUkVNWUFzU0VndGdEQkhuRVF0aEN4RVJDMkVMRWVZU0MyQU1FUkVNWUFzUzV4SUxZQXdSRVF4Z0N4SUFBQVFBQVArUEE4SURMQUFKQUJNQU5BQkJBRWhBUlJVQkJ3QXRBUVVIQWtjQUJnVUdjQUFFQUFnQkJBaGdBZ0VCQXdFQUJ3RUFZQWtCQndVRkIxUUpBUWNIQlZnQUJRY0ZURFkxUERzMVFUWkJGU2tiSmhFbElBb0ZHeXNCTXpJMlBRRTBKaXNCTVNNaUJoMEJGQlk3QVFFbk5qYzJOVFFuSmljbUlnY0dCd1lVRnhZWEZqTXlOelkzRnhZeVB3RStBU1VpTGdFMFBnRXlIZ0VVRGdFQmJlY0pDZ29KNTNNSUN3c0ljd0pOM1NRVEZEVXpWMXJRV2xjek5EVXpWMWxvUGp3NE1kMEpGd2tvQ1FIOTVVbDdTVWw3a250SlNYc0JjUXNKVEFrTEN3bE1DUXYrZXQweU9EcythRnBYTXpVMU0xZGEwRnBYTXpVVUV5VGRDQWdvQ1JtOFNYdVNlMGxKZTVKN1NRQUVBQUFBQUFNTkFuZ0FFZ0FpQURJQU93QmFRRmNQQVFNQlJnQUZCd1lIQlFadENRRUdBd2NHQTJzQUF3UUhBd1JyQUFRQ0J3UUNhd2dCQUFBSEJRQUhZQUFDQVFFQ1ZBQUNBZ0ZZQUFFQ0FVdzBNd0lBT0Rjek96UTdMaTBtSlI0ZEZoVUtDUUFTQWhJS0JSUXJBU01tQndFR0ZCOEJGakkzQVQ0Qkp6VTBKZ01IQmlJdkFTWTBQd0UyTWg4QkZoUTNCd1lpTHdFbU5EOEJOaklmQVJZVU55SW1ORFl5RmhRR0F0RGJFeEgrOUJFUjFCRXlFZ0VQQ0FnQkkvRU9CaEFHaUFZR0RnWVFCb2dHU2c0R0VBYUlCZ1lPQmhBR2lBWXlGUjBkS2gwZEFuWUJFZjd6RVRJUzFCRVJBUkFJRmdyU0dTUCtTQTRHQm9nR0VBWU9CZ2FJQmhCS0RnWUdpQVlRQmc0R0JvZ0dFS1FkS2gwZEtoMEFDQUFBQUFBRElBS0tBQllBSmdBMkFFWUFWZ0JtQUhZQWhnQ1VRSkVGQVFFQVB6Y3ZKd1FGQmw5WFQwY0VDUW9OQVFJT2QyY0NEUUlGUjM5dkFnSUJSZ0FDRGcwT0FnMXRFUUVBQUFFREFBRmdFZ0VEQ0FFR0JRTUdZQWNCQlF3QkNna0ZDbUFMQVFrUUFRNENDUTVnRHdFTkJBUU5WQThCRFEwRVdBQUVEUVJNR0JjQ0FJT0JlM2x6Y1d0cFkyRmJXVk5SUzBsRFFUczVNekVyS1NBZEZ5WVlKUkVQQ2djQUZnSVdFd1VVS3dFaElnWWRBUlFXTXlFeUZoVVJGQll6TWpZMUVUUW1CU0lHRlJFVUZqTWhNalkxRVRRbUl3Y1VCaXNCSWlZOUFUUTJPd0V5RmhVWEZBWXJBU0ltUFFFME5qc0JNaFlWQnhRR0t3RWlKajBCTkRZN0FUSVdGUmNVQmlzQklpWTlBVFEyT3dFeUZoVUhGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlFMay9zQVpJd1lFQVNJWkl3WUVIU2tqL2hzWkl5TVpBVUFaSXlNWjhBd0lGQWdNREFnVUNBemNEQWlNQ0F3TUNJd0lETndNQ0JRSURBd0lGQWdNM0F3SWpBZ01EQWlNQ0F6Y0RBZ1VDQXdNQ0JRSUROd01DSXdJREF3SWpBZ01Bb29qR1FvRUJpTVovc29FQmlrZEFVb1pJNHdqR2Y2c0dTTWpHUUZVR1NPTUNBd01DQlFJREF3SUZBZ01EQWdVQ0F3TUNIZ0lEQXdJRkFnTURBZ1VDQXdNQ0JRSURBd0llQWdNREFnVUNBd01DQlFJREF3SUZBZ01EQWdBQUFBSEFBRC9hZ05yQTFJQURRQVJBQlVBR1FBZEFDNEFOd0IwUUhFbkRBSUxBQUZITHdFQVJRd09BZ3NBQ2dBTENtMEFDZ0lBQ2dKckFBSURBQUlEYXdBREFBUUZBd1JlQUFVQUJnY0ZCbDRBQndBSUNRY0lYZzBCQUFBTVNBQUpDUUZZQUFFQkRRRkpIaDRCQURjMUhpNGVMU0FmSFJ3Ykdoa1lGeFlWRkJNU0VSQVBEZ2tHQUEwQkRROEZGQ3NUSWdZVkVSUVdNeUV5TmpVUkNRRWhGU0VWSVJVaEZTRVZJUlV6RlNNQkZTTW5KaWNtSnlZM0Z4WVhGaGNXTXdNVkZCY1dGeFk3QVZBaEx5OGhBc3NoTC83Wi9sb0JVZjZ2QVZIK3J3RlIvcS9Bd0FMTnlCQVNFQlVNRHdFQ0F3Z0tFaFlmWEFjS0V4Y2t5QU5TTHlIOHVDRXZMeUVDV3dFOS9iZ2hLaUVxSVNvaEFnc1BCQWNLRFJJWEhRNFJEUlFMRGdFLzVCRVNHQTRTQUFZQUFQL2RBOElDM3dBUEFCOEFMd0EvQUU4QVh3QnBRR1lOQWd3REFBQURCUUFEWUFBRkRnUUNBUVlGQVdBUUNBOERCZ0FKQ2dZSllCRUJDZ2NIQ2xRUkFRb0tCMWdMQVFjS0IweFNVRUpBTWpBaUlCSVFBZ0JhVjFCZlVsOUtSMEJQUWs4Nk56QS9NajhxSnlBdklpOGFGeEFmRWg4S0J3QVBBZzhTQlJRckFTTWlCaDBCRkJZN0FUSTJQUUUwSmlrQklnWWRBUlFXTXlFeU5qMEJOQ1lCSVRJMlBRRTBKaU1oSWdZZEFSUVdCeU1pQmgwQkZCWTdBVEkyUFFFMEppa0JJZ1lkQVJRV015RXlOajBCTkNZSElTSUdIUUVVRmpNaE1qWTlBVFFtQVJmVUN4RVJDOVFMRWhJQ2cvMzVEQkVSREFJSEN4SVMvZTRCUmd3UkVReit1Z3dSRVh2VUN4RVJDOVFMRWhJQ2cvMzVEQkVSREFJSEN4SVN6UDY2REJFUkRBRkdEQkVSQXQ4U0Mvb01FUkVNK2dzU0VnczZDeElTQ3pvTEV2N01FUXc2Q3hFUkN6b01FWm9SRFBvTEVoSUwrZ3dSRVF3NURCRVJERGtNRWNBU0N6b0xFaElMT2dzU0FBQUNBQUQva0FOMUF5d0FGd0FsQUNsQUpnTUJBUVFCYndBRUFBUnZCUUVBQWdCdkFBSUNaZ0lBSWlBYkdoSVBDZ2NBRndJWEJnVVVLd0VqSWlZOUFUUW1JeUVpQmhVUkZCWXpJVEkyTlJFMEpqY25KaUlHSFFFVUZqc0JNalkwQTFiWEppc1NEZjdCSlRnNEpRSklKamNTRE13R0ZBNG5HcVFJRFFIbEt5WFlEUkkzSnYwZUpUZzRKUUhaRFJKMXpBWU5DYU1hSnc0VUFBRUFBUCtRQThJRExBQXJBQjFBR2lNQkFnQUJSd0FCQUFGdkFBQUNBRzhBQWdKbUhTb1ZBd1VYS3dFdUFROEJCaUl2QVNZMFB3RTJKaWNtSXlJR0J3WVhGaGNCRGdFV0Z4NEJNalkzQVJZWEZqYytBVFUwQTdZREVBaWNDQmtKYmdnSW5nWUVDQ2dxVVlZaUpBb0hEUDZZRlE0T0ZSQXBLQ2tRQVdZYkxsSklSbFFDWndrREJwd0lDRzRKR1FpY0JoQUZERlJHU0ZJc0hmNmFGVGczRkJBUkVSQUJaZ3dIQ2lRaWhsRXJBQUFBQVFBQS82UURLQU1aQUNVQUlVQWVBQUFDQUc4RUFRSUJBbThGQVFFREFXOEFBd05tRXhVMUV4Y1ZCZ1VhS3dFMk5DY0JKaUlIQVFZVUh3RVdNajhCTmpJV0ZSRVVGanNCTWpZMUVUUTJNaDhCRmpJM0F4d01EUDdnREI4TC90OExDellNSHd0YkJ4UVBGdzlORHhnUEZBZGFEQjhMQWI0TUhRc0JHd3NML3VVTEhRdzBDd3RaQnc0TC9ma1BGeGtOQWdjTERnZFpDd3NBQUFBQUFRQUEvNGNEeXdNekFFY0FFVUFPQUFFQUFXOEFBQUJtRXhFQ0JSWXJKUlkyUHdFK0FSWVVEd0VPQVNZdkFTNEJOamNCUGdFV0h3RWVBUVlQQVE0QkZ4WVhIZ0UyUHdFK0FTWW5JeTRCQmdjQkRnRVdId0VlQVRZL0FUNEJMZ0lHRHdFR0ZCY0JVd2dYQ2NBTEh4Z003QnBGUmhvQ0doRVJHZ0dpR1VaRkdnSWFFaElhQWdnQ0JoSUpBeFVTQ3drd0lpSXdCRENDZ2pEK1h6QWlJakFETVlDQk1POGVGQmM5VWxBZHZRZ0lrQWdCQjhFS0FSY2lET2thRVJFYUFocEdSUm9Cb1JvU0Vob0NHa1ZHR1FJSUVna2ZKQXdHRVF3S01JS0NNREFpSWpEK1lEQ0NnVEVFTUNJaU1PMGVVbEU3RXhjZnZBa1pDQUFEQUFEL2tBT2JBeXdBSHdBdkFFSUFtN1UzQVFrS0FVZExzQTFRV0VBekF3RUJBQUFCWXdBSkNnZ0tDUWh0QkFJTEF3QUFCUVlBQldFTUFRWUFDZ2tHQ21BQUNBY0hDRlFBQ0FnSFdBQUhDQWRNRzBBeUF3RUJBQUZ2QUFrS0NBb0pDRzBFQWdzREFBQUZCZ0FGWVF3QkJnQUtDUVlLWUFBSUJ3Y0lWQUFJQ0FkWUFBY0lCMHhaUUNFaUlBRUFRRDg2T1RRektpY2dMeUl2R2hjU0VBME1DUWdGQkFBZkFSOE5CUlFyQVNNMU5DWWlCaDBCSVRVMEppSUdIUUVqSWdZZEFSUVdNeUV5TmowQk5DWVhJU0lHRlJFVUZqTWhNalkxRVRRbUFSVVVCaUltUFFFSEJpSW1ORDhCTmpJV0ZRTk9ZQ0l2SXY3eUlUQWlZQ0F0RVF3REZBd1JMUkQ4N0F3UkxoOEN0Q0F0RWY2a0dCNFhIUWdYRVFwTEN5SVlBc3NuR0NJaUdDY25HQ0lpR0NjdEh6RUxFUkVMTVNBcytoRUwvaWdmTGkwZ0FkZ0xFZjVaQXd3WEdBN0JId2dTRmdwTERCY1FBQUFBQUFNQUFQK1FBOElETEFBVUFCMEFQd0JmUUZ3eUFRWUhPaXdDQlFZbUhnSUVCUU5IQUFRRkFRVUVBVzBBQVFGdUNRRUFDZ0VDQXdBQ1lBQURBQWNHQXdkZ0FBWUZCUVpVQUFZR0JWZ0lBUVVHQlV3V0ZRRUFQVHcyTkM4dUtTZ2lJQm9aRlIwV0hRc0tBQlFCRkFzRkZDc0JJZ2NHQndZVUZ4WVhGakkzTmpjMk5DY21KeVlITWhZVUJpSW1ORFlURkFZckFTSW1QUUUwTmpJMlBRRTBKaUltUFFFME5qc0JNaFlkQVJRV01oWVZBZlIrYTJrOFB6ODhhV3Y4YkdnOVB6ODlhR3grR1NFaE1pRWhlUW9KbWdjTUN4QUxDaEFNQ3doMEJ3d0tFQXdETEQ4OWFHejhiR2c5UHo4OWFHejhiR2c5UCtraE1pQWhNQ0wrYkFnSkNRZ25CdzRKQ0UwSURRa0lKd2NPRFFpYUNBa05DQUFBQUFBREFBQUFBQVBvQXBRQUZBQXBBRGtBQ3JjMExDUVlDd0lETFNzQkp5WUdCd01HRkJjVEhnRS9BVDRCTHdFM05pWUZBeTRCRHdFT0FSOEJCd1lXSHdFV05qY1ROalFCSnlZR0J3TUdGaDhCRmpZM0V6WW1BVG90Q2hZSTN3WUc0UWNYQ2l3TEFnbTB0Z1lEQXA3aEJ4Z0pMQXNDQ2JlM0J3SUpMQW9XQ09FRy9uZzZDeGNDandNTkN6b01GZ09PQXd3Q1p5VUhBZ24rNXdjVkNQN3BDUU1JSlFjWkNPSGhDUmZ3QVJjSkJBa2tDQmdKNGVFSUdRY2xCd01JQVJrS0V3RWFEZ01OQy8zZURCUUREZ0lNREFJaURCUUFBQVVBQVArUUE1c0RMQUFQQUM4QVB3QlBBRjhBYlVCcVdGQUNDZ3RJUUFJSUNRSkhCQTBDQWdFQUFRSUFiUUFCREFFQUF3RUFZQUFEQUFzS0F3dGdBQW9BQ1FnS0NXQUFDQUFIQmdnSFlBQUdCUVVHVkFBR0JnVllBQVVHQlV3U0VBSUFYRnBWVWt4S1JVSThPalV5S2ljaUh4b1hFQzhTTHdvSEFBOENEdzRGRkNzQklUSTJQUUUwSmlzQklnWWRBUlFXSlNNaUJoMEJGQVlqSVNJbVBRRTBKaXNCSWdZVkVSUVdNeUV5TmpVUk5DWURGQVlqSVNJbVBRRTBOak1oTWhZVk5SUUdJeUVpSmowQk5EWXpJVElXRlRVVUJpTWhJaVk5QVRRMk15RXlGaFVCVVFGSEN4RXRJT1lnTFJFQ0NUQUxFaTBnL29BZ0xSSUxNQjh1TGg4Q3RDQXRMWk1MQ1A1WkNRc0xDUUduQ0FzTENQNVpDUXNMQ1FHbkNBc0xDUDVaQ1FzTENRR25DQXNDYXhJTFZ5QXRMU0JYQ3hKMEVndFhJQzB0SUZjTEVpMGcvVXNmTGkwZ0FyVWdMZjFmQ1FzTENTWUpDZ29KY3dnTEN3Z25DQXNMQ0hNSUN3c0lKd2dMQ3dnQUFBQUFBZ0FBLzQ4RHdnTXRBQ01BUndDSFM3QUtVRmhBSXdBQUJRQnZBQVVCQlc4REFRRUdBVzhBQmdRR2J3QUVBZ1J2QUFJSEFtOEFCd2RtRzB1d0MxQllRQjhBQUFVQWJ3QUZBUVZ2QXdFQkJBRnZCZ0VFQWdSdkFBSUhBbThBQndkbUcwQWpBQUFGQUc4QUJRRUZid01CQVFZQmJ3QUdCQVp2QUFRQ0JHOEFBZ2NDYndBSEIyWlpXVUFMRnhnNEZCZzRGeFVJQlJ3ckFUWTBMd0VtSWc4QkJoUWZBUll5UHdFMkZoVVJGQlk3QVRJMk5SRTBOaDhCRmpJM0FTY21JZzhCQmlZMUVUUW1Ld0VpQmhVUkZBWXZBU1lpRHdFR0ZCOEJGakkvQVRZbUFoRUlDTnNKRnduZENBZ3BDQmNKUlFrWUVRdzVEQkVZQ1VVSkZ3a0J6eWdKRndsRkNSZ1JERGtNRVJnSlJRa1hDQ2tJQ04wSkZ3bmRDQUVDSGdrWENkMElDTjBKRndrb0NRbEZDUWtOL21nTEVoTUtBWmdOQ1FsRkNRbitxQ1lKQ1VVSkNRMEJuQXNTRXdyK2FBMEpDVVVKQ1NvSkZ3bmRDQWpkQ1JrQUNBQUEvMm9EYXdOU0FBMEFIZ0FuQURnQVFBQk9BRllBYndGM1FCY1hEQUlEQUcxblJqQUVDQWRoS2dJR0RRTkhId0VBUlV1d0QxQllRRlVFRkFJREFBSUFBd0p0QUFJSEFBSUhheElMQWdjSUFBY0lhd0FRQ1FVR0VHVVZBUVVOQmdWakFBOEpDQTlTQUFrUUNBbFVHUTRZREJZRkNBQU5CZ2dOWUJNQkFBQU1TQkVYQ2dNR0JnRlpBQUVCRFFGSkcwdXdFVkJZUUZZRUZBSURBQUlBQXdKdEFBSUhBQUlIYXhJTEFnY0lBQWNJYXdBUUNRVUpFQVZ0RlFFRkRRWUZZd0FQQ1FnUFVnQUpFQWdKVkJrT0dBd1dCUWdBRFFZSURXQVRBUUFBREVnUkZ3b0RCZ1lCV1FBQkFRMEJTUnRBVndRVUFnTUFBZ0FEQW0wQUFnY0FBZ2RyRWdzQ0J3Z0FCd2hyQUJBSkJRa1FCVzBWQVFVTkNRVU5hd0FQQ1FnUFVnQUpFQWdKVkJrT0dBd1dCUWdBRFFZSURXQVRBUUFBREVnUkZ3b0RCZ1lCV1FBQkFRMEJTVmxaUUVWWVYxQlBRa0U2T1Nrb0RnNEJBR3hwWkdOZ1hscFpWMjlZYjFOUlQxWlFWa3RJUVU1Q1RqMDdPVUE2UURVeUxTd29PQ2s0SnlVT0hnNGRFQThKQmdBTkFRMGFCUlFyRXlJR0ZSRVVGak1oTWpZMUVRa0JGU01uSmljbUp5WTNGeFlYRmhjV013TVZGQmNXRnhZN0FRRWpGUlFHSWlZOUFUUTJPd0V5RmhRR0p5TVZNekkyTkNZWEl5SW1QUUUwTmpzQk1oWVVCaWNqRlRNeVBnRW1NeU1WTXpJV0ZBWXJBUlVVQmlJbVBRRTBOanNCTWhVV0JsQWhMeThoQXNzaEwvN1pBU2ZJRHhNUEZRc1BBUUlEQ0FvU0ZSOWRCd29URnlUSS9YNDBCZ29IQ2djNkd5QWdIVEl5RVJVVmtpOEhDZ29ITHlzMk5Td3BLU0VuQVNmY1dsa0VCUVVFV1FjS0J3c0hZQW9CQmdOU0x5SDh1Q0V2THlFQ1d3RTkvc0VQQkFjS0RSSVhIUTRSRFJRTERnRS81QkVURnc0Uy9rRkFCUVlIQktBSENpRXdJRjFJRkNBVXFBc0htUWNLTmxBMnFKSXFQeWs5QmdrR1N3VUdCd1NnQndvTEJBVUFBQVVBQUFBQUF3d0NpZ0FQQUM4QVB3QlBBRjhCQ1VBV0hRMENBQUpJQVFzSldBRUhDMUJBT0RBRUJnY0VSMHV3RGxCWVFEd0VEUUlDQVFBQkFnQnRBQXNKQndrTFpRQUhCZ2tIWXdBQkRBRUFBd0VBWUFBREFBa0xBd2xnQ2dnQ0JnVUZCbFFLQ0FJR0JnVllBQVVHQlV3YlM3QWZVRmhBUFFRTkFnSUJBQUVDQUcwQUN3a0hDUXRsQUFjR0NRY0dhd0FCREFFQUF3RUFZQUFEQUFrTEF3bGdDZ2dDQmdVRkJsUUtDQUlHQmdWWUFBVUdCVXdiUUQ0RURRSUNBUUFCQWdCdEFBc0pCd2tMQjIwQUJ3WUpCd1pyQUFFTUFRQURBUUJnQUFNQUNRc0RDV0FLQ0FJR0JRVUdWQW9JQWdZR0JWZ0FCUVlGVEZsWlFDTVJFQUVBWEZwVVVreEtSRUk4T2pReUtpY2lIeG9YRUM4Ukx3b0hBQThCRHc0RkZDc0JNekkyUFFFMEppc0JJZ1lkQVJRV0pTTWlCaDBCRkFZckFTSW1QUUUwSmlzQklnWVZFUlFXTXlFeU5qVVJOQ1lCRkFZckFTSW1QUUUwTmpzQk1oWVZGeFFHS3dFaUpqMEJORFk3QVRJV0ZSY1VCaXNCSWlZOUFUUTJPd0V5RmhVQmh0d0lEQ01aakJrakRBRlNGQVFHTHlIY0lTOEZCUlFaSXlNWkFiZ1pJeVAreFF3SUZBZ01EQWdVQ0F4a0RBZ1VDQXdNQ0JRSURHUU1DQlFJREF3SUZBZ01BaElNQ0NnWkl5TVpLQWdNUmdVRktDRXZMeUVvQlFVakdmNVNHU01qR1FHdUdTUCtaZ2dNREFoa0NBd01DR1FJREF3SXZnZ01EQWkrQ0F3TUNKWUlEQXdJQUFZQUFBQUFBeFlDZndBVUFDUUFOQUJFQUZRQVpBQ0hRSVFpR2dVREF3UkNPaklxQkFVR1lscFNTZ1FKQ2dOSEFBQUJBRzhBQVFRQmJ3QUVBd1J2QUFJREJnTUNCbTBSQ3hBRENRb0pjQTBCQXdnQkJnVURCbUFQQnc0REJRb0tCVlFQQnc0REJRVUtXQXdCQ2dVS1RGWlZSa1UyTlNZbEZoVmVYRlZrVm1ST1RFVlVSbFErUERWRU5rUXVMQ1UwSmpRZUhCVWtGaVFYRkJJU0JSY3JBU2NtSWc4Qkp5WWlEd0VHRkI4QkZqSS9BVFkwQlNFaUpqMEJORFl6SVRJV0hRRVVCZ2NoSWlZOUFUUTJNeUV5RmgwQkZBWWhJeUltUFFFME5qc0JNaFlkQVJRR0J5TWlKajBCTkRZN0FUSVdIUUVVQmlrQklpWTlBVFEyTXlFeUZoMEJGQVlCMGhVRURBV0VOUVFNQlJVRUJFb0pHQW1aQkFFcy92d0lEQXdJQVFRSURBd0kvc0FJREF3SUFVQUlEQXorUUNnSURBd0lLQWdNREFnb0NBd01DQ2dJREF3QnNQN0FDQXdNQ0FGQUNBd01BbVVWQlFXRU5RVUZGUVFNQlVvSkNaa0VEWXNNQ0NnSURBd0lLQWdNdEF3SUtBZ01EQWdvQ0F3TUNDZ0lEQXdJS0FnTXRBd0lLQWdNREFnb0NBd01DQ2dJREF3SUtBZ01BQUFDQUFBQUFBTWdBcEFBTEFBOEFEcEFOeUlCQWdBQlJ3RUZBZ0FBQWdNQUFtQUdBUU1FQkFOVUJnRURBd1JZQUFRREJFd3VMUUlBTnpRdFBDNDhKaVFmSEFBc0Fpd0hCUlFyQVNNaUpqVTJOelkzTmpjMk56WW1KeVlPQVJVVUZ4NEJGeFlYRkFZckFTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0xrYmhrakFnY0dDZzRDQ0FFRE5Dd21SQ2tIQkJnRkNBSWpHVzRaSXd3SUFqQUlEQ01ZL2g0SUN5TVpBWkVaSWdzQk5pTVpIaGNRRXhZR0VCTXRTQW9JSFR3bEZoSUpLQkFZSHhrakl4a29DQXdNQ0NnWkk3UUxDQUVaSXlNWkFRZ0xBQUFBQUFFQUFQK1FBOElETGdBdEFGQkFUUllCQXdJWEFRRURCd0VBQVNJREFnUUFJd0VGQkFWSENBRURBVVlBQWdNQ2J3QURBUU52QUFFQUFXOEdBUUFFQUc4QUJBVUVid0FGQldZQkFDZ25JUjhhR0JJUkRBb0FMUUV0QndVVUt5VWlCZ2NsTmpVbkpSNEJNekkrQVRRdUFTSU9BUjBCQlNZaklnNEJGQjRCTXpJM0JSVVVIZ0V5UGdFMExnRURFeVZCRi83bkFnSUJHUmRESlM5UUxpNVFYbEF2L3Q0MVBpOVFMaTVRTDBFd0FTTXVUMkJQTGk1UTZ4MFpqQW9WSDR3YUhpNVFYbEF2TGxBd0M1SW9MbEJlVUM0cWtBMHdVQzR1VUdCUExnQUNBQUQva0FQQ0F5d0FMQUJhQUNwQUp4TUJBZ0FpQVFFQ0FrY0FBQUlBYndBQ0FRSnZBQUVEQVc4QUF3Tm1WRkU3T2lZakxnUUZGU3NCSmljbU5UUTJOejRCTlRRbUp5WWpJZ2NHQnhRWEhnRVZGQVlIQmhRWEZoY1dKeFk3QVRJMlBRRTBKeVlGSmljbU5UUTNQZ0UxTkNZbkppSUhEZ0VWRkJZWEZoVVVCd1lIQmdjR0J3WWRBUlFXTXlFeU5qMEJOQ2NtQXlnbERnc1VEeGdhSlNJa0wwRXFKd1lLTno0cUp3TURDUlU3R1FvRjZTRXVMeUwrdFMwUkRTZ2RIeXNwSzNNcktDd2VIU2tORWk0N0lTNFlIQzBoQWhVaE1EWW9BYVVPRWcwVER4NE1GRG9pSzBnVkZpZ21Pd29ISTNWSk4xOGpBd2tEQmdvZERBUXZIZ3d1SXhydUV4TVBGaUVrR1VRb00xVVlHaG9ZVlRNb1JCa2pJaFlQRlJFWUVoa2JJQ1laSUMwdUh4czJLaDhBQUFBQUFRQUFBQUFDMndLbEFDMEFKMEFrQUFBRkFRRUNBQUZnQkFFQ0F3TUNWQVFCQWdJRFdBQURBZ05NTlNVMU5TVXpCZ1VhS3dFMU5DWWpJU0lHSFFFVUZqTXlGZ2NERGdFckFTSUdIUUVVRmpNaE1qWTlBVFFtSXlJbU54TStBVHNCTWpZQzJ4Y1Evdk1RRmhZUUdSOEdSUVFkRVM0UUZ4Y1FBUTBRRmhZUUdSOEdSUVFkRVNFV0hnSm1HUkFXRmhBbkVCWW5GLzZ1RXhnV0VDY1FGaFlRSnhBV0p4Y0JVaE1ZSGdBQUFBVUFBUCtRQTRnRExBQVpBQ01BTXdCREFGTUFYa0JiVEVROE5BUUlDUUZIQUFFQUJBQUJCR0FGQWd3REFBQURCZ0FEWUEwQkJnc0JDUWdHQ1dBS0FRZ0hCd2hVQ2dFSUNBZFlBQWNJQjB3bUpBRUFVVTVKUmtFK09UWXVLeVF6SmpNakloNGNGQkVNQ2djRUFCa0JHUTRGRkNzQkl6VTBKaXNCSWdZZEFTTWlCaDBCRkJZeklUSTJQUUUwSmlVME5qc0JNaFlkQVNNRklTSUdGUkVVRmpNaE1qWTFFVFFtQVJRR0t3RWlKalVSTkRZN0FUSVdGUk1VQmlzQklpWTFFVFEyT3dFeUZoVURhL0F0SUhRZkx2QUxFaElMQXU0TEVoTCtSQXNKVFFnTGRBRmsvYXdMRWpnb0FjNG9PQkgra0FvSkpna0xDd2ttQ1FyQkN3a21DUW9LQ1NZSkN3S1NUU0F0TFNCTkVnczZDeElTQ3pvTEVqa0pDd3NKT2NFUkMvNDhLVGc0S1FIRUN4SCtXUWdMQ3dnQkRnZ0xDd2orOGdnTEN3Z0JEZ2dMQ3dnQUFBRUFBUC92QThJQ3pRQWpBQzVBS3dBQkFBRnZBQUlEQW5BRUFRQURBd0JVQkFFQUFBTllBQU1BQTB3Q0FCNGJFeElMQ2dBakFpTUZCUlFyQVNFaUpqOEJOalF2QVNZaUJ3RUdGQmNCRmpJL0FUWTBMd0VtTmpNaE1qWTlBVFFtQTZmOWdRMEpDYmdKQ1NvSUdBaityd2dJQVZFSUdBZ29DUW00Q1FrTkFuOExFaEFCbUJnSXVRa1hDQ3NJQ1A2dENCZ0kvcThJQ0NrSUdBaTVDaGdRQ3pvTUV3QUFBd0FBLzVBRHdnTXNBQlFBSVFBdUFEcEFOeVlsSHg0RUF3SUJSd1FCQUFBQ0F3QUNZQVVCQXdFQkExUUZBUU1EQVZnQUFRTUJUQ01pQVFBaUxpTXVIQm9MQ2dBVUFSUUdCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUFUUTNOamMyTXpJV0Z3RXVBUUVpSmljQkhnRVZGQWNHQndZQjlIMXJhVDAvUHoxcGEvcHNhRDQvUHo1b2JQNHBMeTlPVVYwNFpTditIUjRoQVZvNFpTc0I0eDRoTHk5T1VRTXNQejVvYlBwc2FENC9QejVvYlBwc2FENC8vakpkVVU0dkx5RWUvaDByWmY3ZUlSNEI0eXRsT0YxUlRpOHZBQUFBQUFJQUFBQUFBOElDeXdBTkFDUUFLa0FuQUFFREFXOEFBd0FEYndBQUFnQnZBQUlFQkFKVUFBSUNCRmdBQkFJRVREY1RHVFVSQlFVWkt3RVdNamNCTmljbUl3VWlEZ0VYQlRRbUJ3RUdJaWNCSmlJR0ZTWWRBUlFXTXlFeU5qVUIzd2dZQ0FHekJ3VUdGZnlrQ3hJRUNBT1dHd3orckNOZkpQNnVCeE1OQVMwZkF3SWdMUUVQQ0FnQmxBME5EZ0VORXdtY0R3MEsvc1lnSGdFOEJnMExCTnpjSUMwdUh3QUFBQU1BQVAveEF4VUN1QUFZQUNBQUtBQkJRRDRWQVFNRUFVY0FBQUFGQkFBRllBY0JCQUFEQWdRRFlBWUJBZ0VCQWxRR0FRSUNBVmdBQVFJQlRDSWhHaGtsSXlFb0lpZ2RHeGtnR2lBMU13Z0ZGaXNCTkM0Qkl5RWlCaFVSRkJZeklUSStBVFUwSnlZbk5qYzJBeU0xTXpJV0ZBWURJelV6TWhZVUJnTVZOMTAyL3NJUUZoWVFBVDQyWFRjUER4b2FEdy9LM3Q0Yktpb2IzdDRiS2lvQjVUaGlPUllRL1lVUUZqbGlPQ2ttSkIwZUpDYit1NW91UGk0Qklab3ZQQzhBQUFQLy93QUFBKzRDcFFBV0FDTUFNQUJDUUQ4SEFRUURCUU1FQlcwQUJRSURCUUpyQUFBQUF3UUFBMkFHQVFJQkFRSlVCZ0VDQWdGWUFBRUNBVXdsSkJnWEt5b2tNQ1V3SGgwWEl4Z2pHeFFJQlJZckFTNEJKeVlpQnc0QkJ3WVVGeDRCRnhZeU56NEJOellGSWk0Qk5ENEJNaDRCRkE0QkF5SU9BUlFlQVRJK0FUUXVBUVBrTFpkZll0WmlYNWN0QkFRdGwxOWkxbUpmbHkwSi9nYzZZRGs1WUhSaE9UbGhPaVUrSkNRK1NqNGtKRDRCYjF5TUppZ29Kb3hjQ0JNSFhJd21LQ2dtakZ3UjB6bGdkR0U1T1dGMFlEa0JXaVErU2o0a0pENUtQaVFBQWdBQS81QUR3d010QUNjQVZnQlpRRllBQ1FNSmJ3b0JBQUlJQWdBSWJRQUlCZ0lJQm1zQUJnRUNCZ0ZyQ3dVQ0F3Y0JBZ0FEQW1BQUFRUUVBVlFBQVFFRVdBQUVBUVJNS1NnQ0FFMU1SVVE4T1RNd0tGWXBWU0lmR2hjU0R3b0hBQ2NDSnd3RkZDc0JJeUlHSFFFVUJpTWhJaVkxRVRRMk93RXlOajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQVNJSEJnY0dCd1lXT3dFeU5qYytBVGMyT3dFeUZnOEJCaFFmQVJZeU53RTJOQ2NCSmlJUEFRNEJId0VXQmlNRHBUb0xFaEVNL1lZTUVSRU1UUXNTRWd1Ukh5MHRId01DSUMwUy90NWVWMVEyT0FnQ0VnMDZDeEFDQmxBK1FVa2ZEUWtKYVFrSktBa1hDQUVHQ0FqKy9BZ1lDQ2dKQWdsckNRa05BUkVSRE5NTUVSRU1BWlFMRVJJTE9nc1NMU0Q5NVNBdExoOEJGd3dSQVRRME1sVlhZd3dURHdwSGVTTWtHQWhzQ0JnSUtRZ0lBUVFJR0FnQkJBZ0lLQWtYQ1d3SUdBQUFBQU1BQUFBQUF5QUNpZ0FVQUMwQVBBQTlRRG9GQVFNQ0JBSURCRzBHQVFBSEFRSURBQUpnQUFRQkFRUlVBQVFFQVZnQUFRUUJUQllWQVFBb0ppSWhIQnNWTFJZdEN3b0FGQUVVQ0FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ2N5SGdFVkZBY2pJZ1lIRGdFaUppY3VBU3NCSmpVMFBnRVRGajRCTnpZM05pWUhCZ2NPQVJZQjlGRkdSQ2dwS1NoRVJxSkdSQ2dwS1NoRVJsRTdaanNDV1FjTEFnWStVajRHQVFzSVdRSTdaaVFTS0JNTkRRY0lDQjhkSFNBVEN3S0tLU2hFUnFKR1JDZ3BLU2hFUnFKR1JDZ3BVRHRtT3dvVUNRZ25OalluQndvVUNqdG1PLzdhQ2cwak1Dd29LZ1FlSFNNbUl5Y0FBQVVBQUFBQUF5QUNpZ0FrQURJQVFBQktBRlFBWjBCa0N3RUZBVElCQUFVYUFRUUFTQUVKQ0FSSEN3MENDQVFKQkFnSmJRb0JDUWx1QWdFQkJ3RUZBQUVGWUFZRERBTUFCQVFBVkFZRERBTUFBQVJZQUFRQUJFeENRUUVBVWxGUVRrVkRRVXBDU2owOE56WXVMQjRjRnhVUkR3Y0ZBQ1FCSkE0RkZDc0JJelltSnlZaklnWUhCZ2NtSnk0Qkl5SUhEZ0VYSXlJR0hRRVVGak1oTWpZOUFUUW1JU0luTGdJM05qTXlGaGNXRlRjR0J3WWpOVFEzUGdFeUZ4WUdGeU1STXpJMlBRRTBKZ1VWRkJZN0FSRWpJZ1lDNUZjVEJCY2JKUk1tRGdVRkJBWU9KUlFrR3hjRUUxZ1pJd3dJQWpBSURDUCsyUkVTRlJjQ0NnZ01FQmNHQm9BTUZCTVJCZ1laR2dnS0FvUFNyQmdpRFA0RUl4bXEwZ2dNQWZRZVJSZ2JFUThGQ0FnRkVCQWJHRVVlSXhrb0NBd01DQ2daSXdZSEdTRUtDQm9XRXhFVkRRY0dCaEVURmhvSUN5RGIvdklpR01BSURCUytHU01CRGd3QUFBTUFBQUFBQXlBQ2lnQVVBQ0VBTlFCTFFFZ2pJZ0lGQkFGSEFBUURCUU1FQlcwQUJRSURCUUpyQmdFQUFBTUVBQU5nQndFQ0FRRUNWQWNCQWdJQldBQUJBZ0ZNRmhVQkFEQXZKeVVjR3hVaEZpRUxDZ0FVQVJRSUJSUXJBU0lIQmdjR0ZCY1dGeFl5TnpZM05qUW5KaWNtQXlJdUFUUStBVEllQVJRT0FTYzFOQ1lyQVNJR0hRRVVId0VXTWo4Qk5qUW5BZlJSUmtRb0tTa29SRWFpUmtRb0tTa29SRVpSUVc1QlFXNkNia0ZCYmlNTUNCUUlEQWxnQmhBR0RnWUdBb29wS0VSR29rWkVLQ2twS0VSR29rWkVLQ245NUVGdWdtNUJRVzZDYmtIOGdBZ01EQWlNRFFoZ0JnWU9CaEFHQUFVQUFBQUFBdTRDaWdBTkFDVUFTUUJaQUdrQVlFQmRFd0VBQWtROU5nTUJBRUE1SXdNSEFXSmFBZ1lIVWtvQ0JBVUZSd0FDQUFKdkFBQUJBRzhJQVFFQUJ3WUJCMkFBQmdBRkJBWUZZQUFFQXdNRVZBQUVCQU5ZQUFNRUEwd1FEbVprWGx4V1ZFNU1JQjBZRlE0bEVDVW9DUVVWS3dFbkppSUdIUUVVRmpzQk1qWTBCeU1pSmowQk5DWXJBU0lHRlJFVUZqTWhNalkxRVRRbUpUOEJNalUzTmpJZkFSWXpGeDRCRHdFR0ZSY1dCaThCSmc4QkJpWS9BVFF2QVNZMkFSUUdJeUVpSmowQk5EWXpJVElXRlRjVUJpTWhJaVk5QVRRMk15RXlGaFVDNm9RRURBZ1lFR29HQ0JTTUdTTU1DTWdaSXlNWkFYd1pJd3orWGpFQ0FSWUNCUUVXQWdFeEFnSUNKQUVJQVFVQ0xBSUNMQUlGQVFnQkpBRURBVGdNQ1A3OENBd01DQUVFQ0F3b0RBaisxQWdNREFnQkxBZ01BZ0tFQkFnR2FoQVlDQXhRSXhtTUNBd2pHZjRnR1NNakdRRXNDQXhlQndFQkxRSUNMUUlIQVFVQkl3RURNUUlEQVJjQ0FoY0JBd0l4QXdFakFnVCtzd2dNREFnVUNBd01DR1FJREF3SUZBZ01EQWdBQUFnQUFQK1FBOElETEFBUEFCOEFMd0EvQUU4QVh3QnZBSDhBY2tCdkVnRU9CUTV2QmdFRkR3VnZBQThFRDI4SEFRUUFCRzhJQVFJQkNnRUNDbTBRQVFvREFRb0Rhd2tCQXdzQkF3dHJBQXNMYmhFTUFnQUJBUUJVRVF3Q0FBQUJXQTBCQVFBQlRISndZbUJTVUhwM2NIOXlmMnBuWUc5aWIxcFhVRjlTWDBwSkZ4Y1hGeGNYRXpVekV3VWRLd0UxTkNZckFTSUdIUUVVRmpzQk1qWVhKaUlQQVFZVUh3RVdNajhCTmpRbkFSWXlQd0UyTkM4QkppSVBBUVlVRnlVbUlnOEJCaFFmQVJZeVB3RTJOQ2NCSmlJUEFRWVVId0VXTWo4Qk5qUW5KU01pQmgwQkZCWTdBVEkyUFFFMEppVWpJZ1lkQVJRV093RXlOajBCTkNZQkl5SUdIUUVVRmpzQk1qWTlBVFFtQVRRU0M5UUxFUkVMMUFzU0pBZ1lDSllKQ1NnSkZ3bVdDQWdCRHdnWUNKWUpDU2dKRndtV0NBaitoQWtYQ1NnSkNaWUlHQWdwQ0FnQk9RZ1lDQ3NJQ0pZSkZ3a29DUW4rd3pvTEVoSUxPZ3NTRWdHSjFBc1NFZ3ZVQ3hJUy9tRTZDeElTQ3pvTEVoSUJRVG9MRWhJTE9nc1NFa3NJQ0pZSkZ3a29DUW1XQ0JnSUFROElDSllKRndrb0NRbVVDQmdJdkFrSktBa1hDWllJQ0NrSUdBait5UWdJS1FnWUNKWUpDU2dKRndsSkVndlVDeElTQzlRTEV2b1NDem9MRWhJTE9nc1NBWlFTQzlRTEVoSUwxQXNTQUFBQUFBTUFBUC9kQThJQzN3QU1BQ3NBT0FCV1FGTUVDUUlDQXdjREFnZHRDQUVBQndFSEFBRnRBQUVHQndFR2F3QURBQWNBQXdkZ0NnRUdCUVVHVkFvQkJnWUZXQUFGQmdWTUxTd1BEUUVBTXpJc09DMDRKaU1lR3hZVERTc1BLd2NHQUF3QkRBc0ZGQ3NCSWc0QkZCNEJNajRCTkM0QkpTTWlMd0V1QVNzQklnWVBBUTRCS3dFaUJoVVJGQll6SVRJMk5SRTBKZ0VpTGdFMFBnRXlIZ0VVRGdFQjlDcEhLU3BHVkVjcEtVY0JWMlFvR2l3S0xCdThHaTBNTEFvakZHTWZMUzBmQXdJZ0xTMytYejVyUGo1cmZHcytQbXNCMFNsSFVrY3FLVWRVUmlsMElrUVlIQndZUkJBU0xTRCtNaUF0TGg4QnppQXQvZ3crYTN4cVBqNXFmR3MrQUFBQUNBQUEvNUFEbXdNc0FBOEFId0F2QUQ4QVR3QmZBRzhBandES1FBNW9TQ2dEQkFWUU1CQURBZ01DUjB1d0RWQllRRDBSQVE4T0RnOWpFaEFWQXc0QUV3QU9FMkVVQVFBTkNRSUZCQUFGWUF3SUFnUUxCd0lEQWdRRFlBb0dBZ0lCQVFKVUNnWUNBZ0lCV0FBQkFnRk1HMEE4RVFFUERnOXZFaEFWQXc0QUV3QU9FMkVVQVFBTkNRSUZCQUFGWUF3SUFnUUxCd0lEQWdRRFlBb0dBZ0lCQVFKVUNnWUNBZ0lCV0FBQkFnRk1XVUF6Y1hBQ0FJcUhnb0I5ZkhsNGRYUndqM0dQYkdwbFlseGFWVkpNU2tWQ1BEbzFNaTBxSkNJZEdoUVNDZ2NBRHdJUEZnVVVLd0VoSWdZVkVSUVdNeUV5TmpVUk5DWUJGQVlyQVNJbVBRRTBOanNCTWhZVk5SUUdLd0VpSmowQk5EWTdBVElXRlJNVUJpc0JJaVk5QVRRMk93RXlGaFUxRkFZckFTSW1QUUUwTmpzQk1oWVZFeFFHS3dFaUpqMEJORFk3QVRJV0ZUVVVCaXNCSWlZOUFUUTJPd0V5RmhVVEl6VTBKaUlHSFFFaE5UUW1JZ1lkQVNNaUJoMEJGQll6SVRJMlBRRTBKZ04rL093TUVTNGZBclFnTFJIOTR3b0pUUWdMQ3doTkNRb0tDVTBJQ3dzSVRRa0t3UXNJVFFrTEN3bE5DQXNMQ0UwSkN3c0pUUWdMd0FzSVRRa0tDZ2xOQ0FzTENFMEpDZ29KVFFnTFlHQWlMeUwrOGlFd0ltQWdMUkVNQXhRTUVTMEIwUkVML2lnZkxpMGdBZGdMRWY1WkNBc0xDRTBKQ3dzSmRBa0xDd2xOQ0FzTENQN3lDQXNMQ0UwSkN3c0pkQWtMQ3dsTkNBc0xDUDd5Q0FzTENFMEpDd3NKZEFrTEN3bE5DQXNMQ0FHVEp4Z2lJaGduSnhnaUloZ25MUjh4Q3hFUkN6RWdMQUFEQUFEL3R3UENBd1VBRHdBZkFDOEFRRUE5QndJR0F3QUZBUVVBQVcwREFRRUJiZ2dCQkFVRkJGUUlBUVFFQlZnQUJRUUZUQ0lnRWhBQ0FDb25JQzhpTHhvWEVCOFNId29IQUE4Q0R3a0ZGQ3NUSXlJR0ZSRVVGanNCTWpZMUVUUW1LUUVpQmhVUkZCWXpJVEkyTlJFMEppY2hJZ1lkQVJRV015RXlOajBCTkNiZG1nc1JMQ0JxREJFUkFyejl2d3dSRVF3Q0VTQXRFanY4L2lBc0VRc0RZZ3NTTFFJTEVReitGaUF0RVF3Q0dnd1JFUXo5NWd3UkxTQUI2Z3dSK2kwZ1F3c1NFZ3RESUMwQUFBQUVBQUQveWdPYkF2SUFEd0FmQUM4QVB3QTJRRE1BQUFBQkFnQUJZQUFDQUFNR0FnTmdBQVlBQndRR0IyQUFCQVVGQkZRQUJBUUZXQUFGQkFWTU5UVTFOVFUxTlRJSUJSd3JBVFFtSXlFaUJoMEJGQll6SVRJMk5SVTBKaU1oSWdZZEFSUVdNeUV5TmpVUk5DWWpJU0lHSFFFVUZqTWhNalkxRVRRbUl5RWlCaDBCRkJZeklUSTJOUU9iRVF6ODdBd1JFUXdERkF3UkVRejg3QXdSRVF3REZBd1JFUXo4N0F3UkVRd0RGQXdSRVF6ODdBd1JFUXdERkF3UkF0VUxFaElMT2dzUkVRdXREQkVSRERrTUVSRU0vbXdMRWhJTE9nc1NFZ3NCSVFzUkVRczZEQkVSREFBQUJBQUEvOG9EbXdMeUFBOEFId0F2QUQ4QU5rQXpBQUFBQVFJQUFXQUFBZ0FEQmdJRFlBQUdBQWNFQmdkZ0FBUUZCUVJVQUFRRUJWZ0FCUVFGVERVMU5UVTFOVFV5Q0FVY0t3RTBKaU1oSWdZZEFSUVdNeUV5TmpVSE5DWWpJU0lHSFFFVUZqTWhNalkxQXpRbUl5RWlCaDBCRkJZeklUSTJOUk0wSmlNaElnWWRBUlFXTXlFeU5qVURteEVNL093TUVSRU1BeFFNRVhNU0MvM1NDeElTQ3dJdUN4SW5FUXorSUF3UkVRd0I0QXdSbWhFTS9Pd01FUkVNQXhRTUVRTFZDeElTQ3pvTEVSRUxyUXdSRVF3NURCRVJEUDVzQ3hJU0N6b0xFaElMQVNFTEVSRUxPZ3dSRVF3QUFBQURBQUQvandQQ0F5d0FEd0FmQURFQUkwQWdBQU1CQTI4QUFRSUJid0FDQkFKdkFBUUFCRzhBQUFCbUhoY2FGeElGQlJrck54Y1dNamNCTmpRdkFTWWlCd0VHRkFFR0ZCOEJGakkvQVRZMEx3RW1JZ2NCQmhZL0FUWS9BVFkwTHdFbUlnOEJCZ2UzcXdZUEJnR3JCUVdwQmhBRi9sTUdBZ1VGQmFvRkVBVXhGeGRiRno4WC9VVUNGUTdTQ2djRUJBYXRCUkFFQkFZRTBLc0dCZ0dzQmhBRnFnVUYvbE1HRGdJUEJSQUZxZ1VGTUJZOUYxc1hGL3llRGhZRE1nTUhCQVFRQmEwR0JBUUdDd0FBQUFBRkFBRC9rQVBDQXl3QUR3QVRBQ01BTXdCREFHaEFaVUU1TVNrRUJnY0JSd2tCQndRR0JBY0diUTBJREFNR0FnUUdBbXNBQVFBREJRRURYZ0FGQ3dFRUJ3VUVZQUFDQUFBQ1VnQUNBZ0JZQ2dFQUFnQk1OVFFsSkJVVUFnQStPelJETlVNdUt5UXpKVE1lR3hRakZTTVRFaEVRQ2djQUR3SVBEZ1VVS3dVaElpWTFFVFEyTXlFeUZoVVJGQVlsSVJFaEFTRWlKajBCTkRZeklUSVdIUUVVQmdFaklpWTlBVFEyT3dFeUZoMEJGQVloSXlJbVBRRTBOanNCTWhZZEFSUUdBNXY4c2hBV0ZoQURUaEFYRi96SUF3TDgvZ0o3L2d3SUN3c0lBZlFKQ2dyK2RuTUlDd3NJY3drTEN3RjQ1d2dMQ3dqbkNRb0tjQmNRQTA0UUZ4Y1EvTElRRjAwREF2N3lDd2x6Q1FvS0NYTUpDLzZBQ3dqbkNBc0xDT2NJQ3dzSTV3Z0xDd2puQ0FzQUFBQUNBQUQva0FPdUF5d0FEd0E4QUJGQURnQUFBUUJ2QUFFQlpqVXlBZ1VXS3hNMEppc0JJZ1lWRVJRV093RXlOalVCQmdjR0p5WW5MZ0VuSmljbUJ3WUhEZ0VWRVJRV056WTNOaGNXRnhZWEZoY1dGeFkzTmpjK0FUVVJOQ2F0RVF3NURCRVJERGtNRVFMbE55NHBKUjRoRTB3V0pDUXJNVGhDQ0FzUkNFSTNNQ3NrSkJNcEpSVWhJQ1VyTHpvSENCTUREd3NTRWd2OG5nc1NFZ3NERVIwTENRVUVEd291Q2hFSENRVUdGd0lRQ2Y1QUNnc0VGZ1FFQ1FnUkNoa1dDZzREQkF3TklBUU9Cd0cvQ2dzQUFBQUFBd0FBLzQ4RGlBTXRBQmNBTHdBL0FDNUFLd0FFQlFSdkFBVURCVzhBQXdBQ0FRTUNZQUFCQUFBQlZBQUJBUUJZQUFBQkFFd1hIeHNiR3hJR0JSb3JKUVVHSWljbEpqUS9BVFl5SHdFV01qOEJOaklmQVJZVUp3VUdJaWNsSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVTFFFbU5EY2xOaklYQlJZVUJ3VUdJZ041L3BZT0l3NyttQXNMVlFRTEJOc2dTeC9jQkFzRVZRc0wvcFlPSXc3K21Bc0xWUVFMQk5zZ1NpRGNCQXNFVlF2K1QvNlhEQXdCYVE4akRnRnBEQXorbHc0alpzNElDTTRHRndZd0F3TjlFaEo5QXdNd0JoZmh6Z2tKemdVWUJUQURBMzBSRVgwREF6QUZHQlRPQlJjR3pnZ0l6Z1lYQmM0SEFBQUFCQUFBQUFBRElBSXdBQThBTUFCQUFGQUEya0FRU1VFQ0JnYzVNUUlFQlM0QkFnUURSMHV3R1ZCWVFERUFCd01HQXdkbEFBUUZBZ0lFWlFnQkFBQURCd0FEWUFBR0FBVUVCZ1ZnQ1FFQ0FRRUNWQWtCQWdJQldRQUJBZ0ZORzB1d0dsQllRRElBQndNR0F3ZGxBQVFGQWdVRUFtMElBUUFBQXdjQUEyQUFCZ0FGQkFZRllBa0JBZ0VCQWxRSkFRSUNBVmtBQVFJQlRSdEFNd0FIQXdZREJ3WnRBQVFGQWdVRUFtMElBUUFBQXdjQUEyQUFCZ0FGQkFZRllBa0JBZ0VCQWxRSkFRSUNBVmtBQVFJQlRWbFpRQnNTRUFJQVRVdEZRejA3TlRNaUlSQXdFakFLQndBUEFnOEtCUlFyQVNFaUJoVVJGQll6SVRJMk5SRTBKZ0VqSWlZMU5qYzJOelkzTmpVMEp5WTBOaklXRlJRSEJoVVVGeFlYRmhjV0JqY1VCaXNCSWlZOUFUUTJPd0V5RmhVMUZBWXJBU0ltUFFFME5qc0JNaFlWQXVUK0lCa2pJeGtCNEJrakkvN3ByQTRVQVJRT0hoQUdCQTRWSWpvaUZRNEVCaEJBQVFJVTNBd0lXZ2dNREFoYUNBd01DSllJREF3SWxnZ01BakFqR2Y3ZUdTTWpHUUVpR1NQK3JCa1FGQkVNRGdjSUJRa09EQk05S0NnZUlCSU1EZ2tGQ0FZYkpROGFSZ2dNREFnZUNBd01DRkFJREF3SUhnZ01EQWdBQXdBQUFBQURHd0oyQUNVQUxnQTNBRXBBUndBQ0FBTUFBZ05nQUFFS0FRQUZBUUJnQUFVQUJBY0ZCR0FKQVFjR0JnZFVDUUVIQndaWUNBRUdCd1pNQVFBMk5USXhMU3dwS0NBZEdoY1VFZzhNQ1FjQUpRRWxDd1VVS3dFaE1qWS9BVFltSXlFbkxnRXJBU0lPQVJZN0FSTWVBVE1oTWo0QkppTWhJaVluTlNZMkJ4UVdNalkwSmlJR0Z4UVdNalkwSmlJR0FhZ0JKd2NMQVRZRERBcitPQWdERUFvd0RCTUNFZzBjWGdNUUNnRmNEQk1DRWczK3pnb1FBZ1VTSGgwcUhSMHFIZkFkS2gwZEtoMEJYZ2dIdmdvUEhBb01FQmtUL3NJS0RCQVpFd3dKQVE0WTVoVWRIU29kSFJVVkhSMHFIUjBBQUFJQUFBQUFBeUlDVEFBTEFDQUFKRUFoQUFFQUFXOEFBQUlBYndBQ0F3TUNWQUFDQWdOWUFBTUNBMHc0R0RRUkJBVVlLd0VXTWpjQk5pWWpCU0lHRndVMEpnOEJCaUl2QVNZR0ZSRVVGak1oTWpZMUlnSG5CZzhHQVJzRkJ3NzkwQXdNQ0FKVEVnZmNGajhYM1FjU0l4a0I0QmtqQVFFc0JRVUJCZ2tSQVJFSmJ3b0lCOHdWRmN3SENBcisvQmtqSXhrQUFBQUNBQUQva0FQQ0F5d0FGQUFzQURSQU1RWUJBQVVBYndBRkF3VnZBQU1FQTI4QUJBSUVid0FDQVFKdkFBRUJaZ0VBS0Nja0l5QWZHQmNMQ2dBVUFSUUhCUlFyQVNJSEJnY0dGQmNXRnhZeU56WTNOalFuSmljbUV3RUdJaThCSmpRL0FUWXlId0VXTWo4Qk5qSWZBUllVQWZSK2EyazhQejg4YVd2OGJHZzlQejg5YUd5RS90b0pHUW1oQ1FrcUNSa0lWUVlSQnRjSkdRZ3JDZ01zUHoxb2JQeHNhRDAvUHoxb2JQeHNhRDAvL3FYKzFnZ0lwQWdhQ0NvSkNWWUdCdDhKQ1NvSkdRQUFBQUVBQVArMUE1MERCUUJIQUVOQVFFVUJBd0FCUndZQkFBTUFid0FEQkFOdkFBSUZBUVVDQVcwQUFRRnVBQVFGQlFSVUFBUUVCVmdBQlFRRlRBSUFRajg2TnpFdklTQVpGd0JIQWtjSEJSUXJBU01pQmgwQkZBWW5KaWN1QVFjR0J3NEJCd1lXRng0Qk16STJOejRCTHdFdUFRY09BU2NtSnk0Q056WTNQZ0V6TWhZWEZoY1dCaXNCSWdZZEFSUVdNeUV5TmpVUkxnRURmamtNRVEwS0NRdEl3V2hLUEZoaEFnSTdOenFXVkVtSE53b0JDU2dJRmdrMGgwWWtKVFpHRmc4SkZpaUVURHBxS0F3TEJBOE9od3NTRUFzQllBb1BBaEVEQlJFTWhnNElDQXdIU1RrVUR5azVzbVZPbFRnOVFESXVDUmtKS0FnQkJ5d2ZFUWtXSVdaN1B5UWxSa3dzS0FzUUN3d1NDendMRUE4S0FWNE1FUUFFQUFEL3lnT2JBdklBRHdBZkFDOEFQd0EyUURNQUFBQUJBZ0FCWUFBQ0FBTUdBZ05nQUFZQUJ3UUdCMkFBQkFVRkJGUUFCQVFGV0FBRkJBVk1OVFUxTlRVMU5USUlCUndyQVRRbUl5RWlCaDBCRkJZeklUSTJOUWMwSmlNaElnWWRBUlFXTXlFeU5qVVJOQ1lqSVNJR0hRRVVGak1oTWpZMUV6UW1JeUVpQmgwQkZCWXpJVEkyTlFPYkVRejg3QXdSRVF3REZBd1JtaEVNL1lZTUVSRU1Bbm9NRVJFTS9ZWU1FUkVNQW5vTUVab1JEUHpzREJFUkRBTVVEQkVDMVFzU0VnczZDeEVSQzYwTUVSRU1PUXdSRVF6K2JBc1NFZ3M2Q3hJU0N3RWhDeEVSQ3pvTUVSRU1BQUFBQUFFQUFBQUFBMklDUlFBTUFCaEFGUUlCQUFFQWJ3QUJBV1lDQUFnSEFBd0NEQU1GRkNzVElUSWVBUWNCQmlJbkFTWTJvQUtvQ2c0QkIvNnpDQjhKL3E4S0RnSkZEaFFJL21nTURBR1lEUjBBQWdBQS80Z0Rxd010QUI0QUxRQUl0UzBvRkFnQ0xTc0JCUVl1QVRVUk5DWUhEZ0VIQmhjZUFSY1dGeFkzUGdFM05qVTBKeTRCQlNVK0FTY21KeVluSmdZVkVSUVdBMnYrZGcwYkVoY05ZSlVrSmdzS1oxRlNZVjVZVklNa0pnWUNHLzZkQVhzUkNRdENZR055RkNBVkFaRFpCd1lWRGdIWURoSUVHb1pkWUdoZ3BETTFDZ29kSEhkUlUxd2pJZzRNWDhvSUp4QmJQRDRTQkJzVS9rNE5EQUFBQUFBRUFBRC9zd1BDQXdVQUhRQW1BQzhBT0FCQlFENElBUUFEQUc4SEJRSURBZ052Q3dZS0JBa0ZBZ0VDYndBQkFXWXhNQ2duSHg0QkFEVTBNRGd4T0N3ckp5OG9MeU1pSGlZZkpoUVNBQjBCSFF3RkZDc0JJZ2NHQndZVkZCY1dEd0VHRmo4Qk5oY1dNelkzTmpjMkppY21KeVlCSWlZME5qSVdGQVl6SWlZME5qSVdGQVl6SWlZME5qSVdGQVlCOUg1cmFEMCtPQW9HUEFRUkRLWU5GRytCZkd0b1BEOEJQejVvYS82Y0h5NHVQeTB0eHg4dUxqOHRMY2NmTGk0L0xTMERCVGs0WDJKelptWVBFcU1NRUFNL0JnbzlBVG80WDJMb1kyQTNPdjRNTGo4dExVQXRMajh0TFQ4dUxqOHRMVDh1QUFBQUF3QUEvNUFEd2dNc0FCUUFLUUE3QUVKQVB3WUJBQUFEQkFBRFlBZ0JCQUFGQWdRRllBY0JBZ0VCQWxRSEFRSUNBVmdBQVFJQlRDd3FGaFVCQURVeUtqc3NPeUFmRlNrV0tRc0tBQlFCRkFrRkZDc0JJZ2NHQndZVUZ4WVhGakkzTmpjMk5DY21KeVlESWljbUp5WTBOelkzTmpJWEZoY1dGQWNHQndZVElTSUdCd1lYSGdFeklUSTJOelluTGdFQjlIMXJhVDAvUHoxcGEvcHNhRDQvUHo1b2JIMWRVVTR2THk4dlRsRzZVVTR2THk4dlRsRnIvbkFMRUFJREF3RVJDd0dRQ3hBQ0F3TUNFQU1zUHo1b2JQcHNhRDQvUHo1b2JQcHNhRDQvL05ndkwwNVJ1bEZPTHk4dkwwNVJ1bEZPTHk4QmxBOEtIeU1MRGc4S0lDSUtEd0FBQUFBQkFBRC84QUxiQXRBQURBQUt0d0FBQUdZVEFRVVZLd0VSRkE0Qkp3RW1ORGNCTmhZQzJ3NFVDUDVvREF3Qm1BMGRBckw5V0FvT0FRY0JUUWtmQ0FGUkNnNEFBQU1BQVArT0E4SUROQUEzQUc0QWtnQThRRG1LZ1hnREJRQUJSd0FDQXdKdkFBTUVBMjhBQkFFRWJ3QUJBQUZ2QUFBRkFHOEFCUVlGYndBR0JtYU5qSWlIZTNwMmRVaEdJeEFIQlJZckpTSW5KaWNtQmc4QkRnRW1KeTRCTmo4Qk5qYzJGaGNXRnhZWEhnRS9BVFl2QVNZbkppY3VBUVlIQmc4QkRnRVdGeDRCTmo4Qk5pWUJQZ0VtSnk0QkJnOEJCaFlYRmhjV05qOEJQZ0VXRng0QkJnOEJCZ2NHSnlZbkppY3VBUThCRGdFZkFSWVhGaGNXRnhZMk56WTNGemMyTkM4QkppSVBBU2NtSWc4QkJoUWZBUWNHRkI4QkZqSS9BUmNXTWo4Qk5qUW5BYzRSRWc0WEJRc0RCeGhBUWhrY0ZSRWFmeGdpRkNrVEdSSUlDUVVUQnpBS0NBd0hCQTBjSmxCUkpSa2JleXdpR2lvc2Vuc3VLZ2dLQVRBdEh5TXZMWGQxTENZSkNBd29Id1lMQXdjWVFFSVpIQlVSR244VkpTb21HQk1JQndVVEJ5NEdBUVVMQmdZU0ZpSXRKMUlsSGhiVldRWUdOZ1lQQmxaVEJnOEdOZ1lHVTFFR0JqWUdEd1pSVmdZUEJqWUdCcElHQWdnQkFnTUlHQk1MRmhsRlJobC9HQWtGQXdnSkZBb05DUUlITUF3TkRnY0dEUlFYRHcwVUN4dDdMSFoyTFM4akhpNHFDQllCRUM1N2Vpd3FHaUlzSmdrV0FnTUtBUUlEQnhnVEN4WVpSVVlaZmhZTERCSUlGQWdPQ0FJSExnVU9CZzBJQmhFUEZna0lEUlFRRnVaWUJnOEdOZ1lHVzFNR0JqWUZFQVpTVVFZUEJqWUdCbEZYQlFVMkJnOEdBQUFBQUFVQUFQK1FBOElETEFBUEFCOEFMd0JIQUY4QWFrQm5EQUVBQUFFQ0FBRmdDZzBDQWdBRENRSURZQkFCQ1FBTEJBa0xZQWNPQWdRQUJRWUVCV0FQQVFZSUNBWlVEd0VHQmdoWUFBZ0dDRXhLU0RJd0lpQVNFQUlBV2xkU1QwaGZTbDlDUHpvM01FY3lSeW9uSUM4aUx4b1hFQjhTSHdvSEFBOENEeEVGRkNzQklTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ01oSWdZZEFSUVdNeUV5TmowQk5DWUhJU0ltUFFFMEppc0JJZ1lkQVJRV015RXlOajBCTkNZRElTSW1QUUUwSmlzQklnWWRBUlFXTXlFeU5qMEJOQ1lEcGZ5ZUN4RVJDd05pQ3hJU0MvMWZEQkVSREFLaEN4SVNDLzFmREJFUkRBS2hDeElTQy8wU0RCRVNDem9MRVJFTEEySUxFaElML1JJTUVSSUxPZ3NSRVFzRFlnc1NFZ01zRWd0Z0RCRVJER0FMRXVjU0N6b0xFaElMT2dzUy9uOFJERGtNRVJFTU9Rd1J3QkVNaGd3UkVRejZDeElTQ3pvTEVnR0JFUXVIQ3hJU0Mvb0xFaElMT2dzU0FBQUNBQUFBQUFMdUFvb0FGd0FsQURCQUxRVUJBd0VWQVFJQUFrY0FBUU1CYndBREFBTnZCQUVBQWdCdkFBSUNaZ0lBSWlBU0R3b0hBQmNDRndVRkZDc0JJeUltUFFFMEppc0JJZ1lWRVJRV015RXlOalVSTkNZM0p5WWlCaDBCRkJZN0FUSTJOQUxhakJrakRBaklHU01qR1FGOEdTTU1DSVFFREFnWUVHb0dDQUd1SXhtTUNBd2pHZjRnR1NNakdRRXNDQXhVaEFRSUJtb1FHQWdNQUFBQUJRQUFBQUFERmdLS0FCY0FKd0EzQUVjQVZ3QndRRzBGQVFFQU1DZ0NCZ1ZRU0FJSkNnMEJBZ2xBT0FJSEFnVkhDd0VBQUFFREFBRmdEQUVEQUFVR0F3VmdBQVlBQ2drR0NtQUFDUWdCQWdjSkFtQUFCd1FFQjFRQUJ3Y0VXQUFFQndSTUdoZ0NBRlJTVEVwRVFqdzZORElzS2lJZkdDY2FKeElQQ2djQUZ3SVhEUVVVS3dFaElnWWRBUlFXTXlFeUZoVVJGQlk3QVRJMk5SRTBKZ2NoSWdZVkVSUVdNeUV5TmpVUk5DWUZORFk3QVRJV0hRRVVCaXNCSWlZMUZ4UUdLd0VpSmowQk5EWTdBVElXRlRjVUJpc0JJaVk5QVRRMk93RXlGaFVDMnY3QUdTTUdCQUVpR1NNR0JBb1pJeU9sL3NBWkl5TVpBVUFaSXlQK3V3d0l5QWdNREFqSUNBendEQWpJQ0F3TUNNZ0lEQ2dNQ1BBSURBd0k4QWdNQW9vakdRb0VCaU1aL3NvRUJpTVpBVlFaSTR3akdmNnNHU01qR1FGVUdTTmtDQXdNQ0JRSURBd0k4QWdNREFnVUNBd01DR1FJREF3SUZBZ01EQWdBQ1FBQS81QUR3Z01zQUE4QUh3QXZBRDhBVHdCZkFHOEFod0NmQUpaQWt4UUJBQUFCQWdBQllCSVhCaFlFRlFZQ0J3VUNBeEVDQTJBY0FSRUFFd2dSRTJBUEdnd1pDaGdHQ0EwTEFna09DQWxnR3dFT0VCQU9WQnNCRGc0UVdBQVFEaEJNaW9oeWNHSmdVbEJDUURJd0lpQVNFQUlBbXBlU2o0aWZpcCtDZjNwM2NJZHloMnBuWUc5aWIxcFhVRjlTWDBwSFFFOUNUem8zTUQ4eVB5b25JQzhpTHhvWEVCOFNId29IQUE4Q0R4MEZGQ3NCSVNJR0hRRVVGak1oTWpZOUFUUW1CU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZaEl5SUdIUUVVRmpzQk1qWTlBVFFtQVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWWhJeUlHSFFFVUZqc0JNalk5QVRRbUJ5RWlKajBCTkNZckFTSUdIUUVVRmpNaE1qWTlBVFFtQXlFaUpqMEJOQ1lyQVNJR0hRRVVGak1oTWpZOUFUUW1BNlg4bmdzUkVRc0RZZ3NTRXYzYWhnd1JFUXlHREJFUkFRS0hDeElTQzRjTEVSRUJBb2NMRWhJTGh3c1NFdjNhaGd3UkVReUdEQkVSQVFLSEN4SVNDNGNMRVJFQkFvY0xFaElMaHdzU0VndjlFZ3dSRWdzNkN4RVJDd05pQ3hJU0MvMFNEQkVTQ3pvTEVSRUxBMklMRWhJRExCSUxZQXdSRVF4Z0N4TG5FZ3M2Q3hJU0N6b0xFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTL244UkREa01FUkVNT1F3UkVRdzVEQkVSRERrTUVSRU1PUXdSRVF3NURCSEFFUXlHREJFUkRQb0xFaElMT2dzU0FZRVJDNGNMRWhJTCtnc1NFZ3M2Q3hJQUFBQUFCQUFBLzVBRHlRTXNBQThBSndBL0FFOEFhRUJsQUF3R0RHOEFEUVVIQlEwSGJRQUhBZ1VIQW1zRUFRSUlCUUlJYXdzQkNBTUZDQU5yQUFNQUJRTUFhd0FBQ1FVQUNXc0FBUW9CY0FBR0FBVU5CZ1ZnQUFrS0NnbFVBQWtKQ2xnQUNna0tURTFLUlVJOU96WTFORE1rRlJFVUpCUWpOVElPQlIwckpUUW1JeUVpQmgwQkZCWXpJVEkyTlFNaklnWWZBUll5UHdFMkppc0JORFkzTmpNMUlnY09BUVVtSWc4QkJoWTdBUlFPQVNNVk1qYzJOelkxTXpJMkp4TTBKaU1oSWdZZEFSUVdNeUV5TmpVQmdSSUwvdDhMRVJFTEFTRUxFdVZlRHdzSW1nWVBCcG9JQ3c1Yk55c3VMMVZIUlZFQ2lBWVBCcG9JQ3c1ZE1WZzVWVWhHS0NwZUR3c0lBaElML3Q4TEVoSUxBU0VMRW9FTEVoSUwxQXNTRWdzQi9oTUlvQVFFb0FrU0wxa2NISFFwS1kwMEJBU2dDQk01VnpCMEtTbEZTRlVUQ0FIakN4SVNDOVFMRWhJTEFBQUNBQUQvdHdPYkF3VUFEd0E2QUR4QU9RQURBQU52QndFQUFnQnZCQWdDQWdVQ2J3QUZBUVZ2QUFFR0FXOEFCZ1ptRWhBQ0FESXdLaWdqSVJvWEVEb1NPZ29IQUE4Q0R3a0ZGQ3NUSXlJR0ZSRVVGanNCTWpZMUVUUW1CU01pSmowQk5DWXJBU0lHSFFFVUJnY0dJeUlHRlJFVUZqTVdGeFlYRmhjV016STNOamMyUFFFMEpzcGdEQkVSRERBZ0xSSUNlWE1mTGkwZ01Bc1NMQ1FtTFF3UkR3d3JLUll2S3hzcUxsY3hReUlvTFFHK0VReitSZ3NTTGg4Qmlnd1JFeTRmd0NBdEVReHpNMTBjSGhFTS9vQU1FUUlLQlE0TkJnZ0tEaVVyVC9BZ0xRQUFBQUFDQUFEL2tBUENBeXdBSHdCREFFZEFSREFCQlFZQlJ3QUdCUVp2QndFRkFBVnZBZ2dDQUFRQWJ3QUVBUVJ2QUFFREF3RlVBQUVCQTFnQUF3RURUQUlBUGowMU1pb3BJaUVhRnhJUENnY0FId0lmQ1FVVUt5VWpJZ1lkQVJRR0l5RWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTFFVFFtQlJZeU53RTJOQzhCSmlJUEFRWW1OUkV1QVNzQklnWVZFUlFHTHdFbUlnOEJCaFFYQTZVNkN4SVJEUDJHREJFU0N6b0xFUzBmQXdJZ0xSTCtNUWdZQ0FFRUNBZ3BDQmNKYkFnWUFSUUtPZ3NTR0Foc0NSY0lLUWdJL2hJTHdBd1JFUXpBQ3hJU0MvNzhJQzB1SHdFRUN4Si9DUWtCQkFnWENTZ0pDV3NKQ1EwQm1nc1NFZ3YrYUEwSkNXc0pDU29KRndnQUFBQUFBUUFBQUFBRHd3S2tBQmNBSkVBaEFBSUFBbThBQUFFQWJ3QUJBd01CVkFBQkFRTllBQU1CQTB3WEV4TVdCQVVZS3lVQkpqUS9BVFl5SHdFV01qY0JOaklmQVJZVUJ3RUdJZ0Z2L3NNSUNDb0pHUW51QmhFR0FkTUpHUWtxQ0FqOTRBa1pJUUUvQ1JrSUt3Z0k4UVVGQWRjSkNTb0lHZ2o5MmdvQUFBRUFBUCsxQXU4REJRQVhBQkZBRGdBQUFRQnZBQUVCWmg4V0FnVVdLd1VCSmpRM0FUWXlId0VXRkFjQkJoUVhBUllVRHdFR0lnS1MvbkFKQ1FHUUNCb0lLZ2tKL3NNSUNBRTZDQWdyQnhkREFZb0pHUWdCaXdnSUt3Z2FDUDdLQ0JrSi9zb0lHZ2dxQndBQUFBUUFBUCtRQThJRExBQVZBQ3dBUWdCWUFFOUFURkZJRGdVRUFRQTdNaVVjQkFJRUFrY0hDQUlBQVFCdkFBRUdBVzhBQmdNR2J3QURCQU52QUFRQ0JHOEZDUUlDQW1ZWUZnSUFWMVJMU2tFK05UUWpJaFlzR0N3TUN3QVZBaFVLQlJRckFTRWlCaDhCQndZVUh3RVdNajhCRnhZMk5SRTBKZ0VoTWpZbUx3RTNOalF2QVNZaUR3RW5KZ1lWRVJRV0pSRTBKZzhCSnlZaUR3RUdGQjhCQndZV015RXlOZ0VSRkJZL0FSY1dNajhCTmpRdkFUYzJKaU1oSWdZRHEvN1ZEZ2NNWHEwSEIwY0lGQW12WGdzV0R2eVBBU2tKQ2dJSVhxMElDRWNIRlFtdFlBMFhFZ09KRmd0ZXJRY1ZDVWNIQjY5ZURBY09BU2dKRGZ4bEdRdGdyd2dXQjBjSUNLMWVDd1lQL3RnS0ZBTXNGZ3RlclFjVkNVY0hCNjllREFjT0FTZ0pEZnhrREJJSFlLOElGZ2RIQ0FpdFhnc0dELzdZQ2hVWEFTc09Cd3hlclFnSVJ3Y1ZDYTllQ3hZT0EzSCsyQThHQzE2dEJ3ZEhDQlFKcldBTkdCTUFBQUFBQWdBQS80WUR5d014QURzQWNRQVBRQXdqQVFCRkFBQUFaaVFCQlJVckpTOEJKaWNtQmc4QkRnRW1KeTRCTmo4Qk5qYzJGeFlYRmhjZUFUOEJOaWNtSnlZWEppY21KeVlHQndZUEFRNEJGeFlYRmhjV05qOEJOalFtQVNZbkpnWVBBUVlXRnhZWEZqOEJQZ0VXRng0QkJnOEJCZ2NHSnlZbkppY3VBUThCRGdFWEZoY1dGeDRCTmpjMlB3RTJOelltQWdzb0R4RUpCUTRFQ1J4SlN4d2dHQk1ka2hzbkx5MGdFZ29KQmhZSE5nc0pCUWhoVXgwUkpqVXRYaWdqR0kweUp3OFBNREpIUkl3ME1BWU1BVm8wUlVPR01Td0tDZzBwS0E0SkNodEtTaHdnR1JNZWtob25NQzBjRmdvSkJoWUhOUVlCQlFnVEVod3BYRjBwSXhtU05SRVNLREFHQkFRREFnTUVDaHdXRGhrYlRsQWVraGtPQ3hFUEVnb1BDZ0lJTmd3UkJ3bHNYUnNKR1FvSURSWVVHSTB5aDBKRk16Y1VGQ00wTVFRUURRSzBNQThQS0RJcUNoc0NBd3dEQ1FrY0ZnMFpHMDlRSHBJYURBd1NEQlFMRGdzQ0NUWUZFQWdORVJRUkdoRU9GUlFaa2pSSFJZc0FBQUVBQVAvYkEzVUMzZ0F2QURsQU5pc0JBd0VCUndBQUJBQnZBQUVDQXdJQkEyMEFBd051QlFFRUFnSUVWQVVCQkFRQ1dBQUNCQUpNQUFBQUx3QXZOeGtYSEFZRkdDc0JKaWNtSnlZL0FUWTBMd0VtSWdjQkJoUVhBUll5UHdFMk5DOEJKalkzRmhjV0Z4WVhGQlk3QVRJMkp5NEJKeVlCY1FJREJRSUNCV3NKQ1NnSkZ3aisvQWtKQVFRSUZ3a29DUWxwQ1FnS2FscFlOamdHRWdzNkRRNENCNGh3ZFFIMkF3TUhCZ2tGYXdrWENTb0pDZjc4Q0JjSi92d0lDQ2tJR0Foc0NCWURCRFkxV0Z0ckN4QVNEWXJsUTBVQURRQUEvNUFEbXdNc0FBOEFId0F2QUQ4QVR3QmZBRzhBZndDUEFKOEFyd0MvQU04QXdFQzlHZ0VBQUFFQ0FBRmdIUVljQkJzRkFnY0ZBZ01JQWdOZ0lBd2ZDaDRGQ0EwTEFna09DQWxnSXhJaUVDRUZEaE1SQWc4VURnOWdKaGdsRmlRRkZCVVZGRlFtR0NVV0pBVVVGQlZZR1JjQ0ZSUVZUTUxBc3JDaW9KS1Fnb0J5Y0dKZ1VsQkNRREl3SWlBU0VBSUF5c2ZBejhMUHVyZXd2N0svcXFlZ3I2S3ZtcGVRbjVLZmlvZUFqNEtQZW5kd2YzSi9hbWRnYjJKdldsZFFYMUpmU2tkQVQwSlBPamN3UHpJL0tpY2dMeUl2R2hjUUh4SWZDZ2NBRHdJUEp3VVVLd0VoSWdZZEFSUVdNeUV5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lGSXlJR0hRRVVGanNCTWpZOUFUUW1JU01pQmgwQkZCWTdBVEkyUFFFMEppRWpJZ1lkQVJRV093RXlOajBCTkNZRkl5SUdIUUVVRmpzQk1qWTlBVFFtSVNNaUJoMEJGQlk3QVRJMlBRRTBKaUVqSWdZZEFSUVdPd0V5TmowQk5DWUZJeUlHSFFFVUZqc0JNalk5QVRRbUlTTWlCaDBCRkJZN0FUSTJQUUUwSmlFaklnWWRBUlFXT3dFeU5qMEJOQ1lEZnZ6c0RCRVJEQU1VREJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSL1kydERCRVJESzBMRWhJQkthME1FUkVNclFzUkVRRW9yUXNTRWd1dERCRVIvWTJ0REJFUkRLMExFaElCS2EwTUVSRU1yUXNSRVFFb3JRc1NFZ3V0REJFUi9ZMnREQkVSREswTEVoSUJLYTBNRVJFTXJRc1JFUUVvclFzU0VndXREQkVSQXl3U0MyQU1FUkVNWUFzUzV4SUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFc0FTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hMQkVRdzVEQkVSRERrTUVSRU1PUXdSRVF3NURCRVJERGtNRVJFTU9Rd1J3QklMT2dzU0VnczZDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDem9MRWdBQUFRQUFBQUFETkFKUEFEQUFPVUEySlE0Q0FBRVpBUVFBQWtjdEJRSUJSUVVCQkFBRWNBSUJBUUFBQVZRQ0FRRUJBRmdEQVFBQkFFd0FBQUF3QURBMkhpWW9CZ1VZS3lVaUp5WW5Bd2NPQVNzQklpWTlBVFEyT3dFM1BnRWVBUmNUTno0QkhnRWZBVE15RmgwQkZBWXJBU0ltTHdFSERnRUI2Z2NIREFST1FRTVBDVm9JREF3SVJsd0VFQlFQQWs5b0JCQVNEZ1EwV2dnTURBaHVDUThFSVhBRURvSUVCaEFCT0pVSkNnd0lGQWdNMUFrS0Fnd0svc1RuQ1FvQ0N3aDREQWdVQ0F3S0NFMzNDQW9BQ0FBQUFBQUREQUtLQUE4QUh3QXZBRDhBVHdCZkFHOEFqd0RZUUJ5RkFSTU9EUUVGQUdoZ1NFQW9JQVlFQlZoUU9EQVlFQVlDQXdSSFM3QVZVRmhBUFJFQkR3NE9EMk1TRUJVRERnQVRBQTRUWVJRQkFBMEpBZ1VFQUFWZ0RBZ0NCQXNIQWdNQ0JBTmdDZ1lDQWdFQkFsUUtCZ0lDQWdGWUFBRUNBVXdiUUR3UkFROE9EMjhTRUJVRERnQVRBQTRUWVJRQkFBMEpBZ1VFQUFWZ0RBZ0NCQXNIQWdNQ0JBTmdDZ1lDQWdFQkFsUUtCZ0lDQWdGWUFBRUNBVXhaUUROeGNBRUFpWWVDZ0gxOGVYaDFkSENQY1k5c2FtUmlYRnBVVWt4S1JFSThPalF5TENva0lod2FGQklLQndBUEFROFdCUlFyQVNFaUJoVVJGQll6SVRJMk5SRTBKZ0VVQmlzQklpWTlBVFEyT3dFeUZoVTFGQVlyQVNJbVBRRTBOanNCTWhZVkZ4UUdLd0VpSmowQk5EWTdBVElXRlRVVUJpc0JJaVk5QVRRMk93RXlGaFVYRkFZckFTSW1QUUUwTmpzQk1oWVZOUlFHS3dFaUpqMEJORFk3QVRJV0ZSTWpOVFFtSWdZZEFTTTFOQ1lpQmgwQkl5SUdIUUVVRmpNaE1qWTlBVFFtQXZqOStBZ01JeGtCdUJrakRQNlFEQWdvQ0F3TUNDZ0lEQXdJS0FnTURBZ29DQXlNREFnb0NBd01DQ2dJREF3SUtBZ01EQWdvQ0F5TURBZ29DQXdNQ0NnSURBd0lLQWdNREFnb0NBd29NaGNoR0xRWElSZ3lHU01NQ0FJSUNBd2pBYTRNQ1A3VUdTTWpHUUVzQ0F6KzZBZ01EQWdvQ0F3TUNHUUlEQXdJS0FnTURBaTBDQXdNQ0NnSURBd0laQWdNREFnb0NBd01DTFFJREF3SUtBZ01EQWhrQ0F3TUNDZ0lEQXdJQVFRVUVSY1hFUlFVRVJjWEVSUWpHUlFJREF3SUZCa2pBQUFHQUFEL3R3T2JBd1VBRHdBZkFDOEFQd0JQQUY4QVYwQlVEZ1FOQWd3RkFBRUFid1VEQWdFR0FXOFJDaEFJRHdVR0J3WnZDd2tDQndkbVVsQkNRREl3SWlBU0VBSUFXbGRRWDFKZlNrZEFUMEpQT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmQ2djQUR3SVBFZ1VVS3dFaklnWVZFUlFXT3dFeU5qVVJOQ1loSXlJR0ZSRVVGanNCTWpZMUVUUW1JU01pQmhVUkZCWTdBVEkyTlJFMEpnRWpJZ1lWRVJRV093RXlOalVSTkNZaEl5SUdGUkVVRmpzQk1qWTFFVFFtSVNNaUJoVVJGQlk3QVRJMk5SRTBKZ0VYclF3UkVReXRDeElTQVNtdERCRVJESzBMRVJFQktLMExFaElMclF3UkVmMk5yUXdSRVF5dEN4SVNBU210REJFUkRLMExFUkVCS0swTEVoSUxyUXdSRVFNRkVReit1UXNSRVFzQlJ3d1JFUXordVFzUkVRc0JSd3dSRVF6K3VRc1JFUXNCUnd3Ui9qTVNDLzY1REJFUkRBRkhDeElTQy82NURCRVJEQUZIQ3hJU0MvNjVEQkVSREFGSEN4SUFBQUFBQmdBQUFBQUR3Z0tsQUE4QUh3QXZBRDhBVHdCZkFFUkFRUUFDQVFKdkN3RUpDQWx3QUFFQUFBTUJBR0FBQXdZQkJBVURCR0FIQVFVSUNBVlVCd0VGQlFoWUNnRUlCUWhNWFZwVlVrMUtOVFUxTlRVMU5UVXlEQVVkS3hNVUJpc0JJaVk5QVRRMk93RXlGaFVoTkNZaklTSUdIUUVVRmpNaE1qWTFCVFFtS3dFaUJoMEJGQlk3QVRJMk5TVTBKaU1oSWdZZEFSUVdNeUV5TmpVRk5DWXJBU0lHSFFFVUZqc0JNalkxSlRRbUl5RWlCaDBCRkJZeklUSTJOWm9TQ3pvTEVSRUxPZ3NTQXlnU0MvMWZEQkVSREFLaEN4TDgyQklMT2dzUkVRczZDeElDMnhJTC9hd01FUkVNQWxRTEV2MGxFZ3M2Q3hFUkN6b0xFZ01vRWd2OVh3d1JFUXdDb1FzU0FrNExFUkVMT2d3UkVRd01FUkVNT2dzUkVRdlRDeElTQ3pvTEVoSUxPZ3NTRWdzNkN4SVNDOU1MRWhJTE9nc1NFZ3M2Q3hJU0N6b0xFaElMQUFBQUFBWUFBQUFBQThJQ3BRQVBBQjhBTHdBL0FFOEFYd0E4UURrQ0FRQURBUUVFQUFGZ0JnRUVCd0VGQ0FRRllBb0JDQWtKQ0ZRS0FRZ0lDVmdMQVFrSUNVeGRXbFZTVFVvMU5UVTFOVFUxTlRJTUJSMHJFelFtS3dFaUJoMEJGQlk3QVRJMk5TVTBKaU1oSWdZZEFSUVdNeUV5TmpVRk5DWXJBU0lHSFFFVUZqc0JNalkxSlRRbUl5RWlCaDBCRkJZeklUSTJOUVUwSmlzQklnWWRBUlFXT3dFeU5qVWxOQ1lqSVNJR0hRRVVGak1oTWpZMW1oSUxPZ3NSRVFzNkN4SURLQklML1Y4TUVSRU1BcUVMRXZ6WUVnczZDeEVSQ3pvTEVnTGJFZ3Y5ckF3UkVRd0NWQXNTL1NVU0N6b0xFUkVMT2dzU0F5Z1NDLzFmREJFUkRBS2hDeElDaUF3UkVRdzZDeEVSQ3pvTUVSRU1PZ3NSRVF2VEN4SVNDem9MRWhJTE9nc1NFZ3M2Q3hJU0M5TUxFaElMT2dzU0VnczZDeElTQ3pvTEVoSUxBQUFBQVFBQS82QUR3Z01iQUNzQUUwQVFBZ0VBQVFCdkFBRUJaajRlTXdNRkZ5c0JFeDRCTXlFeUZnWVBBUTRCRnhNV0RnRXZBU1lpRHdFR0xnRTNFelltTHdFdUFUWXpJVEkzRXo0QkZnSVBXQU1QQ1FFaERoQUNDK29JQlFOY0JBMFlDK2tIRXdqckN4a05CVmdEQlFmckN3SVJEUUVoRmdWYUJCY1hBd1ArOHdnSkZSc0lyUVlTQ2Y3ckRSWUdDS29GQmFvSUJoWU5BUlVKRWdhdENCc1ZFUUVQRFFrTEFBQUFBUUFBLzdZQzd3TUZBQmNBRVVBT0FBRUFBVzhBQUFCbUh4WUNCUllyQ1FFV0ZBY0JCaUl2QVNZME53RTJOQ2NCSmpRL0FUWXlBVmdCamdrSi9uSUlHUWtxQ1FrQk9Ra0ovc2tKQ1NvSUdBTDkvbllJR2dqK2Rna0pLZ2dhQ0FFMkNCb0lBVFlJR2dncUNBQUFBUUFBQUFBRG13SlpBQmNBSUVBZEF3RUJBZ0Z2QUFJQUFBSlVBQUlDQUZnQUFBSUFUQk1URnhJRUJSZ3JDUUVHSWljQkpqUS9BVFl5RndFV01qY0JOaklmQVJZVUE1UCtkZ2dhQ1A1MkNRa3FDUmtJQVRZSUdnZ0JOZ2dhQ0NvSUFmeitjZ2tKQVk0SUdnZ3FDUW4reHdrSkFUY0pDU29JR0FBQUFBUUFBUCsyQTlVQ3VBQWtBRFFBUkFCVUFFcEFSd01CQUFnSkNBQUpiUUFDQ1FvSkFncHRBQVFLQkhBQUJRQUdBUVVHWUFjQkFRQUlBQUVJWUFBSkFnb0pWQUFKQ1FwWUFBb0pDa3hTVDBwSE5UVTFPQmNURlRnUkN3VWRLeVVtSWc4QkJpWTlBVFFtS3dFaUJoMEJGQVlpTHdFbUlnOEJCaFFmQVJZeVB3RTJOQ2NCTkNZaklTSUdIUUVVRmpNaE1qWTFGVFFtSXlFaUJoMEJGQll6SVRJMk5SVTBKaU1oSWdZZEFSUVdNeUV5TmpVQjFRZ1lDRVVKR0JFTU9nc1JEQkFGUlFrWENTb0pDZDBKRnduZkNBZ0IxUklML1RnTEVSRUxBc2dMRWhJTC9ma01FUkVNQWdjTEVoSUwvcmtMRWhJTEFVY0xFdThJQ0VZSUNRMytDeEVSQy80SkNnVkdDQWdyQ0JnSTNRa0ozd2dZQ0FIVkRCRVJERGtNRVJFTXJRc1JFUXM2Q3hJU0M2MExFaElMT2dzU0Vnc0FBUUFBLzVFRHdnTXJBRWtBUEVBNUFBSUJBbThEQVFFQUFXOElBUVlGQndVR0IyMEFCd2R1QkFFQUJRVUFWQVFCQUFBRldBa0JCUUFGVEVFL0pCUWpMU01rRlNNbENnVWRLd0VuSmdZZEFTTWlKajBCTXpJK0FTOEJKaUlQQVFZV093RVZGQVlyQVRVMEpnOEJCaFFmQVJZMlBRRXpNaFlkQVNNaUJoOEJGakkvQVRZbUt3RTFORFk3QVJVVUhnRS9BVFkwQTd5Z0NCUEFDUXB4Q1EwQkJhNEZFQVd1Q0F3T2JRb0p3Qk1Jb0FRRW9BZ1R3QWtLY1E0TUNhMEZFQWF0Q0FzUGJRb0p3QW9OQktBR0FXeXRDQXNQYndvSndBb05CS0FGQmFBSUU4QUpDbkVPREFpdUJSQUZyZ2dNRG0wS0NjQVRDS0FFQktBSUU4QUpDbkVKRFFFR3JRY1FBQUFBQlFBQS83Y0Q2QU1GQUE4QUh3QXZBRDhBVlFBOVFEb0FCZ0FHYndBSEF3ZHdBQUFBQVFRQUFXQUlBUVFKQVFVQ0JBVmdBQUlEQXdKVUFBSUNBMWdBQXdJRFRFMUxKelUxTlRVMU5UVXlDZ1VkS3dFMEppTWhJZ1lkQVJRV015RXlOalVETkNZckFTSUdIUUVVRmpzQk1qWTFFelFtSXlFaUJoMEJGQll6SVRJMk5RRTBKaXNCSWdZVkVSUVdPd0V5TmpVQkpnWWRBU01pQmgwQkZCWTdBUlVVRmo4Qk5qUW5BK2dSRFA2NUN4SVNDd0ZIREJGTkVRejZDeElTQy9vTUVVMFJEUDY1Q3hJU0N3RkhEQkgrTXhJTE9nc1NFZ3M2Q3hMK21na1NmUXNTRWd0OUV3aWZCUVVDZFFzU0VnczZDeElTQy81c0RCRVJERGtNRVJFTUFTQU1FUkVNT2dzUkVRc0JsQXdSRVF6ODdBd1JFUXdDV0FnTERuQVJERG9MRVhJT0RBbXRCZzhHQUFBQUFnQUEvN2NEZFFLNEFBOEFOQUJzUzdBUlVGaEFKQVVCQXdRRGJ3QUVBZ1J2QndFQ0FBQUNZd1lCQUFFQkFGUUdBUUFBQVZrQUFRQUJUUnRBSXdVQkF3UURid0FFQWdSdkJ3RUNBQUp2QmdFQUFRRUFWQVlCQUFBQldRQUJBQUZOV1VBWEVSQUNBQ3dwSXlFYkdCQTBFVFFLQndBUEFnOElCUlFySlNFaUJoMEJGQll6SVRJMlBRRTBKaVVtSnk0Qk5SRTBOanNCTWhZVkVSUWVBUmNXUGdFMUVUUTJPd0V5RmhVUkZBY0dCd1lEV1AwNEN4SVNDd0xJQ3hJUy9vUkhQRGxFRmhBbkVCWW1RaWd0U3l3V0VDY1FGaWNtUUVJcUVRczZEQkVSRERvTEVVMEVKeVo5UndFR0VCWVdFUDc0S1VjdEFnTW9TU3dCRFJBV0ZoRCs4MHhBUGlNa0FBQUFCUUFBQUFBRE5BSmlBQmtBTVFBNkFFTUFUQUJiUUZnTEFRRUFFUUVDQXdKSEFBQUJBRzhKQVFFSUJnSUVBd0VFWUF3SEN3VUtCUU1DQWdOVURBY0xCUW9GQXdNQ1dBQUNBd0pNUlVROE96TXlHeHBKU0VSTVJVeEFQenREUEVNM05qSTZNem9zS2hveEd6RW5EUVVWS3dFbU56WTFOQzRCSXlJR0J4NENGUlFITmpjMkh3RVdOaWNCSWc0QkZSUVhGZzhCQmhZL0FUWVhGak15UGdFMExnRUhJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWXpJaVkwTmpJV0ZBWURGd0lFR3p0bFBDWkhIVDVqT1JVZUd3Y0ZRQWdOQXY1bFBHVTdIQU1CRlFNTkNVQUlCRFUvUEdVN08yVzBFQmdZSVJjWFp4QVlHQ0VYRjJjUUdCZ2hGeGNCSFFnRU1UWTVZRGtaRmcxTmJqODNMd2dRQkFNWEF3MEpBU001WURrM01BY0ZRd2tOQXhjQ0F4ODVZSEpnT2ZvWUlSY1hJUmdZSVJjWElSZ1lJUmNYSVJnQUFBQUFCZ0FBQUFBREFnS1VBQklBS2dBNkFFb0FXZ0JvQUhWQWNoZ0JCZ1F6S3dJREFDZ0JDd05UU3dJS0MwTTdBZ2dKQlVjQUFBWURCZ0FEYlFBRURBRUdBQVFHWUFjTkFnTUFDd29EQzJBQUNnQUpDQW9KWUFBSUFBVUNDQVZnQUFJQkFRSlVBQUlDQVZnQUFRSUJUQlVUWldOWFZVOU5SMFUvUFRjMUx5MGxJaDBhRXlvVktpSTFFUTRGRnlzbEVTSUdGUkVVRmpNaE1qWTFJeUluSmljbUFTTWlKajBCTkNZckFTSUdGUkVVRmpNaE1qWTlBVFFtSlRRMk93RXlGaDBCRkFZckFTSW1OUmNVQmlzQklpWTlBVFEyT3dFeUZoVTNGQVlyQVNJbVBRRTBOanNCTWhZVk55Y21JZ1lkQVJRV093RXlOalFCSWhrakl4a0JMQmtqOENzUkhnNFFBY3hrR1NNTUNLQVpJeU1aQVN3Wkl3eit1QXdJUEFnTURBZzhDQXpjREFpMENBd01DTFFJRENnTUNOd0lEQXdJM0FnTVRGd0VEQWdZRUVJR0NOd0JRQ01aL29RWkl5TVpCQWdZSEFFOEl4bGtDQXdqR2Y2RUdTTWpHZkFJRENnSURBd0lGQWdNREFqd0NBd01DQlFJREF3SVpBZ01EQWdVQ0F3TUNLUmNCQWdHUWhBWUNBd0FBUUFBLzdVRG53TUZBRUVBSmtBakF3RUFBUUJ2QUFFQ0FnRlVBQUVCQWxnQUFnRUNUQUlBUERrME1RQkJBa0VFQlJRckV6TXlGaDBCRkJZM05qYytBUmNXRng0QkZ4WUdCdzRCQnk0QlBRRTBOamMrQVRjMk56WXVBU2NtSnlZR0J3WUhCaFk3QVRJV0hRRVVCaU1oSWlZMUVUUTJham9MRVEwS0NRdEl3V2hKUGxkaEFnSTZOelNHU2c4VUR3eEZkU1VXQ1E4V1J6Y3BJRTJTTmd3TEJBOE9od3NRRGd2K25nb1BFUU1GRVF5R0RnZ0lEQWRKT1JRUEtUbXlaVTZWT0RkQUJnSVNEVGtNRHdJR1NUNGxKRDk3WmlFWENCTW9OZ3NRQ3d3U0N6d0xFQThLQVY0TUVRQUFBQUFHQUFEL3R3UENBd1VBRHdBZkFDOEFQd0JVQUhnQS9rdXdFVkJZUUZ3QUFRb0lDZ0VJYlFBQUNBTURBR1VBQ1FJTEFna0xiUUFLRkFFSUFBb0lZQUFERVFFQ0NRTUNZUlVCQ3dBTUJRc01ZQklCQkFBRkRRUUZZQUFOQUJBR0RSQmdBQThIRGc5VUV3RUdBQWNPQmdkZ0FBOFBEbGdBRGc4T1RCdEFYUUFCQ2dnS0FRaHRBQUFJQXdnQUEyMEFDUUlMQWdrTGJRQUtGQUVJQUFvSVlBQURFUUVDQ1FNQ1lSVUJDd0FNQlFzTVlCSUJCQUFGRFFRRllBQU5BQkFHRFJCZ0FBOEhEZzlVRXdFR0FBY09CZ2RnQUE4UERsZ0FEZzhPVEZsQU4xZFZRVUF5TUNJZ0VoQnpjWEJ1YVdaaFgxNWNWWGhYZUU5TVIwUkFWRUZVT2pjd1B6SS9LaWNnTHlJdkdoY1FIeElmTlRNV0JSWXJBUlVVQmlNaElpWTlBVFEyTXlFeUZnRWhNalk5QVRRbUl5RWlCaDBCRkJZRklTSUdIUUVVRmpNaE1qWTlBVFFtQnlFaUJoMEJGQll6SVRJMlBRRTBKZ0V6RlJRV093RXlOalVSTkNZckFTSUdIUUVVRmhNaklnWWRBUlFXT3dFVkl5SUdIUUVVRmpzQk1qWTlBVFFtS3dFMU16STJQUUUwSmdQQ0VndjkrUXdSRVF3Q0J3c1MvZHdCV2dzU0VnditwZ3dSRVFJVC9ma01FUkVNQWdjTEVoSzQvcVlNRVJFTUFWb0xFaEw5UURBU0N4UUxFUllRVndzUkVhK2tDeEVSQzMxekVCWVdFS01NRVJFTWZYUVFGaFlDMVRvTEVSRUxPZ3NTRXY3ZUVnczZDeElTQ3pvTEVxMFJERGtNRVJFTU9Rd1J3QklMT2dzU0VnczZDeElDWi9BTUVSRU1BUmNRRmhFTUV3c1Mvb0FTQ3hNTUVVMFhFSm9RRmhFTUV3c1NUUllRbWhBWEFBUUFBUCtRQTNVRE1BQWdBQ0lBTWdCR0FFeEFTUjRCQUFGR093SUdCQUpIQWdjQ0FBRUVBUUFFYlFBRUJnRUVCbXNBQXdBQkFBTUJZQUFHQlFVR1ZBQUdCZ1ZZQUFVR0JVd0NBRGcxTUMwb0pSb1lFUTRKQ0FBZ0FpQUlCUlFyRXpNeVBRRTBQZ0VYSGdJVk5SUTdBVEk5QVRRbkppY21Cd1lIRGdFSEhnRW5GUVUwSmlNaElnWVZFUlFXTXlFeU5qVWxGZ1lyQVNJbVB3RXVBVDRDSGdFVkZBWUgxRTBUT0Y4M01sRXZGRTBUTEN4SlMxZFFSRUZPQWdJTERRSzFMU0Q5bUI4dUxoOENhQ0F0L3RnQ0RBcU1DZ3NDSWhZV0NpZzdOU0FWRXdIbEVRSTJXek1FQXpoYU13WVJFUUpXU1Vjb0tRTUVMQ3FMVVFnSkVRaWpJQzB0SVA2U0h5NHVIMEFKRUE0TGN3OHhPQ2dMRmkwZEZ5Z01BQUFBQVFBQS83Y0R3d01GQUJjQUdFQVZBZ0VBQVFCdkFBRUJaZ0lBRGdzQUZ3SVhBd1VVS3dFaElnNEJGd0VXRlJFVUZqc0JNalkxRVRRM0FUWXVBUU9oL0tvT0VnRUlBWFVSRXd3NkN4QVZBWGtJQVJJREJSSWFDdjVNRkI3KzZ3d1JFUXdCRlJzWEFiUUtHaElBQVFBQUFBQURuQUpYQUJjQUlFQWRBd0VCQWdGd0FBQUNBZ0JVQUFBQUFsZ0FBZ0FDVEJNVEZ4SUVCUmdyTndFMk1oY0JGaFFQQVFZaUp3RW1JZ2NCQmlJdkFTWTBWUUdLQ0JvSUFZb0pDU29JR2dqK3lnZ2FDUDdLQ0JrSktnZkFBWTRKQ2Y1eUNCa0pLZ2tKQVRzSkNmN0hDUWtxQ1JjQUFnQUEvNUFEd2dNc0FCUUFSQUE2UURjSUFRQUZBRzhIQVFVR0JXOEFCZ01HYndBREFnTnZCQUVDQVFKdkFBRUJaZ0VBUERzNE56UXpKQ01nSHh3YkN3b0FGQUVVQ1FVVUt3RWlCd1lIQmhRWEZoY1dNamMyTnpZMEp5WW5KZ01YRmhRUEFRWWlMd0VtSWc4QkJpSXZBU1kwUHdFMk5DOEJKalEvQVRZeUh3RVdNajhCTmpJZkFSWVVEd0VHRkFIMGZtdHBQRDgvUEdsci9HeG9QVDgvUFdoc0lKWUdCallGRUFXV0JoQUZsZ1lRQlRZR0JwWUdCcGdHQmpZRkVBYVlCUkFHbGdVUUJUWUdCcFlFQXl3L1BXaHMvR3hvUFQ4L1BXaHMvR3hvUFQvK0k1WUdFQVUyQmdhV0JnYVdCZ1kyQlJBR2xnVVFCcGdGRUFVMkJnYVlCUVdXQmdZMUJoQUZsZ1lRQUFFQUFQL3ZBOEVDelFBakFDMUFLZ0FDQXdKdkFBRUFBWEFBQXdBQUExUUFBd01BV0FRQkFBTUFUQUlBSGhzVEVnc0tBQ01DSXdVRkZDc1RJVElXRHdFR0ZCOEJGakkzQVRZMEp3RW1JZzhCQmhRZkFSWUdJeUVpQmgwQkZCWkJBbjhOQ1FtNENRa3FDUmNJQVZFSkNmNnZDQmNKS0FrSnVBa0pEZjJCQ3hFUEFTUVlDTGtJR0FnckNBZ0JVd2dZQ0FGUkNBZ3BDQmNKdVFvWUVBczZEQk1BQUFBQUFnQUEvNUFEd2dNc0FDTUFTZ0JLUUVjQUF3VUNCUU1DYlFBQ0JBVUNCR3NJQVFBQUFRWUFBV0FBQmdBRkF3WUZZQUFFQndjRVZBQUVCQWRZQUFjRUIwd0NBRVZDUFRvMU1pMHFIaHNURWdvSEFDTUNJd2tGRkNzQklTSUdIUUVVRmpzQk1oWUhBUVlVSHdFV01qY0JOaFlkQVJRV093RXlOalVSTkNZREJ3WWRBUlFHSXlFaUpqVVJORFk3QVRJMlB3RTJKaU1oSWdZVkVSUVdNeUV5TmpVUk5DWURxZjZRREJJU0RKZ09DZ3IrdVFrSktBa1hDUUZHQ1JZVUN6Z0xFZzc2UVJJUkMvNXNEQkVSRE4wTUZRZENDQWtOL29NZkxTMGZBaHNnTFJnRExBNExPZ3dWRmduK3Vna1hDU2dKQ1FGSENBa05tQXNWRkF3QmJnME8vanhFRUJqYkRCRVJEQUdVQ3hFSkNVRUpHQzBnL2VVZ0xTNGZBWDBOQ1FBQUJRQUEvN2NENkFNRkFCVUFKUUExQUVVQVZRQkxRRWdBQ0FJSWJ3QUpCUWx3QUFJQUF3QUNBMkFHQ2dJQUJ3RUJCQUFCWUFBRUJRVUVWQUFFQkFWWUFBVUVCVXdCQUZOUVMwaERRRHM0TXpBcktDTWdHeGdRRGdBVkFSVUxCUlFyQVNNMU5DWVBBUVlVSHdFV05qMEJNekkyUFFFMEppVTBKaU1oSWdZZEFSUVdNeUV5TmpVRE5DWXJBU0lHSFFFVUZqc0JNalkxRXpRbUl5RWlCaDBCRkJZeklUSTJOUUUwSmlzQklnWVZFUlFXT3dFeU5qVUJPM3NUQ0o4RUJKOEpFbnNNRXhNQ29SRU0vcmtMRWhJTEFVY01FVTBSRFBvTEVoSUwrZ3dSVFJFTS9ya0xFaElMQVVjTUVmNHpFZ3M2Q3hJU0N6b0xFZ0dyY1E4TENLMEdFQVd0Q1F3T2JoRUxPZ3dSeWdzU0VnczZDeElTQy81c0RCRVJERGtNRVJFTUFTQU1FUkVNT2dzUkVRc0JsQXdSRVF6ODdBd1JFUXdBQXdBQS81QURkUU13QUFFQUxBQkFBRWhBUlVBMUFnWUFBVWNBQWdFQUFRSUFiUVFIQWdBR0FRQUdhd0FEQUFFQ0F3RmdBQVlGQlFaVUFBWUdCVmdBQlFZRlRBTUNNaThuSkI4ZUdSY1FEZ2tIQWl3RExBZ0ZGQ3NURlFVaE5UUStBVGMySGdFWEhnRTdBVEkySnk0Qkp5WUhCZ2NPQVFjVklnWVZFUlFXTXlFeU5qVVJOQ1lERmdZckFTSW1Qd0V1QVQ0Q0hnRVZGQVlId0FKby9nd3ZVakl1VVRzTUFnb0hUd2dNQVE5Y1FrUk1VRVJCVGdJZkxpNGZBbWdnTFMzN0Fnd0tqQXNMQXlJWEZRd29PelVnRlJNQjlnaFdXak5ZT0FNRElrRXFCZ29QQ0Vsekh4OERCQ3dxakZCZUxTRCtraDh1TGg4QmJpQXQvb1VKRUE4S2N4QXhOeWdMRmkwZEZ5Z01BQUlBQUFBQUF6UUNnQUFQQUVnQVZFQlJNUllDQndJQlJ3QUVBZ1J2QmdzQ0Fna0JCd01DQjJBRkFRTUFDQUFEQ0dBS0FRQUJBUUJVQ2dFQUFBRllBQUVBQVV3UkVBRUFSVVJBUGpzNk56WXZMU1FqR2hnUVNCRklDZ2NBRHdFUERBVVVLeVVoSWdZZEFSUVdNeUV5TmowQk5DWVRJZ1lWRkJZWERnRW5MZ0VuTkRjK0FUVTBKaUlHRlJRV0Z4WVZEZ0VIQmlZblBnRTFOQ1lpQmhRV014Y2VBVE1oTWpZL0FUSTJOQ1lDeC81YUJ3d2pHUUZVR1NNTEtSa2pDd29OTnlJb09RSUNFUlVqTWlNVkVRSUNPU2dpT0F3S0N5TXlJeU1aSEFFTEJ3R3FCd29DSEJrakk2QUxDQUVaSXlNWkFRZ0xBWm9qR1EwWkNCNGpBUUk1S0JFSUJ4NFRHU01qR1JJZkJ3Z1JLRGtDQWlRZUNCa05HU01qTWlQV0J3a0pCOVlqTWlNQUFBQUFBUUFBQUFBREdRSjZBQndBR0VBVkFnRUFBUUJ2QUFFQlpnRUFGQklBSEFFY0F3VVVLd0VpQndZSEJoVVVGeFlQQVFZV1B3RTJGeFl6TWpjMk56WXVBU2NtQWV4U1JrTW9LU1lGQXh3RUVneFlDUWhJVmxKR1F5Z3BBVkZFUmdKNUppVkFRVXhJUVFnSVdRd1JCQjhEQlNvbUpVQkJtSUVsSmdBQUFBRUFBQUFBQTJZQ1JRQU1BQmhBRlFBQkFBRnZBZ0VBQUdZQ0FBZ0hBQXdDREFNRkZDc2xJU0l1QVRjQk5qSVhBUllHQTBqOVdBb09BUWNCVFFrZkNBRlJDZzUzRGhRSkFaY01EUDVwRGgwQUFnQUEvNDhEd2dNekFCMEFLZ0FrUUNFQkFRSUJGZ0VBQWdKSEFBRUNBVzhBQWdBQ2J3QUFBR1lvSnlJaEdSZ0RCUlFyQlFFMk56WW5MZ01IRGdFSEJoNENGeFkzTmpjQkZqSS9BVDRCQVRRK0FUSWVBUlFPQVNJdUFRTzYvdjRvRVJNS0MxdU5wVTVMY1J3Y0VGYUpVVWhGUWpnQkFBa1hDU2dKQWZ6WVEzS0dja05EY29aeVF4VUJBRGhDUlVoU2lWVVFIQnh5U2s2bWpGd0xDaElSS1A4QUNBZ29DUmtCM2tOeVEwTnlobkpEUW5JQUFnQUEvMzhEMFFNN0FCUUFSQUExUURJMUFRTUVMUUVBQXgwQkFRQURSd0FFQXdSdkJRRURBQU52QWdFQUFRQnZBQUVCWmtFL09UY3lMeW9uSWg4WkZ3WUZGQ3NCSmljbUJ3NEJCd1lYSGdFWEZqYytBVGMySnlZREZBWXJBU0lHSFFFVUJpc0JJaVk5QVRRbUt3RWlKajBCTkRZN0FUSTJQUUUwTmpzQk1oWWRBUlFXT3dFeUZoVURPMWw1ZFhWNXNSOGZIeCt4ZVhWMWVMRWdIeDhmYXdzSTFBY01EQWROQ1FzS0NkTUpDdzBIMHdrS0RRZE5Cd3dLQ2RRSERBS2xXQjhmSHgreGVYVjFlYklnSGg0Z3NubDFkWG4rN0FrTEN3alRCdzBMQ2RNSkNnc0pUUWNNQ2duVUJ3d0xDTlFKQ2d3SEFBRUFBUCtTQThJRExBQnpBSVZBZ2g0VkFnRURKd3dDQUFGaFJnSUtDVmhQQWd3S0JFY0FCQU1FYndVQkF3RURid2NCQVFBQmJ4QUJDZ2tNQ1FvTWJRNEJEQTBKREExckFBME5iZ2dHQWhJRUFBa0pBRlFJQmdJU0JBQUFDVmdSRHdzRENRQUpUQUVBYm14bVpXTmlXMXBWVWsxTVJVUkNRVHM1TkRJc0t5a29JU0FiR0JNU0N3b0lCd0J6QVhNVEJSUXJBU00zTmpRdkFTWWlEd0VqTlRjMk5DOEJKaUlQQVRVMEppc0JJZ1lkQVNjbUlnOEJCaFFmQVJVakp5WWlEd0VHRkI4Qkl5SUdIUUVVRmpzQkJ3WVVId0VXTWo4Qk14VUhCaFFmQVJZeVB3RVZGQlk3QVRJMlBRRVhGakkvQVRZMEx3RTFNeGNXTWo4Qk5qUXZBVE15TmowQk5DWURwWXRWQ0FnaEJ4SUdsRzJVQndjaEJ4SUdWQklMT2dzU1ZBY1NCaUVIQjVSdGxBY1NCaUVIQjFXTEN4RVJDNHRWQndjZkNCRUdsRytVQndjZkNCTUdWQkFMT2dzVVZBZ1JCaDhJQ0pKdGxBZ1NCUjhJQ0ZPTEN4SVNBWmhVQ0JFR0lRY0hsRzJVQ0JJRklRZ0lWWXNMRWhJTGkxVUlDQ0VIRWdhVWJaUUhCeUVIRWdaVUVnczZDeEpVQnhJR0h3Y0hsR3VVQnhNRkh3Y0hWWXNNRlJZTGkxVUhCeDhIRWdhUWJaUUhCeDhJRVFaV0VnczZDeElBQUFBQ0FBRC8yZ1BGQXQwQUhRQTdBQ2hBSlE0QkFRQVZBUUlCQWtjQUFBRUFid01CQVFJQmJ3QUNBbVlmSGpJd0hqc2ZPeWtFQlJVckpTWTNOalUwSnlZbkppTWlCd1lISGdFWEZoVVVCelkzTmg4QkZqWW5BU0lIQmdjR0ZSUVhGZzhCQmhZL0FUWVhGak15TnpZM05qUW5KaWNtQTVjREJTa3RLMHBOV0Q0Nk55MWlvaTR3R3hzakRnbDFDUXNDL2F0WVRVa3JMU2dIQlNvREN3bDFEZ2xPVzFsTVNpc3RMU3RLVFA0TkNraE1VMGhHS1NvV0ZTWUxhMUpWWUVrL0NSSUZBeThDQ3drQnZDb3BSa2hUVGtZTkNuVUpEQU12QXdVdEtpbEdTS1ZJUlNrcUFBQURBQUFBQUFNUkFuWUFCUUFaQUU4QVpVQmlMaDhYRmdBRkJBRkxDd0lDQUFKSENRRUJCd1FIQVFSdEJnRUVBQWNFQUdzQUFnQUZBQUlGYlFBSUJRaHdDZ0VEQUFjQkF3ZGdBQUFDQlFCU0FBQUFCVmdBQlFBRlRCc2FCd1pJUmpNeExTc25KaUlnR2s4YlR4QVBCaGtIR1JJTEJSVXJBUVlWSXpRM0pTTWlCaDBCRkI4QkZqSS9BVFkwTHdFMU5DWW5JZ2NPQVE4Qkl5SUdId0VXTWo4Qk5pWXJBVFUrQWpNeUZoY1dCdzRDQndZbUp5WVBBUVlXRng0Qk56NENOelluTGdFQkdRRThBUUVtSGdZSkJGUUZEQVFWQlFWR0NSVkpQejFOQlFFdENnZ0dTd1VPQkVzR0NBb3NCVDFoT0VCcUd4MEhCVGxYTHpWaEl3d0tHQU1DQlNsclBFZDdUQVVHSlNPRkFYSUhEUTBIZUFrR2d3VUdWQVFFRlFVTUJFZHhCZ21NSXlKM1NBb1JCMXNGQlZzSUVBbzNYRFZET0RsQkwxWTVCQVVsSmc0TkhRUUdCU3N1QVFGR2RrZFFSa1JTQUFBQUJRQUEvNUFEd2dNdEFBMEFIUUExQUUwQVpRQkZRRUlBQlFJRmJ3QUVBZ0FDQkFCdEFBQURBZ0FEYXdBR0F3Y0RCZ2R0QUFjQkF3Y0Jhd0FCQVc0QUFnUURBbFFBQWdJRFdBQURBZ05NR3hzYkZSY2NGUkVJQlJ3ckFTWWlCd0VHRkJZeU53RTJOQ2MvQVRZMEx3RW1JZzhCQmhRZkFSWXlKUjRCRnhZeU56NEJOelkwSnk0Qkp5WWlCdzRCQndZVUFTNEJKeVlpQnc0QkJ3WVVGeDRCRnhZeU56NEJOelkwQXg0QkZ4WXlOejRCTnpZMEp5NEJKeVlpQnc0QkJ3WVVBaDRGRUFiK05SRWlMeEVCeXdZR1VUNElDQ2tJR0FnK0JRVTJCZy8rS1RkU0VRTVJBeEZST0FnSU4xSVJBeEVERVZFNEJ3TDVNVWNSQWhBREVFY3hCd2N4UnhBREVBSVJSekVJNFNZMERBRU5BUXMxSmdZR0pUWUxBUTBCRERVbEJnRytCZ2IrTkJFdUloRUJ5d1lRQlRZK0NCZ0lLUWdJUGdZUEJqWUZ1aEZST0FnSU4xSVJBeEVERVZFNENBZzNVaEVERWY2U0VFY3hDQWd4UnhBREVBTVFSekVIQnpGSEVBTVNBYW9NTkNZR0JpVTFEQUVOQVFzMkpRWUdKalVMQVEwQUFBVUFBUCtsQTl3RElRQWpBRE1BUUFCTkFKZ0JWa0FnSVJNTUNRSUZDQUFzQVEwSGRXMENEZzJTVHdJUURDUUJCaEFaQVFVR0JrZExzQkpRV0VCUEN3RUpBQWx2QkFJUkF3QUlBUUJqRXdvU0F3Z0JBUWhqQUEwSERnY05EbTBBRGc4SERnOXJBQkFNQmdZUVpRTUJBUUFIRFFFSFlRQVBBQXdRRHd4Z0FBWUZCUVpVQUFZR0JWa0FCUVlGVFJ0THNCeFFXRUJPQ3dFSkFBbHZCQUlSQXdBSUFHOFRDaElEQ0FFQkNHTUFEUWNPQncwT2JRQU9Ed2NPRDJzQUVBd0dCaEJsQXdFQkFBY05BUWRoQUE4QURCQVBER0FBQmdVRkJsUUFCZ1lGV1FBRkJnVk5HMEJQQ3dFSkFBbHZCQUlSQXdBSUFHOFRDaElEQ0FFQkNHTUFEUWNPQncwT2JRQU9Ed2NPRDJzQUVBd0dEQkFHYlFNQkFRQUhEUUVIWVFBUEFBd1FEd3hnQUFZRkJRWlVBQVlHQlZrQUJRWUZUVmxaUURGQ1FUVTBBUUNXbElTQ2VYZHhiMTVjU0VkQlRVSk5Pem8wUURWQU1DNG9KaDBiRlJRUUR3c0tCZ1VBSXdFakZBVVVLd0VqRlJZT0FTSXVBVGMxSVJVV0RnRWlMZ0UzTlNNaUJoVVJGQll6SVRJMk5SRTBKZ01VQmlNaElpWTFFVFEyTXlFeUZoVWxJaVk5QVRRK0FSWWRBUlFHSVNJbVBRRTBQZ0VXSFFFVUJnRTFOQ1lqSmljdUFUOEJQZ0VYRmhjeU5qUW1KeVluSmpVME5qYytBVDBCTkRZN0FUSVdIUUVVRmpNV0Z4NEJEd0VPQVNjbUl5SUhCaFFXRng0QkZBWUhEZ0VkQVJRR0t3RWlKZ1BPWGdJTEdCc1lDd0w5d2dJTEdCc1lDd0plQmdjSUJRTzBCUWdIU1FnRi9QTUZDQWdGQXcwRkNQMGNEaFFVR3hRVEFvd09FeFFiRkJUK2dBY0ZKU0lFQkFFS0FRc0dKU2dZSEJzZk1CZ2JMQ2NFQmdnRkd3VUlCd1VkR3dVRkFna0JDd1VmSWhrTUNoMGtNU290S2dRR0NBVWJCUWdDdVE4T0dROFBHUTRQRHc0WkR3OFpEZzhKQnYwSkJRZ0lCUUwzQmduOVNnVUlDQVVDQ1FVSUNBVjdGUTVWRGhNQkZBNVZEaFVWRGxVT0V3RVVEbFVPRmYycUd3VUlBdzhDQ0FVbUJnWURFUUVTSHhZTEVCVVpKU015Q2dFSEJSd0ZDQWdGRndVSUFnb0NDUVVrQmdVQ0RRa0lHaFVORVRCSk5na0JCd1VnQlFnSUFBQUFBQUwvL2YreEExOERDd0FrQURFQU1FQXRIaFVNQXdRQ0FBRkhBQVVCQVFBQ0JRQmdBd0VDQkFRQ1ZBTUJBZ0lFV0FBRUFnUk1GUmNVSEJRWkJnVWFLeVUwTHdFM05qUXZBU1lpRHdFbkppSVBBUVlVSHdFSEJoUWZBUll5UHdFWEZqSS9BVFkzRkE0QklpNENQZ0V5SGdFQ2dRcGxaUW9LTXdvZUNtVmxDeDRLTWdzTFpXVUxDeklLSGd0bFpRb2VDak1LMkhMRzZNaHVCbnE4OUxwKzRBNExaV1VMSFFzeUN3dGxaUXNMTWdzZEMyVmxDeDBMTWdzTFpXVUxDeklMalhYRWRIVEU2c1IwZE1RQUFBSUFBQUFBQXlBQ2lnQU9BRG9BT1VBMk9Bc0VBd0lBS2dFRUF3SkhCUUVBQWdCdkFBSURBbThBQXdRRGJ3QUVBUVJ2QUFFQlpnRUFNUzhuSlJRU0NBY0FEZ0VPQmdVVUt3RWlCaFFYRVJRV01qWTFFVFkwSmdVR0J3WW5JaWNtTHdFbUp5WUhCZ2NHRlJFVUZqYzJOeklYRmhjbUZ4WVhGak15TnpZM1BnRTFFVFFtQVFRWkl4UVlJUmNVSXdIMEhCMFpIQmNiRkIweEhCVWJHQndhRFJBS0dSc1hHaFViSlZVY0ZCc1hHeG9jSEFRR0NnS0tJelFTL2prUUdCZ1FBY2NTTkNOc0R3WUdBUVlFQ0E0SEFnUUNBZ29GRHY3K0Nnd0RDQUVFQXdjS0dBY0VCUWNIRHdJS0JRRVBCZ1lBQUFFQUFBQUJBQUNCTCszUFh3ODg5UUFMQStnQUFBQUEweXR5RWdBQUFBRFRLM0lTLy8zL2FnUHVBMUlBQUFBSUFBSUFBQUFBQUFBQUFRQUFBMUwvYWdBQUErai8vZi82QSs0QUFRQUFBQUFBQUFBQUFBQUFBQUFBQUlrRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENlAvK0ErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBMnNBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQURhd0FBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENlAvL0ErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBvQUFBRFdmLzlBK2dBQUFBQUFBQUFYQUM2QVJnQjJBSllBd0FEWmdQc0JIQUZPZ1dXQmhvRytnZWlCLzRJVkFoMkNOb0pLQW44Q3M0THpneHdETjROaGc1YUR3SVFBaEJPRVBZUndCSXdFc29UVUJQY0ZOWVZhaFlnRm13V3hCY1NGNDRZT2hqR0dUQVo2QnFXRys0YzhCMitIalFlb2g4Nkg1QWdNaUNFSVBJaFJpR21JaFlpd0NNK0krd2taQ1VxSmhvbW5DZTZLQ0FvbENrS0tYQXFCaXB1S3V3cnlpeEVMSTRzOGkxK0xmUXVIQzV1THVndmFpK01NSTR4UkRHVU1rSXpYRFFDTkhRMCtqVTROVzQySURiY04wWTRyamtVT2pnNjZEdU1QQ3c4Z0R5MlBQUTlqajRTUHFnL0xEL09RSlJCQ2tJb1FyWkM3RU1vUTY1RUFFU1FSU3hGc2taR1JvUkdyRWNHUjRCSVlFalNTWHhLUGt1K1RDUk1uQUFCQUFBQWlRRFFBQTBBQUFBQUFBSUFUZ0JlQUhNQUFBRFJDM0FBQUFBQUFBQUFFZ0RlQUFFQUFBQUFBQUFBTlFBQUFBRUFBQUFBQUFFQUNBQTFBQUVBQUFBQUFBSUFCd0E5QUFFQUFBQUFBQU1BQ0FCRUFBRUFBQUFBQUFRQUNBQk1BQUVBQUFBQUFBVUFDd0JVQUFFQUFBQUFBQVlBQ0FCZkFBRUFBQUFBQUFvQUt3Qm5BQUVBQUFBQUFBc0FFd0NTQUFNQUFRUUpBQUFBYWdDbEFBTUFBUVFKQUFFQUVBRVBBQU1BQVFRSkFBSUFEZ0VmQUFNQUFRUUpBQU1BRUFFdEFBTUFBUVFKQUFRQUVBRTlBQU1BQVFRSkFBVUFGZ0ZOQUFNQUFRUUpBQVlBRUFGakFBTUFBUVFKQUFvQVZnRnpBQU1BQVFRSkFBc0FKZ0hKUTI5d2VYSnBaMmgwSUNoREtTQXlNREUySUdKNUlHOXlhV2RwYm1Gc0lHRjFkR2h2Y25NZ1FDQm1iMjUwWld4c2J5NWpiMjF6WmkxcFkyOXVjMUpsWjNWc1lYSnpaaTFwWTI5dWMzTm1MV2xqYjI1elZtVnljMmx2YmlBeExqQnpaaTFwWTI5dWMwZGxibVZ5WVhSbFpDQmllU0J6ZG1jeWRIUm1JR1p5YjIwZ1JtOXVkR1ZzYkc4Z2NISnZhbVZqZEM1b2RIUndPaTh2Wm05dWRHVnNiRzh1WTI5dEFFTUFid0J3QUhrQWNnQnBBR2NBYUFCMEFDQUFLQUJEQUNrQUlBQXlBREFBTVFBMkFDQUFZZ0I1QUNBQWJ3QnlBR2tBWndCcEFHNEFZUUJzQUNBQVlRQjFBSFFBYUFCdkFISUFjd0FnQUVBQUlBQm1BRzhBYmdCMEFHVUFiQUJzQUc4QUxnQmpBRzhBYlFCekFHWUFMUUJwQUdNQWJ3QnVBSE1BVWdCbEFHY0FkUUJzQUdFQWNnQnpBR1lBTFFCcEFHTUFid0J1QUhNQWN3Qm1BQzBBYVFCakFHOEFiZ0J6QUZZQVpRQnlBSE1BYVFCdkFHNEFJQUF4QUM0QU1BQnpBR1lBTFFCcEFHTUFid0J1QUhNQVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCekFIWUFad0F5QUhRQWRBQm1BQ0FBWmdCeUFHOEFiUUFnQUVZQWJ3QnVBSFFBWlFCc0FHd0Fid0FnQUhBQWNnQnZBR29BWlFCakFIUUFMZ0JvQUhRQWRBQndBRG9BTHdBdkFHWUFid0J1QUhRQVpRQnNBR3dBYndBdUFHTUFid0J0QUFBQUFBSUFBQUFBQUFBQUNnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBaVFFQ0FRTUJCQUVGQVFZQkJ3RUlBUWtCQ2dFTEFRd0JEUUVPQVE4QkVBRVJBUklCRXdFVUFSVUJGZ0VYQVJnQkdRRWFBUnNCSEFFZEFSNEJId0VnQVNFQklnRWpBU1FCSlFFbUFTY0JLQUVwQVNvQkt3RXNBUzBCTGdFdkFUQUJNUUV5QVRNQk5BRTFBVFlCTndFNEFUa0JPZ0U3QVR3QlBRRStBVDhCUUFGQkFVSUJRd0ZFQVVVQlJnRkhBVWdCU1FGS0FVc0JUQUZOQVU0QlR3RlFBVkVCVWdGVEFWUUJWUUZXQVZjQldBRlpBVm9CV3dGY0FWMEJYZ0ZmQVdBQllRRmlBV01CWkFGbEFXWUJad0ZvQVdrQmFnRnJBV3dCYlFGdUFXOEJjQUZ4QVhJQmN3RjBBWFVCZGdGM0FYZ0JlUUY2QVhzQmZBRjlBWDRCZndHQUFZRUJnZ0dEQVlRQmhRR0dBWWNCaUFHSkFZb0FCVE5rYjNSekEyRmtaQVZqYkc5elpRbHdjbWxqWldKdmIyc0VhR1ZzY0FodWIzUmxZbTl2YXdSeWIzZHpCblZ3Ykc5aFpBVmpiRzlqYXdabmNtOTFjSE1MYjNCbGJsOW1iMnhrWlhJUWNtbG5hSFJmWVd4cFoyNWZkR1Y0ZEFkd2NtOWtkV04wRFhGMVpYTjBhVzl1WDJabFpXUUhkMkZ5Ym1sdVp3UjFjMlZ5QlhKcFoyaDBERzV2ZEdsbWFXTmhkR2x2YmdSb2IyMWxDR052Ym5SeVlXTjBCMkZrWkhWelpYSUVZWEJ3Y3dSamIzQjVCV2x0WVdkbEJHOXdaVzRJYzJWMGRHbHVaM01HZW05dmJXbHVCbkpsWTI5eVpBbGhjbkp2ZDJSdmQyNERZM1YwRDJsdWMyVnlkRjkwWlcxd2JHRjBaUTF2Y0dWdVpXUmZabTlzWkdWeUNYTnBaR1ZmYkdsemRBZDZiMjl0YjNWMEJuRjFiM1JsY3d4eVpXeGhkR1ZrWDJ4cGMzUUVaMlJ2WXdkemJtbHdjR1YwQkhCaFoyVUxZM1Z6ZEc5dFgyRndjSE1IWVhKeWIzZDFjQVpoZEhSaFkyZ0haR0Y1ZG1sbGR3UnBibVp2RUdsdWMyVnlkRjkwWVdkZlptbGxiR1FGY0dGemRHVUVjMjl5ZEFOd1pHWUdjbVZ3YjNKMEJIUmhjMnNJWVhCd2NtOTJZV3dMYzI5amFXRnNjMmhoY21VR2NHVnZjR3hsQm1sMFlXeHBZd1prWld4bGRHVUVZbUZqYXdOaVlXNEZaVzFoYVd3RVltOXNaQWR3Y21WMmFXVjNCWE5vWVhKbENXUmhjMmhpYjJGeVpBWjBhR0Z1YTNNRmRHOWtZWGtLWTI5dWRISmhZM1F0TVFkemNHbHVibVZ5QlhCb2IzUnZCV1YyWlc1MEIySjFhV3hrWlhJTWFuVnpkR2xtZVY5MFpYaDBFV05sYm5SbGNsOWhiR2xuYmw5MFpYaDBCR1ZrYVhRR2JHRjViM1YwQ0hCeWFXOXlhWFI1RUhOMFlXNWtZWEprWDI5aWFtVmpkSE1IWTI5dWRHRmpkQWhqZFhOMGIyMDVNd2RsYldGcGJDMHhCM04xWTJObGMzTUhjbVZtY21WemFBOXNaV1owWDJGc2FXZHVYM1JsZUhRRVpHOTNiZ1ZqYUdGeWRBUmphR0YwQldWeWNtOXlCR3hsWm5RTGNtVnRiM1psWDJ4cGJtc0hjM1Z0YldGeWVRaGtiMk4xYldWdWRBWmtjbUZtZEhNTmMzVnRiV0Z5ZVdSbGRHRnBiQWR5WlhCc1lXTmxCR3hwYTJVSVpHOTNibXh2WVdRRlkyaGxZMnNMWTJobGRuSnZibXhsWm5RR1pYaHdZVzVrQkd4cGJtc0ZjbVZ3YkhrRmRHRmliR1VFWm1WbFpBZGxkbVZ1ZEMweERuUnBiR1ZmWTJGeVpGOXNhWE4wRkhKcFkyaDBaWGgwWW5Wc2JHVjBaV1JzYVhOMEJHeHBjM1FJWm1GMmIzSnBkR1VNWTJobGRuSnZibkpwWjJoMEMyTm9aWFp5YjI1a2IzZHVCbVpwYkhSbGNnUnRiM1psRG5KcFkyaDBaWGgwYVc1a1pXNTBDWFZ1WkdWeWJHbHVaUWhtWldWa1ltRmphd1JtYVd4bEJIVnVaRzhVY21samFIUmxlSFJ1ZFcxaVpYSmxaR3hwYzNRRWJHOWphd3BtYVd4MFpYSnNhWE4wQ1dOb1pYWnliMjUxY0FWamJHVmhjZ2RtYjNKM1lYSmtDbTVsZDE5M2FXNWtiM2NQY21samFIUmxlSFJ2ZFhSa1pXNTBCblZ1Ykc5amF3dHZjSEJ2Y25SMWJtbDBlUVJ3YjNOMEFuVndCbk5sWVhKamFBTnVaWGNHWm5KdmVtVnVDR052YlcxbGJuUnpCbkpsWTJWdWRBbHRZV2RwWTNkaGJtUVlaR2x6WTI5MWJuUnpZMmhsWkhWc1pXbGpiMjV6TFRBeURtTmhibU5sYkMxamFYSmpiR1ZrQ0dOMWMzUnZiVEkyQUFBQUFBQUJBQUgvL3dBUEFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBWUFCZ0FHQUFZQTFML2FnTlMvMnF3QUN3Z3NBQlZXRVZaSUNCTHVBQU9VVXV3QmxOYVdMQTBHN0FvV1dCbUlJcFZXTEFDSldHNUNBQUlBR05qSTJJYklTR3dBRm13QUVNalJMSUFBUUJEWUVJdHNBRXNzQ0JnWmkyd0Fpd2daQ0N3d0ZDd0JDWmFzaWdCQ2tORlkwVlNXMWdoSXlFYmlsZ2dzRkJRV0NHd1FGa2JJTEE0VUZnaHNEaFpXU0N4QVFwRFJXTkZZV1N3S0ZCWUliRUJDa05GWTBVZ3NEQlFXQ0d3TUZrYklMREFVRmdnWmlDS2ltRWdzQXBRV0dBYklMQWdVRmdoc0FwZ0d5Q3dObEJZSWJBMllCdGdXVmxaRzdBQksxbFpJN0FBVUZobFdWa3RzQU1zSUVVZ3NBUWxZV1Fnc0FWRFVGaXdCU05Dc0FZalFoc2hJVm13QVdBdHNBUXNJeUVqSVNCa3NRVmlRaUN3QmlOQ3NRRUtRMFZqc1FFS1E3QUJZRVZqc0FNcUlTQ3dCa01naWlDS3NBRXJzVEFGSmJBRUpsRllZRkFiWVZKWldDTlpJU0N3UUZOWXNBRXJHeUd3UUZranNBQlFXR1ZaTGJBRkxMQUhReXV5QUFJQVEyQkNMYkFHTExBSEkwSWpJTEFBSTBKaHNBSmlackFCWTdBQllMQUZLaTJ3Qnl3Z0lFVWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUVTd0FXQXRzQWdzc2djTEFFTkZRaW9oc2dBQkFFTmdRaTJ3Q1N5d0FFTWpSTElBQVFCRFlFSXRzQW9zSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pDQ3dJRkJZSWJBQUc3QXdVRml3SUJ1d1FGbFpJN0FBVUZobFdiQURKU05oUkVTd0FXQXRzQXNzSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pMQWtVRml3QUJ1d1FGa2pzQUJRV0dWWnNBTWxJMkZFUkxBQllDMndEQ3dnc0FBalFySUxDZ05GV0NFYkl5RlpLaUV0c0Ewc3NRSUNSYkJrWVVRdHNBNHNzQUZnSUNDd0RFTktzQUJRV0NDd0RDTkNXYkFOUTBxd0FGSllJTEFOSTBKWkxiQVBMQ0N3RUdKbXNBRmpJTGdFQUdPS0kyR3dEa05nSUlwZ0lMQU9JMElqTGJBUUxFdFVXTEVFWkVSWkpMQU5aU040TGJBUkxFdFJXRXRUV0xFRVpFUlpHeUZaSkxBVFpTTjRMYkFTTExFQUQwTlZXTEVQRDBPd0FXRkNzQThyV2JBQVE3QUNKVUt4REFJbFFyRU5BaVZDc0FFV0l5Q3dBeVZRV0xFQkFFTmdzQVFsUW9xS0lJb2pZYkFPS2lFanNBRmhJSW9qWWJBT0tpRWJzUUVBUTJDd0FpVkNzQUlsWWJBT0tpRlpzQXhEUjdBTlEwZGdzQUppSUxBQVVGaXdRR0JaWnJBQll5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc1FBQUV5TkVzQUZEc0FBK3NnRUJBVU5nUWkyd0V5d0FzUUFDUlZSWXNBOGpRaUJGc0FzalFyQUtJN0FCWUVJZ1lMQUJZYlVRRUFFQURnQkNRb3Bnc1JJR0s3QnlLeHNpV1Myd0ZDeXhBQk1yTGJBVkxMRUJFeXN0c0JZc3NRSVRLeTJ3Rnl5eEF4TXJMYkFZTExFRUV5c3RzQmtzc1FVVEt5MndHaXl4QmhNckxiQWJMTEVIRXlzdHNCd3NzUWdUS3kyd0hTeXhDUk1yTGJBZUxBQ3dEU3V4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FGZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQWZMTEVBSGlzdHNDQXNzUUVlS3kyd0lTeXhBaDRyTGJBaUxMRURIaXN0c0NNc3NRUWVLeTJ3SkN5eEJSNHJMYkFsTExFR0hpc3RzQ1lzc1FjZUt5MndKeXl4Q0I0ckxiQW9MTEVKSGlzdHNDa3NJRHl3QVdBdHNDb3NJR0N3RUdBZ1F5T3dBV0JEc0FJbFliQUJZTEFwS2lFdHNDc3NzQ29yc0NvcUxiQXNMQ0FnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0NNZ2lsVllJRWNnSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQWpZVGdiSVZrdHNDMHNBTEVBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M0c0FMQU5LN0VBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M4c0lEV3dBV0F0c0RBc0FMQUJSV080QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FBRnJRQUFBQUFBRVErSXppeEx3RVZLaTJ3TVN3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhPQzJ3TWl3dUZ6d3RzRE1zSUR3Z1J5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc0FCRFliQUJRMk00TGJBMExMRUNBQllsSUM0Z1I3QUFJMEt3QWlWSmlvcEhJMGNqWVNCWVloc2hXYkFCSTBLeU13RUJGUlFxTGJBMUxMQUFGckFFSmJBRUpVY2pSeU5oc0FsREsyV0tMaU1nSUR5S09DMndOaXl3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5Q3dDRU1naWlOSEkwY2pZU05HWUxBRVE3QUNZaUN3QUZCWXNFQmdXV2F3QVdOZ0lMQUJLeUNLaW1FZ3NBSkRZR1Fqc0FORFlXUlFXTEFDUTJFYnNBTkRZRm13QXlXd0FtSWdzQUJRV0xCQVlGbG1zQUZqWVNNZ0lMQUVKaU5HWVRnYkk3QUlRMGF3QWlXd0NFTkhJMGNqWVdBZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWpJTEFCS3lPd0JFTmdzQUVyc0FVbFliQUZKYkFDWWlDd0FGQllzRUJnV1dhd0FXT3dCQ1poSUxBRUpXQmtJN0FESldCa1VGZ2hHeU1oV1NNZ0lMQUVKaU5HWVRoWkxiQTNMTEFBRmlBZ0lMQUZKaUF1UnlOSEkyRWpQRGd0c0Rnc3NBQVdJTEFJSTBJZ0lDQkdJMGV3QVNzallUZ3RzRGtzc0FBV3NBTWxzQUlsUnlOSEkyR3dBRlJZTGlBOEl5RWJzQUlsc0FJbFJ5TkhJMkVnc0FVbHNBUWxSeU5ISTJHd0JpV3dCU1ZKc0FJbFlia0lBQWdBWTJNaklGaGlHeUZaWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNNdUl5QWdQSW80SXlGWkxiQTZMTEFBRmlDd0NFTWdMa2NqUnlOaElHQ3dJR0Jtc0FKaUlMQUFVRml3UUdCWlpyQUJZeU1nSUR5S09DMndPeXdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBOExDTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDBzSXlBdVJyQUNKVVpTV0NBOFdTTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDRzc0RVckl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUt5MndQeXl3Tml1S0lDQThzQVFqUW9vNEl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUs3QUVReTZ3S3lzdHNFQXNzQUFXc0FRbHNBUW1JQzVISTBjalliQUpReXNqSUR3Z0xpTTRzU3NCRkNzdHNFRXNzUWdFSlVLd0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUJIc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBZ3NBRXJJSXFLWVNDd0FrTmdaQ093QTBOaFpGQllzQUpEWVJ1d0EwTmdXYkFESmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05oc0FJbFJtRTRJeUE4SXpnYklTQWdSaU5Ic0FFckkyRTRJVm14S3dFVUt5MndRaXl3TlNzdXNTc0JGQ3N0c0VNc3NEWXJJU01nSUR5d0JDTkNJeml4S3dFVUs3QUVReTZ3S3lzdHNFUXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VVc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVlzc1FBQkZCT3dNaW90c0Vjc3NEUXFMYkJJTExBQUZrVWpJQzRnUm9vallUaXhLd0VVS3kyd1NTeXdDQ05Dc0VnckxiQktMTElBQUVFckxiQkxMTElBQVVFckxiQk1MTElCQUVFckxiQk5MTElCQVVFckxiQk9MTElBQUVJckxiQlBMTElBQVVJckxiQlFMTElCQUVJckxiQlJMTElCQVVJckxiQlNMTElBQUQ0ckxiQlRMTElBQVQ0ckxiQlVMTElCQUQ0ckxiQlZMTElCQVQ0ckxiQldMTElBQUVBckxiQlhMTElBQVVBckxiQllMTElCQUVBckxiQlpMTElCQVVBckxiQmFMTElBQUVNckxiQmJMTElBQVVNckxiQmNMTElCQUVNckxiQmRMTElCQVVNckxiQmVMTElBQUQ4ckxiQmZMTElBQVQ4ckxiQmdMTElCQUQ4ckxiQmhMTElCQVQ4ckxiQmlMTEEzS3k2eEt3RVVLeTJ3WXl5d055dXdPeXN0c0dRc3NEY3JzRHdyTGJCbExMQUFGckEzSzdBOUt5MndaaXl3T0NzdXNTc0JGQ3N0c0djc3NEZ3JzRHNyTGJCb0xMQTRLN0E4S3kyd2FTeXdPQ3V3UFNzdHNHb3NzRGtyTHJFckFSUXJMYkJyTExBNUs3QTdLeTJ3YkN5d09TdXdQQ3N0c0cwc3NEa3JzRDByTGJCdUxMQTZLeTZ4S3dFVUt5MndieXl3T2l1d095c3RzSEFzc0RvcnNEd3JMYkJ4TExBNks3QTlLeTJ3Y2l5ekNRUUNBMFZZSVJzaklWbENLN0FJWmJBREpGQjRzQUVWTUMwQVM3Z0F5RkpZc1FFQmpsbXdBYmtJQUFnQVkzQ3hBQVZDc2dBQkFDcXhBQVZDc3dvQ0FRZ3FzUUFGUXJNT0FBRUlLckVBQmtLNkFzQUFBUUFKS3JFQUIwSzZBRUFBQVFBSktyRURBRVN4SkFHSVVWaXdRSWhZc1FOa1JMRW1BWWhSV0xvSWdBQUJCRUNJWTFSWXNRTUFSRmxaV1ZtekRBSUJEQ3E0QWYrRnNBU05zUUlBUkFBQScpIGZvcm1hdCgndHJ1ZXR5cGUnKTtcbn1cbi8qIENocm9tZSBoYWNrOiBTVkcgaXMgcmVuZGVyZWQgbW9yZSBzbW9vdGggaW4gV2luZG96emUuIDEwMCUgbWFnaWMsIHVuY29tbWVudCBpZiB5b3UgbmVlZCBpdC4gKi9cbi8qIE5vdGUsIHRoYXQgd2lsbCBicmVhayBoaW50aW5nISBJbiBvdGhlciBPUy1lcyBmb250IHdpbGwgYmUgbm90IGFzIHNoYXJwIGFzIGl0IGNvdWxkIGJlICovXG4vKlxuQG1lZGlhIHNjcmVlbiBhbmQgKC13ZWJraXQtbWluLWRldmljZS1waXhlbC1yYXRpbzowKSB7XG4gIEBmb250LWZhY2Uge1xuICAgIGZvbnQtZmFtaWx5OiAnc2YtaWNvbnMnO1xuICAgIHNyYzogdXJsKCcuLi9mb250L3NmLWljb25zLnN2Zz8xMzA2NzY3NiNzZi1pY29ucycpIGZvcm1hdCgnc3ZnJyk7XG4gIH1cbn1cbiovXG5cbiBbY2xhc3NePVwic2YtaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNmLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiBcInNmLWljb25zXCI7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgc3BlYWs6IG5vbmU7XG5cbiAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB0ZXh0LWRlY29yYXRpb246IGluaGVyaXQ7XG4gIHdpZHRoOiAxZW07XG4gIG1hcmdpbi1yaWdodDogLjJlbTtcbiAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAvKiBvcGFjaXR5OiAuODsgKi9cblxuICAvKiBGb3Igc2FmZXR5IC0gcmVzZXQgcGFyZW50IHN0eWxlcywgdGhhdCBjYW4gYnJlYWsgZ2x5cGggY29kZXMqL1xuICBmb250LXZhcmlhbnQ6IG5vcm1hbDtcbiAgdGV4dC10cmFuc2Zvcm1sOiBub25lO1xuXG4gIC8qIGZpeCBidXR0b25zIGhlaWdodCwgZm9yIHR3aXR0ZXIgYm9vdHN0cmFwICovXG4gIGxpbmUtaGVpZ2h0OiAxZW07XG5cbiAgLyogQW5pbWF0aW9uIGNlbnRlciBjb21wZW5zYXRpb24gLSBtYXJnaW5zIHNob3VsZCBiZSBzeW1tZXRyaWMgKi9cbiAgLyogcmVtb3ZlIGlmIG5vdCBuZWVkZWQgKi9cbiAgbWFyZ2luLWxlZnQ6IC4yZW07XG5cbiAgLyogeW91IGNhbiBiZSBtb3JlIGNvbWZvcnRhYmxlIHdpdGggaW5jcmVhc2VkIGljb25zIHNpemUgKi9cbiAgLyogZm9udC1zaXplOiAxMjAlOyAqL1xuXG4gIC8qIFVuY29tbWVudCBmb3IgM0QgZWZmZWN0ICovXG4gIC8qIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCByZ2JhKDEyNywgMTI3LCAxMjcsIDAuMyk7ICovXG59XG4uc2YtaWNvbi0zZG90czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAwJzsgfSAvKiAn7qCAJyAqL1xuLnNmLWljb24tYWRkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDEnOyB9IC8qICfuoIEnICovXG4uc2YtaWNvbi1jbG9zZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAyJzsgfSAvKiAn7qCCJyAqL1xuLnNmLWljb24tcHJpY2Vib29rOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDMnOyB9IC8qICfuoIMnICovXG4uc2YtaWNvbi1oZWxwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDQnOyB9IC8qICfuoIQnICovXG4uc2YtaWNvbi1ub3RlYm9vazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA1JzsgfSAvKiAn7qCFJyAqL1xuLnNmLWljb24tcm93czpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA2JzsgfSAvKiAn7qCGJyAqL1xuLnNmLWljb24tdXBsb2FkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDcnOyB9IC8qICfuoIcnICovXG4uc2YtaWNvbi1jbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA4JzsgfSAvKiAn7qCIJyAqL1xuLnNmLWljb24tZ3JvdXBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDknOyB9IC8qICfuoIknICovXG4uc2YtaWNvbi1vcGVuX2ZvbGRlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBhJzsgfSAvKiAn7qCKJyAqL1xuLnNmLWljb24tcmlnaHRfYWxpZ25fdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBiJzsgfSAvKiAn7qCLJyAqL1xuLnNmLWljb24tcHJvZHVjdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBjJzsgfSAvKiAn7qCMJyAqL1xuLnNmLWljb24tcXVlc3Rpb25fZmVlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBkJzsgfSAvKiAn7qCNJyAqL1xuLnNmLWljb24td2FybmluZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBlJzsgfSAvKiAn7qCOJyAqL1xuLnNmLWljb24tdXNlcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBmJzsgfSAvKiAn7qCPJyAqL1xuLnNmLWljb24tcmlnaHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMCc7IH0gLyogJ+6gkCcgKi9cbi5zZi1pY29uLW5vdGlmaWNhdGlvbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODExJzsgfSAvKiAn7qCRJyAqL1xuLnNmLWljb24taG9tZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEyJzsgfSAvKiAn7qCSJyAqL1xuLnNmLWljb24tY29udHJhY3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMyc7IH0gLyogJ+6gkycgKi9cbi5zZi1pY29uLWFkZHVzZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNCc7IH0gLyogJ+6glCcgKi9cbi5zZi1pY29uLWFwcHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNSc7IH0gLyogJ+6glScgKi9cbi5zZi1pY29uLWNvcHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNic7IH0gLyogJ+6glicgKi9cbi5zZi1pY29uLWltYWdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTcnOyB9IC8qICfuoJcnICovXG4uc2YtaWNvbi1vcGVuOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTgnOyB9IC8qICfuoJgnICovXG4uc2YtaWNvbi1zZXR0aW5nczpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE5JzsgfSAvKiAn7qCZJyAqL1xuLnNmLWljb24tem9vbWluOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWEnOyB9IC8qICfuoJonICovXG4uc2YtaWNvbi1yZWNvcmQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYic7IH0gLyogJ+6gmycgKi9cbi5zZi1pY29uLWFycm93ZG93bjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFjJzsgfSAvKiAn7qCcJyAqL1xuLnNmLWljb24tY3V0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MWQnOyB9IC8qICfuoJ0nICovXG4uc2YtaWNvbi1pbnNlcnRfdGVtcGxhdGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZSc7IH0gLyogJ+6gnicgKi9cbi5zZi1pY29uLW9wZW5lZF9mb2xkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZic7IH0gLyogJ+6gnycgKi9cbi5zZi1pY29uLXNpZGVfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIwJzsgfSAvKiAn7qCgJyAqL1xuLnNmLWljb24tem9vbW91dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIxJzsgfSAvKiAn7qChJyAqL1xuLnNmLWljb24tcXVvdGVzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjInOyB9IC8qICfuoKInICovXG4uc2YtaWNvbi1yZWxhdGVkX2xpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMyc7IH0gLyogJ+6goycgKi9cbi5zZi1pY29uLWdkb2M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNCc7IH0gLyogJ+6gpCcgKi9cbi5zZi1pY29uLXNuaXBwZXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNSc7IH0gLyogJ+6gpScgKi9cbi5zZi1pY29uLXBhZ2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyNic7IH0gLyogJ+6gpicgKi9cbi5zZi1pY29uLWN1c3RvbV9hcHBzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjcnOyB9IC8qICfuoKcnICovXG4uc2YtaWNvbi1hcnJvd3VwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjgnOyB9IC8qICfuoKgnICovXG4uc2YtaWNvbi1hdHRhY2g6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyOSc7IH0gLyogJ+6gqScgKi9cbi5zZi1pY29uLWRheXZpZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYSc7IH0gLyogJ+6gqicgKi9cbi5zZi1pY29uLWluZm86YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYic7IH0gLyogJ+6gqycgKi9cbi5zZi1pY29uLWluc2VydF90YWdfZmllbGQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyYyc7IH0gLyogJ+6grCcgKi9cbi5zZi1pY29uLXBhc3RlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmQnOyB9IC8qICfuoK0nICovXG4uc2YtaWNvbi1zb3J0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MmUnOyB9IC8qICfuoK4nICovXG4uc2YtaWNvbi1wZGY6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyZic7IH0gLyogJ+6grycgKi9cbi5zZi1pY29uLXJlcG9ydDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMwJzsgfSAvKiAn7qCwJyAqL1xuLnNmLWljb24tdGFzazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODMxJzsgfSAvKiAn7qCxJyAqL1xuLnNmLWljb24tYXBwcm92YWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzMic7IH0gLyogJ+6gsicgKi9cbi5zZi1pY29uLXNvY2lhbHNoYXJlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzMnOyB9IC8qICfuoLMnICovXG4uc2YtaWNvbi1wZW9wbGU6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzNCc7IH0gLyogJ+6gtCcgKi9cbi5zZi1pY29uLWl0YWxpYzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODM1JzsgfSAvKiAn7qC1JyAqL1xuLnNmLWljb24tZGVsZXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzYnOyB9IC8qICfuoLYnICovXG4uc2YtaWNvbi1iYWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzcnOyB9IC8qICfuoLcnICovXG4uc2YtaWNvbi1iYW46YmVmb3JlIHsgY29udGVudDogJ1xcZTgzOCc7IH0gLyogJ+6guCcgKi9cbi5zZi1pY29uLWVtYWlsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MzknOyB9IC8qICfuoLknICovXG4uc2YtaWNvbi1ib2xkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2EnOyB9IC8qICfuoLonICovXG4uc2YtaWNvbi1wcmV2aWV3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2InOyB9IC8qICfuoLsnICovXG4uc2YtaWNvbi1zaGFyZTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODNjJzsgfSAvKiAn7qC8JyAqL1xuLnNmLWljb24tZGFzaGJvYXJkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2QnOyB9IC8qICfuoL0nICovXG4uc2YtaWNvbi10aGFua3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgzZSc7IH0gLyogJ+6gvicgKi9cbi5zZi1pY29uLXRvZGF5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4M2YnOyB9IC8qICfuoL8nICovXG4uc2YtaWNvbi1jb250cmFjdC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDAnOyB9IC8qICfuoYAnICovXG4uc2YtaWNvbi1zcGlubmVyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NDEnOyB9IC8qICfuoYEnICovXG4uc2YtaWNvbi1waG90bzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQyJzsgfSAvKiAn7qGCJyAqL1xuLnNmLWljb24tZXZlbnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Myc7IH0gLyogJ+6hgycgKi9cbi5zZi1pY29uLWJ1aWxkZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0NCc7IH0gLyogJ+6hhCcgKi9cbi5zZi1pY29uLWp1c3RpZnlfdGV4dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ1JzsgfSAvKiAn7qGFJyAqL1xuLnNmLWljb24tY2VudGVyX2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Nic7IH0gLyogJ+6hhicgKi9cbi5zZi1pY29uLWVkaXQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Nyc7IH0gLyogJ+6hhycgKi9cbi5zZi1pY29uLWxheW91dDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODQ4JzsgfSAvKiAn7qGIJyAqL1xuLnNmLWljb24tcHJpb3JpdHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0OSc7IH0gLyogJ+6hiScgKi9cbi5zZi1pY29uLXN0YW5kYXJkX29iamVjdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0YSc7IH0gLyogJ+6hiicgKi9cbi5zZi1pY29uLWNvbnRhY3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg0Yic7IH0gLyogJ+6hiycgKi9cbi5zZi1pY29uLWN1c3RvbTkzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGMnOyB9IC8qICfuoYwnICovXG4uc2YtaWNvbi1lbWFpbC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGQnOyB9IC8qICfuoY0nICovXG4uc2YtaWNvbi1zdWNjZXNzOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGUnOyB9IC8qICfuoY4nICovXG4uc2YtaWNvbi1yZWZyZXNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NGYnOyB9IC8qICfuoY8nICovXG4uc2YtaWNvbi1sZWZ0X2FsaWduX3RleHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1MCc7IH0gLyogJ+6hkCcgKi9cbi5zZi1pY29uLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTg1MSc7IH0gLyogJ+6hkScgKi9cbi5zZi1pY29uLWNoYXJ0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTInOyB9IC8qICfuoZInICovXG4uc2YtaWNvbi1jaGF0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTMnOyB9IC8qICfuoZMnICovXG4uc2YtaWNvbi1lcnJvcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU0JzsgfSAvKiAn7qGUJyAqL1xuLnNmLWljb24tbGVmdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODU1JzsgfSAvKiAn7qGVJyAqL1xuLnNmLWljb24tcmVtb3ZlX2xpbms6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Nic7IH0gLyogJ+6hlicgKi9cbi5zZi1pY29uLXN1bW1hcnk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Nyc7IH0gLyogJ+6hlycgKi9cbi5zZi1pY29uLWRvY3VtZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NTgnOyB9IC8qICfuoZgnICovXG4uc2YtaWNvbi1kcmFmdHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1OSc7IH0gLyogJ+6hmScgKi9cbi5zZi1pY29uLXN1bW1hcnlkZXRhaWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1YSc7IH0gLyogJ+6hmicgKi9cbi5zZi1pY29uLXJlcGxhY2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Yic7IH0gLyogJ+6hmycgKi9cbi5zZi1pY29uLWxpa2U6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Yyc7IH0gLyogJ+6hnCcgKi9cbi5zZi1pY29uLWRvd25sb2FkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NWQnOyB9IC8qICfuoZ0nICovXG4uc2YtaWNvbi1jaGVjazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODVlJzsgfSAvKiAn7qGeJyAqL1xuLnNmLWljb24tY2hldnJvbmxlZnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg1Zic7IH0gLyogJ+6hnycgKi9cbi5zZi1pY29uLWV4cGFuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYwJzsgfSAvKiAn7qGgJyAqL1xuLnNmLWljb24tbGluazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODYxJzsgfSAvKiAn7qGhJyAqL1xuLnNmLWljb24tcmVwbHk6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Mic7IH0gLyogJ+6hoicgKi9cbi5zZi1pY29uLXRhYmxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjMnOyB9IC8qICfuoaMnICovXG4uc2YtaWNvbi1mZWVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjQnOyB9IC8qICfuoaQnICovXG4uc2YtaWNvbi1ldmVudC0xOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjUnOyB9IC8qICfuoaUnICovXG4uc2YtaWNvbi10aWxlX2NhcmRfbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODY2JzsgfSAvKiAn7qGmJyAqL1xuLnNmLWljb24tcmljaHRleHRidWxsZXRlZGxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Nyc7IH0gLyogJ+6hpycgKi9cbi5zZi1pY29uLWxpc3Q6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2OCc7IH0gLyogJ+6hqCcgKi9cbi5zZi1pY29uLWZhdm9yaXRlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NjknOyB9IC8qICfuoaknICovXG4uc2YtaWNvbi1jaGV2cm9ucmlnaHQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2YSc7IH0gLyogJ+6hqicgKi9cbi5zZi1pY29uLWNoZXZyb25kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmInOyB9IC8qICfuoasnICovXG4uc2YtaWNvbi1maWx0ZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Yyc7IH0gLyogJ+6hrCcgKi9cbi5zZi1pY29uLW1vdmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2ZCc7IH0gLyogJ+6hrScgKi9cbi5zZi1pY29uLXJpY2h0ZXh0aW5kZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NmUnOyB9IC8qICfuoa4nICovXG4uc2YtaWNvbi11bmRlcmxpbmU6YmVmb3JlIHsgY29udGVudDogJ1xcZTg2Zic7IH0gLyogJ+6hrycgKi9cbi5zZi1pY29uLWZlZWRiYWNrOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzAnOyB9IC8qICfuobAnICovXG4uc2YtaWNvbi1maWxlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzEnOyB9IC8qICfuobEnICovXG4uc2YtaWNvbi11bmRvOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzInOyB9IC8qICfuobInICovXG4uc2YtaWNvbi1yaWNodGV4dG51bWJlcmVkbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODczJzsgfSAvKiAn7qGzJyAqL1xuLnNmLWljb24tbG9jazpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc0JzsgfSAvKiAn7qG0JyAqL1xuLnNmLWljb24tZmlsdGVybGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc1JzsgfSAvKiAn7qG1JyAqL1xuLnNmLWljb24tY2hldnJvbnVwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4NzYnOyB9IC8qICfuobYnICovXG4uc2YtaWNvbi1jbGVhcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc3JzsgfSAvKiAn7qG3JyAqL1xuLnNmLWljb24tZm9yd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc4JzsgfSAvKiAn7qG4JyAqL1xuLnNmLWljb24tbmV3X3dpbmRvdzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODc5JzsgfSAvKiAn7qG5JyAqL1xuLnNmLWljb24tcmljaHRleHRvdXRkZW50OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2EnOyB9IC8qICfuobonICovXG4uc2YtaWNvbi11bmxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTg3Yic7IH0gLyogJ+6huycgKi9cbi5zZi1pY29uLW9wcG9ydHVuaXR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2MnOyB9IC8qICfuobwnICovXG4uc2YtaWNvbi1wb3N0OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2QnOyB9IC8qICfuob0nICovXG4uc2YtaWNvbi11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODdlJzsgfSAvKiAn7qG+JyAqL1xuLnNmLWljb24tc2VhcmNoOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4N2YnOyB9IC8qICfuob8nICovXG4uc2YtaWNvbi1uZXc6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4MCc7IH0gLyogJ+6igCcgKi9cbi5zZi1pY29uLWZyb3plbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgxJzsgfSAvKiAn7qKBJyAqL1xuLnNmLWljb24tY29tbWVudHM6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Mic7IH0gLyogJ+6igicgKi9cbi5zZi1pY29uLXJlY2VudDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODgzJzsgfSAvKiAn7qKDJyAqL1xuLnNmLWljb24tbWFnaWN3YW5kOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODQnOyB9IC8qICfuooQnICovXG4uc2YtaWNvbi1kaXNjb3VudHNjaGVkdWxlaWNvbnMtMDI6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4NSc7IH0gLyogJ+6ihScgKi9cbi5zZi1pY29uLWN1c3RvbTkwOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4ODYnOyB9IC8qICfuooYnICovXG4uc2YtaWNvbi1jYW5jZWwtY2lyY2xlZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODg2JzsgfSAvKiAn7qKGJyAqL1xuLnNmLWljb24tY3VzdG9tMjY6YmVmb3JlIHsgY29udGVudDogJ1xcZTg4Nyc7IH0gLyogJ+6ihycgKi9cblxuLyogVGhlIGZvbGxvd2luZyBpcyBjb3BpZWQgZnJvbSBpY29ucy9jc3Mvc2ItZW1iZWRkZWQuY3NzIGFzIGxlc3MtcGx1Z2luLWNsZWFuLWNzcyBjb3VsZCBoYW5kbGUgYSBAaW1wb3J0ICovXG5AZm9udC1mYWNlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIHNyYzogdXJsKCcuLi9mb250L3NiLmVvdD80OTM0MDI0OCcpO1xuICBzcmM6IHVybCgnLi4vZm9udC9zYi5lb3Q/NDkzNDAyNDgjaWVmaXgnKSBmb3JtYXQoJ2VtYmVkZGVkLW9wZW50eXBlJyksXG4gICAgICAgdXJsKCcuLi9mb250L3NiLnN2Zz80OTM0MDI0OCNzYicpIGZvcm1hdCgnc3ZnJyk7XG4gIGZvbnQtd2VpZ2h0OiBub3JtYWw7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbn1cbkBmb250LWZhY2Uge1xuICBmb250LWZhbWlseTogJ3NiJztcbiAgc3JjOiB1cmwoJ2RhdGE6YXBwbGljYXRpb24vb2N0ZXQtc3RyZWFtO2Jhc2U2NCxkMDlHUmdBQkFBQUFBQlgwQUE0QUFBQUFKQmdBQVFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQlBVeTh5QUFBQlJBQUFBRVFBQUFCV1BpbEpFbU50WVhBQUFBR0lBQUFBT2dBQUFVclFOaG0zWTNaMElBQUFBY1FBQUFBS0FBQUFDZ0FBQUFCbWNHZHRBQUFCMEFBQUJaUUFBQXR3aUpDUVdXZGhjM0FBQUFka0FBQUFDQUFBQUFnQUFBQVFaMng1WmdBQUIyd0FBQXFDQUFBUDNNNDQrTzFvWldGa0FBQVI4QUFBQURVQUFBQTJDQnVzQkdob1pXRUFBQklvQUFBQUhnQUFBQ1FIbHdOeGFHMTBlQUFBRWtnQUFBQS9BQUFBbklOSEFBQnNiMk5oQUFBU2lBQUFBRkFBQUFCUVNaUk5sbTFoZUhBQUFCTFlBQUFBSUFBQUFDQUF6QXZTYm1GdFpRQUFFdmdBQUFGekFBQUNoZi9Fakc1d2IzTjBBQUFVYkFBQUFTQUFBQUc2QVJpMmwzQnlaWEFBQUJXTUFBQUFaUUFBQUh2ZGF3T0ZlSnhqWUdTT1k1ekF3TXJBd1ZURnRJZUJnYUVIUWpNK1lEQmtaR0pnWUdKZ1pXYkFDZ0xTWEZNWUhGNHd2RkJsRHZxZnhSREZITVF3SFNqTUNKSURBT0xRQzdsNG5HTmdZR0JtZ0dBWkJrWUdFSEFCOGhqQmZCWUdEU0ROQnFRWkdaZ1lHRjZvL3Y4UFV2Q0NBVVJMTUVMVkF3RWpHOE9JQndDTStBYlRBQUFBQUFBQUFBQUFBQUFBQUFCNG5LMVdhWE1UUnhDZDFXSExOajZDRHhJMmdWbkdjb3gyVnBqTENCREc3RW9XNEJ6eWxleENqbDFMZHU2TFQvd0cvWnBla1ZTUmIveTB2QjRkMkdBblZWUW9TdjJtOSsxTTkrdWVYcFBRa3NSZVdJK2szSHdwcHJZMmFXVG5TVWczYkZxTzRrUFoyUXNwVTB6K0xvaUNhTFhVdnUwNEpDSVNnYXAxaFNXQzJQZkkwaVRqUTQ4eVdyWWx2V3BTYnVsSmQ5a2FEK3F0K3ZiVDBGR08zUWtsTlp1aFErdVJMYW5DcUJKRk11MlJrall0dzlWZlNWcmg1eXZNZk5VTUpZTG9KSkxHbTJFTWorUm40NHhXR2EzR2RoeEZrVTJXRzBXS1JETThpQ0tQc2xwaW4xd3hRVUQ1b0JsU1h2azBvbnlFSDVFVmU1VFRDbkhKZHByZjl5VS82UjNPdnlUaWVvdXlKUWYrUUhaa0IzdW5LL2tpMHRvSzQ2YWRiRWVoaXZCMGZTZkVJNXVUNnAvc1VWN1RhT0IyUmFZbnpRaVd5bGVRV1BrSlpmWVB5V3JoZk1xWFBCclZrb09jQ0ZvdmMySmY4ZzYwSGtkTWlXc215SUx1ams2SW9PNlhuS0hZWS9xNCtPTzlYU3dYSVFUSU9KYjFqa3E0RUVZcFliT2FKRzBFT1lpU3NrV1YxSHBIVEp6eU9pM2lMV0cvVHUzb1MyZTBTYWc3TVo2dGg0NnRuS2prZURTcDAweW1UdTJrNXRHVUJsRktPaE04NXRjQmxCL1JKSysyc1pyRXlxTnBiRE5qSkpGUW9JVnphU3FJWlNlV05BWFJQSnJSbTd0aG1tdlhva1dhUEZEUFBYcFBiMjZGbXpzOXArM0FQMnY4WjNVcXBvTzlNSjJlRHNoS2ZKcDJ1VW5SdW41NmhuOG04VVBXQWlxUkxUYkRsTVZEdG40SDVlVmpTNDdDYXdOczk1N3pLK2g5OWtUSXBJSDRHL0FlTDlVcEJVeUZtRlZRQzkyMDFyVXN5OVJxVm90VVpPcTdJVTByWDlacEFrMDVEbjFqWDhZNC9xK1pHVXRNQ2QvdnhPblpFWmVldWZZbHlEU0gzR1pkaitaMWFyRmRnTTVzeitrMHkvWjluZWJZZnFEVFBOdnpPaDFoYSt0MGxPMkhPaTJ3L1Vpblkyd3ZhRUdUN2pzRWNoR0JYTUFHRW9Hd2RSQUkyMHNJaEsxQ0lHd1hFUWpiSWdKaHU0UkEySDZNUU5ndUl4QzJsN1dzbW40cWFSdzdFOHNBUllnRG96bnV5R1Z1S2xkVHlhVVNyb3RHcHpia0tYS3JwS0o0VnYwckEvM2lrVGVzZ2JWQXVrVFcvSXBKcm54VWxlT1BybWg1MDhTNUFvNVZmM3R6WEo4VEQyVy9XUGhUOEwvYW1xcWtWNng1WkhJVmVTUFFrK05FMXlZVmo2N3A4cm1xUjlmL2k0b09hNEYrQTZVUUMwVlpsZzIrbVpEd1VhZlRVQTFjNVJBekd6TVAxL1c2WmMzUDRmeWJHQ0VMNkg3OE54UWFDOXlEVGxsSldlMWdyOVhYajJXNXR3ZmxzQ2RZa21LK3pPdGI0WXVNekVyN1JXWXBlejd5ZWNBVk1DcVZZYXNOWEszZ3pYc1M4NURwVGZKTUVMY1ZaWU9ramNlWklMR0JZeDR3Yjc2VElDUk1YYldCMmltY3NJRzhZTXdwMk8rRVExUnZsT1Z3ZTZGOUhvMlVmMnRYN01nWkZVMFErRzMyUnRqcnMxRHlXNnlCaENlLzFOZEFWU0ZOeGJpcGdFc2o1WVpxOEdGY3JkdEdNazZncjZqWURjdXlpZzhmUjl4M1NvNWxJUGxJRWF0SFJ6K3R2VUtkMUxuOXlpaHUzenY5Q0lKQmFXTCs5cjZaNHFDVWQ3V1NaVlp0QTFPM0dwVlQxNXJEeGFzTzNjMmo3bnZIMlNkeTFqVGRkRS9jOUw2bVZiZURnN2xaRU8zYkhKU2xUQzZvNjhNT0c2akx6YVhRNm1WY2t0NTJEekFzTUtEZm9SVWIvMWYzY2ZnOFY2b0tvK05Jdloyb0g2UFBZZ3p5RHpoL1IvVUY2T2N4VExtR2xPZDdseE9mYnR6RDJUSmR4VjJzbitMZndLeTE1bWJwR25CRDB3MlloNnhhSGJyS0RYeW5Cam85MHR5TzlCRHdzZTRLOFFCZ0U4Qmk4SW51V3NiektZRHhmTVljSCtCejVqQm9Nb2ZCRm5NWWJETm5EV0NIT1F4Mm1jTmdqemtNdm1ET09zQ1h6R0VRTW9kQnhCd0dUNWdUQUR4bERvT3ZtTVBnYStZdytJWTU5d0crWlE2RG1Ea01FdVl3Mk5kMGF5aHppeGQwRjZodFVCWG93UFFURnZld09OUlVHYksvNDRWaGYyOFFzMzh3aUtrL2FybzlwUDdFQzBQOTJTQ20vbUlRVTMvVmRHZEkvWTBYaHZxN1FVejl3eUNtUHRNdnhuS1p3VjlHdmt1RkE4b3VOcC96OThUN0I4SWFRTFlBQVFBQi8vOEFEM2ljaFZkN2NGVGxGYi9udTYvZG0rVHUzbjNjbTJ5U1RYWTMyWnRIQ2JoUG1zUVFZd1NHQnBxSkdZVGdBR1dzMFBBd09qd3NiOE1VWDJsQ0hidWlSbFNHSm96VmpPVWhqdVBJMUZxMUNFNTFLdGdPRnRveWFjSWZOQ1BZT3BUOTB2UGR6VUlRTXQza252MWU5M3puZDk3TEFjZU5kL0lqZkJzbmN0SmhnWU5wMVZvQU5GSGpSK2dBUGNtM0lWMTNqZlJ5K0JHdW4rVTVtY3ZoSEZ4ZW81S1hhN2VKQW5EQ3RHcXZGdEFBSC9mRU43eEY1OEZiMitBby9RRWNUYkVaaWJKSit0U05NZU5ydjRXdm16TzRRcTZFQzNGR295ZFFXbHhVa08vMWFNN3NYWGE4S3g3MThoT1BlNHJ4VmZiWk5vbW1ybDZGVFprbjdicjltTWtqM1ZZZXJWR2RMSVAwWFJrQ1hwaDRyTHQrVG42VWZqbnpUSEV0Y3VmR0grYi95cmR3Qk85MGM4b3hweUloYXg1WnU0RzM4dzJrQkhTVlRJZHdNN2hPd1FEd2RBazRTRzJyYjFlQlJRdjc0RDc2TDJpQ0FYcU5kcEN2elhwUzJPMXJyU1VGdXdvNTdvWnRjOUMyZGg1dEc3ZEQwZzZHSFdRN2dFRkh2d0lEaksvb3FFWG82SnlicDEreEk3Zm5nK2JOL3NGSzhNRksrandkL2l3N29NL0RTZzVSWmQ4enVSbWM3V2hObFY4aDZGL3haQ0pwSm8zRUxJZ2F1cEUwWkwwRXZMSWtHN0lwT1NCa2hrM1pUSWJOcEVlUEpHSmhGVkpxL3ZLMUd5cW5PL3VkMDZvM3JGMmVyNll5UzlYVGNHbDZwYlYwcW4xek8vN0R4S0ZsQmp0a0xMdjVVQ3JMYW1sOWUvdWpDMG1iNWRPREtLTStsVStqUGNzblBmekl0ZndieitMKy9ySCsvcStSdnZSU1JrL3ZJaS9tUWRKaGtlbEpTNkpDd2R3L0FOY09wSmZ2QjJIL0FhQTRPc0Q4TEtPZlBhZ2ZCNWVQK3RHZE1rZFlHRVhEeVFaSVJuUkRMNGFvQm9GNERaaGhTWDZhRkpvdjNMKzB2OXlYU2g4Q2pzeE54bWFMS2RJMGNOZWlCMkhOdlhXejFxYmZJMDFkc2JtRXpLM044T2M0dm8rOGdmTGtJZjljUlNESXZ6emdOWlBlQUtLSkczS2M3MHV2T0hlTzdMdTJpK3c3ZDI3SFF3Y0h1ODUxUFRSdzhLRU1ucC93ZC9BdXpvdDQzRGFHSjVhSWxBQ2p1bGRMSXZXZ0k0WExZczRyWlpHeXk2NUltWXR1cGo5MVFXRkJtZXN5NlM0b0t5dEliNy9zS291NDZXYlk3Y253WEkwOFBSYlBQRXRITVhSSjNTTUZwNE9HTkp6VVpLUXVlQngyNDR1dXkyWFJNcmlDckdHRnp3Vzc2V1pYTE9TNm5ON09lSlB1eTY0UXg0K254My9ETCtPWjlaSmNNOGJSWFhYVjdod2U0Nmc4SGd0WFExQXFCbzllQjVHRU8xWURvYUFzWVZ4Rkk2aGtoT0dSWkJVTWIyWS9oazdad0JzZUZZSTFCTGY5QUZjVTIycWJZcEcraHZ2dmVHS09QVytlSU5sRmYvbk1LcjB3VkEvV1ZyNnJTUEY3Y3M4ODh1SEl4K3VremU5ZWVXZDdXL1kxQlhiYzBWNnpTVldTZ2h3dTlMdTh2bHhuWTlpREc2NWdqbFB5RlZXMGJmaGcvZm9QTGpMQ1RIWWRqNStyNGVvUXo4eElWZEJudTQ1SG13ektHN29Cai84T1hIRVNFRktueUFuRmRvZ0pGWTh6ZWxWVzV0d0FCeitlTFB0aVhQQ3pIUndjdHFnQzF4WlBMQ2puYjVJM1V4ZGVSajlXdUNEWHdDMWdNZFRTR0NrcmNJZ3NoaUNLR1N3ZWNvQWtnd2NwR2pxY3FHTmVWTWNNb0VVanV1Z054TjJvKzNoSXFrWkVMTkF3RlhpVGVDTHV4bm5VRE1sUjl1Mk91c256S3lva1FnaUFRUDhpSFJKVitaRE5scmZhQXNGd2ZFN2YrVlFXSlp1a2ROOE5kMzRxMkNTYm1QUDBobGVyZkUvNHFsNHhkM1k4UnRadDl0bEpqcUpJNmRtU2ZFZ1VEOXU5UE1mQXBUbGxYbmNFVEVVU2dUVHVqTkF2QlVVR0lFM3dUWDE5YTJ0OVBUeE0rN2hiTUVlNEh6TE16YkVaV2N6bE56Q0xVMksrR1JlZjFZRXNtZGUxa0ZYQy93Rk5oRW53Y2pJS0VIaVlVRUd1cFlGb0JyUmQzbkVMNWwvVTFiVzIxdFhCSTdTWGRIZEhFYjhvNGxVWkZmelpJZUd3eVlwZEpDZEptTldydzhCNkJjZ0JPRGs4VE1LMEMvWlkyN2VlaVJmQzhIQUs5dEF1cHJmeDhmSEgrVi96U2M3R2FWd3BWbmpVV3loUTROWlV3ZktWb09UVVN4UE9zQm5oWEtobEZ5Y21kSmxITFlZd003Z1RTVDVwd2hmUG5UNE5OYWRQUC9jK3VBaTlTSGZTaXdSYzBLM3FmSWVnMGhOU3Jrdm9FUEtxLzN1RWZIS2FmbTRkWGtVdllXb2FFeUFmdG9QdlcwSEhjNnJRNGNtRGhNclRMK2NjeWNxK2h6UmJzaE9yRjhvREpqaHBIaDcrN240R3YxYWUyYWV4WWV5Z3N2V3VCSDJpbkl0eTlaeWpNVGNlbTE1UkZncVVHcktJTDJCV3h5d25CNEpoTTg2SVpxVWNZRjVoZUJOUkIwUkJqaHJKZUFnVGt4blNBdkZZQXJTSkNYL0k4RU9wbmg3Rkwvb1pFdDE1d1pIUVIzQVVEc3daSEtRdkRnNnVmZk8wM3hnRnYwN0NaL3pHQ05tSzV6dXMxMTRwMVdHVG5uQmNRQVhyeDR4Tmc3QnQ4UDAzUjBmMVVxQXY5dWtKdW9Ec0dtR1RGMWp0dUo2RGNya0NxelpKckRaQlVDVitpRFJBRFlISlNmS05lM3RhU2ZzVHIrMWVLQ3pvaFNXVE1nbnBiZXM1ME5ObUVmckhLZktjRGF0QkVQTmNTWUhETGhITWM0Q0ZvQWF3dnBpM3Y1RFV0VDNhUmhhdVg3aG55b3RoYVYxNys4YjI5bSttdk4rcWoyUVI2Y2E2NzBHTXpseEZaQml4cUlsU09JNldNY29qWHMwVHhDSDBxeXBONlVWRk9weWRsNEtOaWsrNW9McDg4STdQcFZiVTBwcmFXdmk4OWlhZXVSWlBsMm9Ya0tjN2xpeFBZTmlqR2N2RFppekRkVWlGTlo2aUlnOTlWaDFLcFdDcGFyR2tzNUhsQmVYZnRSWlg3bm9kN3lKYlVVNkQyVUs3UlU1NTBwaGZnYUwyNkg2LzNvYUR2WjdTVWcvS1cyVDdWblVXd2QrTG5PcTNreWMzOFord3RXYkpyRTJXdVh6eVJJV05qQ3Q5U29VUFZWaGxqZmVxREFCalMvM3NEcHQ2MDh3S25YR0s5bDZNOXA2QjhWTVpZUEdEam8xT0ZaNEY0UkN6TkIrTkpMQXNsNEFmc0NyTHpOeTRoRTFpUXVjWGU1eFhEYmMydjYycnRyTmxobERSdnFLaGFXT2xvRWt0SXBIcWg1YmQ5MHJYWEtIeDBiMUwydmJlT2RjNWpmenVxcXBQYzg2Zlg5UFN1YjZ6cGFZMkxvRTRYMUNsZWEzUXZIN2YwTDcxelEzZm4rdHlUOFExR1NGUFdmMnRJcUJjeVNEcU1xcFpIZElEVmJVOXNHWnM3T1A2Q2xoS1Q2VE9uazB4M3gwZi96My9TL0lmekdKZWpIZmxXS0h1ZHFraXE5RTZFejJBUFZzc0NhekZNR1JreGVPYW4zVVlZZjdKWElCb09JMGRHT1JCVjI1RnBESzM3MmROcFZVQVZZMVZsZk4xb3lLQ0IweERKOXU4K2ZuZVg5RXZvSnIyUVdXd3RMTHlycXBzM0N5MllyTUlPd1RsV0ZXZ0FPT1R4UTNHUmpaTTNCUE5nSXk5allGNk5kMHhreTNJa3RlZGFRL2dqZlVmUHBJTm1kOHFNcXVldWZKcVdRR3NmN1l0TmxGU0ZQdEttOExuVEFRTmt2VGNUbFkwT3RuUmo2QkQ1a1dSbCttQVpMTmh6aGpIL1BjcWo3MG1GMEEvS3NpUmVPYW4ySE5KZnRRRVdEMmVGR0xTQ1g1aWVHU0V1T3Zaa3ltaDkwODlFUHhlcmVmNEExdGFuMW5WU09yWDlCN282WnJKMzNQY0M5MHJueUdwRTN1bEh2cENjWlgzK0QwTm5YdjI5NjZyRlpvZVRNM2Y4c0J4YjZhbmZKMS9uWnpINkpqNERZdGFkK0pGWmhMYlBDd21xSVNvYkVZYmdIaGV1M1RwdGQ1MXM5dFhiRDl5NU9vUjB2djIyMXZKR0RrL1JsOGZXelN2L2dod1I0YTJuanc1Y0RGVHk4WjNZRDYvRTMraFNvY2x3dXFCV0lnMmM1ZUxidGl5YlFOc29aK3NvNmZvaVUxd2hzQXErcXp0TEgzbWIyZGdWYWEzMzJtOXEyRm1zeDB0TFZDc21JcUs3cVRoUmhiR2RIQkEwbTJXRUFmTUFzT2NCZE94MkMrRjR1WEZ4WXNZNDdhaWxuK09MQ2p1K01mREJ6MjJwamUxOSs1MkRaM1JiWTJ6YmV3eXRlTitPb2JYWFZveTgrRCtlQWVvUTdiSFZPOG5XM0tlT3E5dUU0ajNEeDk1L3dlNm90QkVBQUI0bkdOZ1pHQmdBT0pEVHJZTjhmdzJYeG00bVY4QVJSZ3VkWi8wZ3REenBmNy8vWi9KL0lJNUNNamxZR0FDaVFJQWJDb05qUUFBQUhpY1kyQmtZR0FPK3AvRkVNWDhnb0hoLzNjZ0NSUkJBZW9Ba01ZR0RnQUFlSnhqZnNIQXdJeU83MklSQStFSlFMd0FpQTJoT0JLS0YwQXc0eGtJWmw0RnBDZEFNRmdmVkIxVEJBUXpGMEF4U0F3a1B3WEpuRFVJK3dDUFpSbXlBQUFBQUFBQUZnQkNBSW9BdmdEdUFSSUJMZ0dBQWFZQnZnSHVBZzRDT0FKaUFzb0RJZ09jQkJZRUtBUTRCSVlFbGdTbUJRd0ZQZ1YrQmFnRjBnWUNCallHZ2dhY0J0b0hKZ2RpQjQ0SHJBZnVBQUVBQUFBbkFGQUFDUUFBQUFBQUFnQUFBQkFBY3dBQUFDZ0xjQUFBQUFCNG5IV1F5MHJEUUJpRlQzcFIycUtnZ3V0L3BTMkY5QUpGY0NIRlFyc1NvWXZ1a3paTlV0Sk1tWmtLZGVjRCtJcStoZ3MzbnFTRGlHRENKTjg1LzIxbUFGemlBeDZPejRqcnlCNHFWRWV1NEJSM2pxdFVENDVyNUxIak9scDRkSHhDLzhseEUxMDhPMjdoQ3EvczROVWFWQnU4Ty9iWTZkTnhCZWY0Y2x4RnpXczRycEhQSE5keDdWMDRQcUYvNjdpSmhkZDEzTUtOOXpaUnU0Tk80OFJLZTlLUllYOHdrdkFnaWxhYUI1a0VlNXNvYldRc2E1WGJLTXVVdjFSYkU4NmplSjhGMm9RbVhFVGFwQ3FYZ2Q4MzRTektJeDNZYUZWME1TL3gwTnExckxYYXl0VFZ5MDZyVGJTMGZtTHQ3cjdYKzkwWEV5anNjSUJHaWhnSkxBUnR1aDMraCtoandBc1hoTXdRWmg2elV1UUlrTkVKc0dkRlVrWU05WmhyVFpYVGpaaVJrWDBzK2QweUhtSk9OMlpOeGtwZE9zVmEwQzFVV2xZS1ovcWNYRVJtak9SbE5DZzdybjcyWXZEQ1RrTzZsaE9McWJxY0lwaittUzg4WHhIYjBGblM5OHRUV3JyMzZQSDlaNy9meG5kdmR3QjRuRzFPMlhMQ01CQ0xRaHBDQ0xUMHZ1K1dKMytVNnppSmk3RTk5cWFVdnkrR0tYMnBIclRTenF5MFNacnNVQ2IvWTU0a1NERkFoZ1BrR0tMQUNDWEdxRERCRkljNHdnekhPTUVwem5DT0MxemlDdGU0d1MzdWNJOEhQT0lKejNqQks5N3dqbm5lS0UzU0Y5UXh6WDByVStxR1VhdEF1Wk5HS0owTGJvVFVtZE45R0FqYlRyaFdyV0dmZlNEVnJGTzd5TFFWaTBKK2k0NmJWbWExWFptMGQxVW50V05DZWFGbFhTblQyTDBKMWhNemZDbFo3NlovSmg0V2tWaXRmTjY3T0liQ0xoMFBZZVJWMjFIY0ZGbzJXN0VwRXFIYVpUSzVkTFFlMTVaK1MzS3lUSnE2Mkl4QTNGUFY4RUNzc1g3RmZUM1ptZzh1RnRHbFlsVnErU1gxOW9NUko1S0dsRFd6dmRxSEJzbTk2QVpDckxLWVdrYmFkU2ZKRDJZSWVReDRuR1B3M3NGd0lpaGlJeU5qWCtRR3hwMGNEQndNeVFVYkdWaWROakl3YUVGb0RoUjZKd01EQXljeWk1bkJaYU1LWTBkZ3hBYUhqb2lOekNrdUc5VkF2RjBjRFF5TUxBNGR5U0VSSUNXUlFMQ1JnVWRyQitQLzFnMHN2UnVaR0Z3QUI5TWl1QUFBQUE9PScpIGZvcm1hdCgnd29mZicpLFxuICAgICAgIHVybCgnZGF0YTphcHBsaWNhdGlvbi9vY3RldC1zdHJlYW07YmFzZTY0LEFBRUFBQUFPQUlBQUF3QmdUMU12TWo0cFNSSUFBQURzQUFBQVZtTnRZWERRTmhtM0FBQUJSQUFBQVVwamRuUWdBQUFBQUFBQUdDQUFBQUFLWm5CbmJZaVFrRmtBQUJnc0FBQUxjR2RoYzNBQUFBQVFBQUFZR0FBQUFBaG5iSGxtempqNDdRQUFBcEFBQUEvY2FHVmhaQWdickFRQUFCSnNBQUFBTm1ob1pXRUhsd054QUFBU3BBQUFBQ1JvYlhSNGcwY0FBQUFBRXNnQUFBQ2NiRzlqWVVtVVRaWUFBQk5rQUFBQVVHMWhlSEFBekF2U0FBQVR0QUFBQUNCdVlXMWwvOFNNYmdBQUU5UUFBQUtGY0c5emRBRVl0cGNBQUJaY0FBQUJ1bkJ5WlhEZGF3T0ZBQUFqbkFBQUFIc0FBUU5lQVpBQUJRQUlBbm9DdkFBQUFJd0NlZ0s4QUFBQjRBQXhBUUlBQUFJQUJRTUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBVUdaRlpBQkE2QURvSlFOUy8yb0FXZ05TQUpjQUFBQUJBQUFBQUFBQUFBQUFBd0FBQUFNQUFBQWNBQUVBQUFBQUFFUUFBd0FCQUFBQUhBQUVBQ2dBQUFBR0FBUUFBUUFDQUFEb0pmLy9BQUFBQU9nQS8vOEFBQmdCQUFFQUFBQUFBQUFBQUFFR0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFRQUEvMm9ENkFOU0FBVUFCck1FQUFFdEt4RWhBUkVGRVFQby9xYit6QU5TL3FiK2J2d0NqZ0FBQUFBRUFBRC9hZ1BvQTFJQUF3QUhBQXNBRHdBTlFBb05EQWtJQlFRQkFBUXRLeFVSSVJFQkVTRVJFeEVoRVFFUklSRUJ0djVLQWJaOUFiWCtTd0cxbGdHMi9rb0NNd0cxL2t2OXpRRzIva29DTXdHMS9rc0FBQUFBQ1FBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCc0FId0FqQUJkQUZDRWdIUndaR0JVVUVSQU5EQWtJQlFRQkFBa3RLeFUxTXhVRE5UTVZBelV6RlJNMU14VUROVE1WQXpVekZSTTFNeFVETlRNVkF6VXpGZnI2K3ZyNmZmcjYrdnI2ZmZyNit2cjZsdnI2QVhmNitnRjMrdnI5RXZyNkFYZjYrZ0YzK3ZyOUV2cjZBWGY2K2dGMyt2b0FBQUFBQmdBQS8yb0Q2QU5TQUFNQUJ3QUxBQThBRXdBWEFCRkFEaFVVRVJBTkRBa0lCUVFCQUFZdEt4VTFNeFVETlRNVkF6VXpGUk0xSVJVQk5TRVZBVFVoRmZyNit2cjZqUUpoL1o4Q1lmMmZBbUdXK3ZvQmQvcjZBWGY2K3YwUyt2b0JkL3I2QVhmNitnQURBQUQvY1FQZUEwd0FBZ0FHQUJNQUNyY1FDZ1lFQVFBRExTc1ZFd0VEQ1FNK0FoOEJGZzRDTHdFbVJBRVN6UUdtQVFQK1d3RVBBanBRR29NWkFqcFFHb01iandGWC91OEJRZ0dtL3Z6K1dnTHlKendDRzRJYVVEb0NHWU1iQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5Ra0JOd2tCRndrQkJ3a0JBUmYrNmQwQkZ3RVgzZjdwQVJmZC91bis2VWNCRndFWDNmN3BBUmZkL3VuKzZkMEJGLzdwQUFBQkFBRC9hZ1BvQTFJQUN3QUdzd2tEQVMwck5SRWhFU0VSSVJFaEVTRVJBV2NCR2dGbi9wbis1dEVCR2dGbi9wbis1djZaQVdjQUFBSUFBUDlxQStnRFVnQW5BREFBQ0xVdUtoNEtBaTByRVRVM05qY25OeGMyUHdFekZ4WVhOeGNIRmg4QkZRY0dCeGNISndZUEFTTW5KaWNISnpjbUp6Y1VGakkyTkNZT0FaWU9HR0J0ZFNrdkVKd1FMU3QxYldBWURwYVdEaGhnYlhVckxSQ2NFQzhwZFcxZ0dBN05WSHBVVkhwVUFSQ2NFQzByZFcxZkZ3NldsZzRYWDIxMUt5MFFuQkF2S1hWdFlCZ09scFlPR0dCdGRTa3ZYanhVVkhoV0FsSUFCQUFBLzZjRDZBTVdBQU1BQndBTEFBOEFEVUFLRFF3SkNBVUVBUUFFTFNzVk5TRVZKVFVoRlNVMUlSVWxOU0VWQStqOEdBUG8vQmdENlB3WUEraFpuSnp3bkp6eW5KenduWjBBQUFFQUFQKzhBK2dEQUFBR0FBYXpCUU1CTFNzUk54Y0JGd0Vub3FZQi9LVDlZS0lCQktLa0FmNmsvV0NrQUFBQUFBSUFBUDlxQTVBRFVnQVBBQmdBQ0xVV0VBY0FBaTByRlJFekpqYytBVGN5RmhjV0hRRXpFUUVoTlM0Qkp5WUdCNHNDR3llYVhGNmNKUnFXL2JJQkFBSklOelJHQlpZQ1FxWkJXR1lCYkZNN1AyMzl2Z0pDY0RSSUFnSklPZ0FBQUFJQUFBQUFBNDhDclFBR0FBMEFDTFVNQ2dRQ0FpMHJKU0VWSnpjVklTVTFJVFVYQnpVRGovMWkzOThDbnZ5REFwN2YzMzl2cUtkdzMzQnZwcWh2QUFBQkFBRC9hUU14QXhJQUZRQUdzeE1JQVMwckVUUTJNaDhCRVRRMk1oWVZFVGMyTWhZVUJ3a0JKaVEwRVBRa01pVHpFaklrRXY1Ni9ua1NBUnNaSkJMekFvSVpKQ1FaL1g3ekVpUXlFLzU2QVlZVUFBQUJBQUQvYXdNeEF4UUFGUUFHc3cwREFTMHJFVFEzQ1FFV0ZBWWlMd0VSRkFZaUpqY1JCd1lpSmhJQmh3R0dFaVF5RXZNa015UUI5Qkl5SkFGaUdoSUJodjU2RWpRakV2UDlmaGtrSkJrQ2d2TVNJd0FELy8zL3NRTmZBd3NBRHdBM0FFUUFDcmRCT3lzVEN3TURMU3NsTlRRbUt3RWlCaDBCRkJZN0FUSTJFelF1QVNNaUJ3WWZBUll6TWpjK0FUSVdGUlFHQnc0QkZ4VVVGanNCTWpZME5qOEJQZ01YRkE0QklpNENQZ0V5SGdFQjlBb0lhd2dLQ2dockNBcVBQbHd4aUVjSkRVb0VCZ2tGSGlVNEtoWWJJendCQ2dockNBb1lFaHdLSGhRTTEzTEc2TWh1Qm5xODlMcCtVbXNJQ2dvSWF3Z0tDZ0YvTVZRdWR3NEtOd1FISmhzZUVoVWFEQkJBSmhRSUNnb1NJZ3NRQmhvY0tGSjF4SFIweE9yRWRIVEVBQUFBQS8vOS83RURYd01MQUI0QUxnQTdBQXEzT0RJcUlob0lBeTBySlRVMEppc0JFVFFtS3dFaUJoMEJGQlk3QVJVaklnWWRBUlFXT3dFeU5nTTFOQ1lyQVNJR0hRRVVGanNCTWpZRkZBNEJJaTRDUGdFeUhnRUNPd29ITmdvSXNnZ0tDZ2cxTlFnS0NnajZCd3BIQ2dockNBb0tDR3NJQ2dGbGNzYm95RzRHZXJ6MHVuNVNXUWdLQVI0SUNnb0lXUWdLc3dvSVdRZ0tDZ0g4V1FnS0NnaFpDQW9LNEhYRWRIVEU2c1IwZE1RQUFBQUVBQUQvYWdPZkExSUFDZ0FpQUQ0QVRnQU5RQXBNUURJa0dROEZBQVF0S3dFekx3RW1OU01QQVFZSEFSUVBBUVlpTHdFbU5qc0JFVFEyT3dFeUZoVVJNeklXQlJVaE5STTJQd0UxSXdZckFSVWpOU0VWQXdZUEFSVTNOanNCTlJNVkl6VXpKeU1ITXhVak5UTVRNeE1DbVdJb0JnSUNBZ0VCQlA3YUJySUZEZ2V5Q0FnTmF3b0lhd2dLYXdnS0FkTCt1czRIQlFZSUJncUNRd0U5emdRSUJnZ0ZDNHQxb1NvYWlCb3FvQ2VBV29FQ2Jub2FDUUlMQ2dvRy9VWUdCN0lGQmJNSkZRTUFDQW9LQ1AwQUNrcUNNZ0VuQ2dZRkFRSkFnREwrMkFRS0J3RUJBa0lCOVR3OFVGQThQQUZ4L284QUFBQUFCQUFBLzJvRG53TlNBQW9BSWdBeUFFOEFEVUFLUkRRd0pCa1BCUUFFTFNzbE15OEJKalVqRHdFR0J3VVVEd0VHSWk4QkpqWTdBUkUwTmpzQk1oWVZFVE15RmdVVkl6VXpKeU1ITXhVak5UTVRNeE1ERlNFMUV6WS9BVFVIQmljR0t3RVZJelVoRlFNUEFSVTNOanNCTlFLWllpZ0dBZ0lDQVFFRS90b0dzZ1VPQjdJSUNBMXJDZ2hyQ0FwckNBb0NCS0VxR29nYUtxQW5nRnFCQy82NnpnY0ZCZ1FEQVFZS2drTUJQYzRNQmdnRkM0c3plaG9KQWdzS0NRZC9CZ2V5QlFXekNSVURBQWdLQ2dqOUFBcVJPenRRVURzN0FYTCtqZ0tDZ2pNQkp3b0ZCUUlCQVFFQ1FJQXkvdGtQQmdFQkFVSUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3NCQ3dFQnpPYm1BaWIrY0FHUUFBQUFBQUVBQUFBQUFjd0NKZ0FDQUFhekFRQUJMU3MxR3dIbTVwWUJrUDV3QUFBQUJQLy8vNGNEcXdNM0FBZ0FFUUFnQUNNQURVQUtJeUVaRXhFT0JBQUVMU3NCSWdZUUZpQTJFQ1luTWdBU0FBUUFFZ0FGTmhZSEF3WUhCU01pSmpjVE5qY0ROeWNCMVpmVzFnRXUxdGFYd2dFU0F2N3Evb0QrNmdJQkVnR0NEaFlEV2dRTy9zb0dEQklFV2dRTksvdTBBc3ZXL3RMVzFnRXUxbWorN3Y1Ni92QUVBUmdCZmdFYStBUVdEdjdLRGdSYUZBMEJOZzREL3RoSHRBQUFBUUFBQUFBQmtBSkVBQUlBQnJNQ0FBRXRLeEVOQVFHUS9uQUNST2JtQUFBQkFBQUFBQUdRQWtRQUFnQUdzd0VBQVMwckFSRWxBWkQrY0FKRS9qVG1BQVVBQVA5cUErZ0RVZ0FmQUNJQUpRQXpBRHdBRDBBTU5UUXZLQ1FqSVNBWEJ3VXRLd0V5RmhjUkZBWUhJU0ltSnpVaElpWW5FVFEyUHdFK0FUc0JNaFlYRlRZekR3RXpBUWN6RnpjMUl4VVVCaWNqRVNFMU5EWUJFU01WRkFZbkl4RURzaGNlQVNBVy9la1hIZ0grMFJjZUFSWVE1QTgyRnVnWEhnRW1JVWVucC82YnA2ZHRzTlllRitrQkhoWUNKdGNlRitnQ2ZDQVcvVm9YSGdFZ0ZxQWdGZ0YzRmpZUDVCQVdJQmEzRjNlbkFYMm53ckRwNlJZZ0FmNmJqeFkyL2s0Q2crZ1dJQUgrbWdBQUFBTC8vZit4QTE4REN3QU1BQmtBQ0xVV0VBWUFBaTByQVNJT0FoNEJNajRCTGdJQkZBNEJJaTRDUGdFeUhnRUJyVk9NVUFKVWlLcUdWZ1JPamdGYmNzYm95RzRHZXJ6MHVuNENqbEtNcEl4U1VveWtqRkwrMEhYRWRIVEU2c1IwZE1RQUFBQUQvLzMvc1FOZkF3c0FDQUFWQUNJQUNyY2ZHUThKQmdJRExTc0JGQVlpTGdFMk1oWW5JZzRDSGdFeVBnRXVBZ0VVRGdFaUxnSStBVEllQVFJN1VuaFNBbFowVnBCVGpGQUNWSWlxaGxZRVRvNEJXM0xHNk1odUJucTg5THArQVY0N1ZGUjJWRlQxVW95a2pGSlNqS1NNVXY3UWRjUjBkTVRxeEhSMHhBQUFBQUlBQUFBQUFsZ0NnZ0FMQUJRQUNMVVFEQW9GQWkwckFSWVVCd1VHSmpVUk5EWVhKVElWRVJRaU5SRTBBWndPRHY2V0Zod2NGZ0hjU3BZQmRnb2FDdVFPRWhvQnVob1NEaWc2L2k0Nk9nSFNPZ0FBQUFJQUFBQUFBbGdDZ2dBTUFCUUFDTFVTRGdrRUFpMHJFelEzSlRZV0ZSRVVCaWNsSmljME1oVVJGQ0kxcmc0QmJCUWNIQlQrbEE2dWxwWUJYZzRLNUE0U0d2NUdHaElPNUFyMk9qcitMam82QUFBQUFBSUFBQUFBQTNBQ2ZBQUxBQmNBQ0xVV0VRb0ZBaTByQVJZVUJ3VUdKalVSTkRZWEJ4WVVCd1VHSmpVUk5EWVhBMklPRHY2TUZoNGVGbElPRHY2WUZDQWdGQUYyQ2h3SStBNFFIQUhpSEJBTytBb2NDUGdPRUJ3QjRod1FEZ0FBQUFJQUFBQUFBM0FDZkFBTUFCa0FDTFVXRVFrRUFpMHJFVFEzSlRZV0ZSRVVCaWNsSmlVME55VTJGaFVSRkFZbkpTWU9BWFlVSUNBVS9vb09BY1lPQVdnVUlDQVUvcGdPQVY0T0N2Z09FQnorSGh3UUR2Z0lEZzRLK0E0UUhQNGVIQkFPK0FnQUFBQUFBZi8rLzdFRFdRTUxBREFBQnJNcElRRXRLd0VWRkFZckFTSW1Qd0VtSXlJT0FoNERNekkyTno0Qkh3RWVBUWNPQVFjaUxnSStBek15RmhjM05oWURXUlFRK2hjVEVVMVNjRHBxVERBRUtGUmlQa0oyS1FRUkJrd0ZBZ1k4cmw5WG9IQklCRUI0bUZ0U21EMUlFQzBDdy9vT0ZpMFFUVTB1VEdwMGFrd3VPalVHQVFWTkJBNEdTbEFCUkhTZXJwNTBSRDQ1U0JJVEFBQUJBQUFBQUFMb0Fvb0FDd0FHc3dvRUFTMHJOeUltTlJFekVTRTFGd2MxWkNvNmpBRnM4UERJUENnQlh2N0tsdHpjbGdBQUEvLy8vOFVEbFFMM0FCRUFGUUFmQUFxM0d4WVRFZzRGQXkwckpSWUhEZ0VISVM0Qkp6UTNBVDRCTWhZWEJ4RXpFUU1PQVFjZUFUSTJOQ1lEaVF3QkFUTW0vU0VsTlFFTkFYQU1LRElwREkrRlFpQXFBUUVxUUNvcFRSWVhLRElCQVRNbkZ4WUNmUlVZR0JXbC90VUJLLzZQQVNraUlDa3BRU29BQUFQLy9mK3hBMWtEQ3dBTUFCd0FMZ0FLdHlvaEdSQUdBQU10S3dFeUhnRVVEZ0VpTGdJK0FSTTFOQ1lyQVNJR0J4VVVGaGN6TWpZbkV6UW5KaXNCSWdjR0ZSTVVGanNCTWpZQnJYVEdjbkxHNk1odUJucTh3UW9IYXdnS0FRd0hhd2NLQVFvR0JRaDdDQVVHQ2dvSlp3Z0tBd3QweE9yRWRIVEU2c1IwL1VocUNBb0tDR29JQ2dFTXh3RmFCd01GQlFNSC9xWUdDQWdBQXYvLy8yb0RvUU1OQUFnQUlRQUl0UmtMQmdNQ0xTc0JOQzRCQmg0QlBnRUJGQVlpTHdFR0l5SXVBajRFSGdJWEZBY1hGZ0tEbE15V0JJN1VqQUVpTERvVXYyUjdVSkpvUUFJOGJJNmtqSEE0QTBXL0ZRR0NaNUlDbHNxWUJveittaDBxRmI5RlBtcVFvbzV1T2dSQ1pwWk5lMlMvRlFBQUFRQUEvNndEckFMZ0FCY0FCck1FQUFFdEt3RXlGaEFHSXlJbk54WXpNallRSmlJR0J6TUhKek0rQVFJVXF1N3VxbzV1UmxSaWZyUzArclFDanJpNGZBTHdBdUR3L3F6d1dFbzh0QUVBdEs1OHpNeW02Z0FBQUFFQUFQOS9BK2dEUFFBSkFBYXpCZ0lCTFNzUkJSc0JEUUVUSlFVVEFYdDlkUUY3L3N0dS9zMyt5bmNCMXdJQmFQNlVDTnora3VIWEFXZ0FBQUlBQVArQUErZ0RQUUFSQUNJQUNMVWdHUW9FQWkwckVUTUZFemNYRXcwQkV4Y3ZBUThCTnhNbkh3SVBBVDhCRnljL0FTOEREd0ZlQVIxZ0hSMVlBWHYreTFJY1RPZm9UaDFhNDNHb0ZBaENzQkcrUXhLdTF4WUlRRVlJQWRjQ0FRNWFYUDd3Q056KzdsczRxS0kxV2dFT3JnaUJEaFhMZXd1SzRBNTlCQUlWeWNjVkFBRUFBQUFCQUFEQ1FqMkFYdzg4OVFBTEErZ0FBQUFBMG92SlNnQUFBQURTaTU4YS8vMy9hUVBvQTFJQUFBQUlBQUlBQUFBQUFBQUFBUUFBQTFML2FnQmFBK2dBQVAvM0ErZ0FBUUFBQUFBQUFBQUFBQUFBQUFBQUFDY0Q2QUFBQStnQUFBUG9BQUFENkFBQUErZ0FBQVBkQUFBRDZBQUFBK2dBQUFQb0FBQUQ2QUFBQStnQUFBT1FBQUFEb0FBQUF6RUFBQU14QUFBRFdRQUFBMWtBQUFPZ0FBQURvQUFBQWN3QUFBSE1BQUFEcWdBQUFaQUFBQUdRQUFBRDZBQUFBMWtBQUFOWkFBQUNXQUFBQWxnQUFBTndBQUFEY0FBQUExa0FBQUxvQUFBRGxBQUFBMWtBQUFPZ0FBQURyQUFBQStnQUFBUG9BQUFBQUFBQUFCWUFRZ0NLQUw0QTdnRVNBUzRCZ0FHbUFiNEI3Z0lPQWpnQ1lnTEtBeUlEbkFRV0JDZ0VPQVNHQkpZRXBnVU1CVDRGZmdXb0JkSUdBZ1kyQm9JR25BYmFCeVlIWWdlT0I2d0g3Z0FCQUFBQUp3QlFBQWtBQUFBQUFBSUFBQUFRQUhNQUFBQW9DM0FBQUFBQUFBQUFFZ0RlQUFFQUFBQUFBQUFBTlFBQUFBRUFBQUFBQUFFQUFnQTFBQUVBQUFBQUFBSUFCd0EzQUFFQUFBQUFBQU1BQWdBK0FBRUFBQUFBQUFRQUFnQkFBQUVBQUFBQUFBVUFDd0JDQUFFQUFBQUFBQVlBQWdCTkFBRUFBQUFBQUFvQUt3QlBBQUVBQUFBQUFBc0FFd0I2QUFNQUFRUUpBQUFBYWdDTkFBTUFBUVFKQUFFQUJBRDNBQU1BQVFRSkFBSUFEZ0Q3QUFNQUFRUUpBQU1BQkFFSkFBTUFBUVFKQUFRQUJBRU5BQU1BQVFRSkFBVUFGZ0VSQUFNQUFRUUpBQVlBQkFFbkFBTUFBUVFKQUFvQVZnRXJBQU1BQVFRSkFBc0FKZ0dCUTI5d2VYSnBaMmgwSUNoREtTQXlNREUxSUdKNUlHOXlhV2RwYm1Gc0lHRjFkR2h2Y25NZ1FDQm1iMjUwWld4c2J5NWpiMjF6WWxKbFozVnNZWEp6WW5OaVZtVnljMmx2YmlBeExqQnpZa2RsYm1WeVlYUmxaQ0JpZVNCemRtY3lkSFJtSUdaeWIyMGdSbTl1ZEdWc2JHOGdjSEp2YW1WamRDNW9kSFJ3T2k4dlptOXVkR1ZzYkc4dVkyOXRBRU1BYndCd0FIa0FjZ0JwQUdjQWFBQjBBQ0FBS0FCREFDa0FJQUF5QURBQU1RQTFBQ0FBWWdCNUFDQUFid0J5QUdrQVp3QnBBRzRBWVFCc0FDQUFZUUIxQUhRQWFBQnZBSElBY3dBZ0FFQUFJQUJtQUc4QWJnQjBBR1VBYkFCc0FHOEFMZ0JqQUc4QWJRQnpBR0lBVWdCbEFHY0FkUUJzQUdFQWNnQnpBR0lBY3dCaUFGWUFaUUJ5QUhNQWFRQnZBRzRBSUFBeEFDNEFNQUJ6QUdJQVJ3QmxBRzRBWlFCeUFHRUFkQUJsQUdRQUlBQmlBSGtBSUFCekFIWUFad0F5QUhRQWRBQm1BQ0FBWmdCeUFHOEFiUUFnQUVZQWJ3QnVBSFFBWlFCc0FHd0Fid0FnQUhBQWNnQnZBR29BWlFCakFIUUFMZ0JvQUhRQWRBQndBRG9BTHdBdkFHWUFid0J1QUhRQVpRQnNBR3dBYndBdUFHTUFid0J0QUFBQUFBSUFBQUFBQUFBQUNnQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBSndBQUFRSUJBd0VFQVFVQkJnRUhBUWdCQ1FFS0FRc0JEQUVOQVE0QkR3RVFBUkVCRWdFVEFSUUJGUUVXQVJjQkdBRVpBUm9CR3dFY0FSMEJIZ0VmQVNBQklRRWlBU01CSkFFbEFTWUJKd1ptYVd4MFpYSUlkR2d0YkdGeVoyVUNkR2dIZEdndGJHbHpkQVp3Wlc1amFXd0dZMkZ1WTJWc0JIQnNkWE1EWTI5bkRXRnNhV2R1TFdwMWMzUnBabmtDYjJzRWJHOWphd2hsZUdOb1lXNW5aUVJrYjNkdUFuVndER2hsYkhBdFkybHlZMnhsWkF4cGJtWnZMV05wY21Oc1pXUU1jMjl5ZEMxdVlXMWxMWFZ3RG5OdmNuUXRibUZ0WlMxa2IzZHVDR1J2ZDI0dFpHbHlCblZ3TFdScGNnZGpiMjF3WVhOekNYSnBaMmgwTFdScGNnaHNaV1owTFdScGNnUmtiMk56REdOcGNtTnNaUzFsYlhCMGVRdGtiM1F0WTJseVkyeGxaQVowYnkxbGJtUUlkRzh0YzNSaGNuUU1abUZ6ZEMxbWIzSjNZWEprRFdaaGMzUXRZbUZqYTNkaGNtUUNZM2NLYkdWMlpXd3RaRzkzYmdsaGRIUmxiblJwYjI0UllYUjBaVzUwYVc5dUxXTnBjbU5zWldRR2MyVmhjbU5vQTJOamR3UnpkR0Z5Q25OMFlYSXRaVzF3ZEhrQUFBQUFBQUVBQWYvL0FBOEFBQUFBQUFBQUFBQUFBQUN3QUN3Z3NBQlZXRVZaSUNCTHVBQU9VVXV3QmxOYVdMQTBHN0FvV1dCbUlJcFZXTEFDSldHNUNBQUlBR05qSTJJYklTR3dBRm13QUVNalJMSUFBUUJEWUVJdHNBRXNzQ0JnWmkyd0Fpd2daQ0N3d0ZDd0JDWmFzaWdCQ2tORlkwVlNXMWdoSXlFYmlsZ2dzRkJRV0NHd1FGa2JJTEE0VUZnaHNEaFpXU0N4QVFwRFJXTkZZV1N3S0ZCWUliRUJDa05GWTBVZ3NEQlFXQ0d3TUZrYklMREFVRmdnWmlDS2ltRWdzQXBRV0dBYklMQWdVRmdoc0FwZ0d5Q3dObEJZSWJBMllCdGdXVmxaRzdBQksxbFpJN0FBVUZobFdWa3RzQU1zSUVVZ3NBUWxZV1Fnc0FWRFVGaXdCU05Dc0FZalFoc2hJVm13QVdBdHNBUXNJeUVqSVNCa3NRVmlRaUN3QmlOQ3NRRUtRMFZqc1FFS1E3QUFZRVZqc0FNcUlTQ3dCa01naWlDS3NBRXJzVEFGSmJBRUpsRllZRkFiWVZKWldDTlpJU0N3UUZOWXNBRXJHeUd3UUZranNBQlFXR1ZaTGJBRkxMQUhReXV5QUFJQVEyQkNMYkFHTExBSEkwSWpJTEFBSTBKaHNBSmlackFCWTdBQllMQUZLaTJ3Qnl3Z0lFVWdzQXREWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUVTd0FXQXRzQWdzc2djTEFFTkZRaW9oc2dBQkFFTmdRaTJ3Q1N5d0FFTWpSTElBQVFCRFlFSXRzQW9zSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pDQ3dJRkJZSWJBQUc3QXdVRml3SUJ1d1FGbFpJN0FBVUZobFdiQURKU05oUkVTd0FXQXRzQXNzSUNCRklMQUJLeU93QUVPd0JDVmdJRVdLSTJFZ1pMQWtVRml3QUJ1d1FGa2pzQUJRV0dWWnNBTWxJMkZFUkxBQllDMndEQ3dnc0FBalFySUxDZ05GV0NFYkl5RlpLaUV0c0Ewc3NRSUNSYkJrWVVRdHNBNHNzQUZnSUNDd0RFTktzQUJRV0NDd0RDTkNXYkFOUTBxd0FGSllJTEFOSTBKWkxiQVBMQ0N3RUdKbXNBRmpJTGdFQUdPS0kyR3dEa05nSUlwZ0lMQU9JMElqTGJBUUxFdFVXTEVFWkVSWkpMQU5aU040TGJBUkxFdFJXRXRUV0xFRVpFUlpHeUZaSkxBVFpTTjRMYkFTTExFQUQwTlZXTEVQRDBPd0FXRkNzQThyV2JBQVE3QUNKVUt4REFJbFFyRU5BaVZDc0FFV0l5Q3dBeVZRV0xFQkFFTmdzQVFsUW9xS0lJb2pZYkFPS2lFanNBRmhJSW9qWWJBT0tpRWJzUUVBUTJDd0FpVkNzQUlsWWJBT0tpRlpzQXhEUjdBTlEwZGdzQUppSUxBQVVGaXdRR0JaWnJBQll5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc1FBQUV5TkVzQUZEc0FBK3NnRUJBVU5nUWkyd0V5d0FzUUFDUlZSWXNBOGpRaUJGc0FzalFyQUtJN0FBWUVJZ1lMQUJZYlVRRUFFQURnQkNRb3Bnc1JJR0s3QnlLeHNpV1Myd0ZDeXhBQk1yTGJBVkxMRUJFeXN0c0JZc3NRSVRLeTJ3Rnl5eEF4TXJMYkFZTExFRUV5c3RzQmtzc1FVVEt5MndHaXl4QmhNckxiQWJMTEVIRXlzdHNCd3NzUWdUS3kyd0hTeXhDUk1yTGJBZUxBQ3dEU3V4QUFKRlZGaXdEeU5DSUVXd0N5TkNzQW9qc0FCZ1FpQmdzQUZodFJBUUFRQU9BRUpDaW1DeEVnWXJzSElyR3lKWkxiQWZMTEVBSGlzdHNDQXNzUUVlS3kyd0lTeXhBaDRyTGJBaUxMRURIaXN0c0NNc3NRUWVLeTJ3SkN5eEJSNHJMYkFsTExFR0hpc3RzQ1lzc1FjZUt5MndKeXl4Q0I0ckxiQW9MTEVKSGlzdHNDa3NJRHl3QVdBdHNDb3NJR0N3RUdBZ1F5T3dBV0JEc0FJbFliQUJZTEFwS2lFdHNDc3NzQ29yc0NvcUxiQXNMQ0FnUnlBZ3NBdERZN2dFQUdJZ3NBQlFXTEJBWUZsbXNBRmpZQ05oT0NNZ2lsVllJRWNnSUxBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlkyQWpZVGdiSVZrdHNDMHNBTEVBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M0c0FMQU5LN0VBQWtWVVdMQUJGckFzS3JBQkZUQWJJbGt0c0M4c0lEV3dBV0F0c0RBc0FMQUJSV080QkFCaUlMQUFVRml3UUdCWlpyQUJZN0FCSzdBTFEyTzRCQUJpSUxBQVVGaXdRR0JaWnJBQlk3QUJLN0FBRnJRQUFBQUFBRVErSXppeEx3RVZLaTJ3TVN3Z1BDQkhJTEFMUTJPNEJBQmlJTEFBVUZpd1FHQlpackFCWTJDd0FFTmhPQzJ3TWl3dUZ6d3RzRE1zSUR3Z1J5Q3dDME5qdUFRQVlpQ3dBRkJZc0VCZ1dXYXdBV05nc0FCRFliQUJRMk00TGJBMExMRUNBQllsSUM0Z1I3QUFJMEt3QWlWSmlvcEhJMGNqWVNCWVloc2hXYkFCSTBLeU13RUJGUlFxTGJBMUxMQUFGckFFSmJBRUpVY2pSeU5oc0FsREsyV0tMaU1nSUR5S09DMndOaXl3QUJhd0JDV3dCQ1VnTGtjalJ5TmhJTEFFSTBLd0NVTXJJTEJnVUZnZ3NFQlJXTE1DSUFNZ0c3TUNKZ01hV1VKQ0l5Q3dDRU1naWlOSEkwY2pZU05HWUxBRVE3QUNZaUN3QUZCWXNFQmdXV2F3QVdOZ0lMQUJLeUNLaW1FZ3NBSkRZR1Fqc0FORFlXUlFXTEFDUTJFYnNBTkRZRm13QXlXd0FtSWdzQUJRV0xCQVlGbG1zQUZqWVNNZ0lMQUVKaU5HWVRnYkk3QUlRMGF3QWlXd0NFTkhJMGNqWVdBZ3NBUkRzQUppSUxBQVVGaXdRR0JaWnJBQlkyQWpJTEFCS3lPd0JFTmdzQUVyc0FVbFliQUZKYkFDWWlDd0FGQllzRUJnV1dhd0FXT3dCQ1poSUxBRUpXQmtJN0FESldCa1VGZ2hHeU1oV1NNZ0lMQUVKaU5HWVRoWkxiQTNMTEFBRmlBZ0lMQUZKaUF1UnlOSEkyRWpQRGd0c0Rnc3NBQVdJTEFJSTBJZ0lDQkdJMGV3QVNzallUZ3RzRGtzc0FBV3NBTWxzQUlsUnlOSEkyR3dBRlJZTGlBOEl5RWJzQUlsc0FJbFJ5TkhJMkVnc0FVbHNBUWxSeU5ISTJHd0JpV3dCU1ZKc0FJbFlia0lBQWdBWTJNaklGaGlHeUZaWTdnRUFHSWdzQUJRV0xCQVlGbG1zQUZqWUNNdUl5QWdQSW80SXlGWkxiQTZMTEFBRmlDd0NFTWdMa2NqUnlOaElHQ3dJR0Jtc0FKaUlMQUFVRml3UUdCWlpyQUJZeU1nSUR5S09DMndPeXdqSUM1R3NBSWxSbEpZSUR4WkxyRXJBUlFyTGJBOExDTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDBzSXlBdVJyQUNKVVpTV0NBOFdTTWdMa2F3QWlWR1VGZ2dQRmt1c1NzQkZDc3RzRDRzc0RVckl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUt5MndQeXl3Tml1S0lDQThzQVFqUW9vNEl5QXVSckFDSlVaU1dDQThXUzZ4S3dFVUs3QUVReTZ3S3lzdHNFQXNzQUFXc0FRbHNBUW1JQzVISTBjalliQUpReXNqSUR3Z0xpTTRzU3NCRkNzdHNFRXNzUWdFSlVLd0FCYXdCQ1d3QkNVZ0xrY2pSeU5oSUxBRUkwS3dDVU1ySUxCZ1VGZ2dzRUJSV0xNQ0lBTWdHN01DSmdNYVdVSkNJeUJIc0FSRHNBSmlJTEFBVUZpd1FHQlpackFCWTJBZ3NBRXJJSXFLWVNDd0FrTmdaQ093QTBOaFpGQllzQUpEWVJ1d0EwTmdXYkFESmJBQ1lpQ3dBRkJZc0VCZ1dXYXdBV05oc0FJbFJtRTRJeUE4SXpnYklTQWdSaU5Ic0FFckkyRTRJVm14S3dFVUt5MndRaXl3TlNzdXNTc0JGQ3N0c0VNc3NEWXJJU01nSUR5d0JDTkNJeml4S3dFVUs3QUVReTZ3S3lzdHNFUXNzQUFWSUVld0FDTkNzZ0FCQVJVVUV5NndNU290c0VVc3NBQVZJRWV3QUNOQ3NnQUJBUlVVRXk2d01Tb3RzRVlzc1FBQkZCT3dNaW90c0Vjc3NEUXFMYkJJTExBQUZrVWpJQzRnUm9vallUaXhLd0VVS3kyd1NTeXdDQ05Dc0VnckxiQktMTElBQUVFckxiQkxMTElBQVVFckxiQk1MTElCQUVFckxiQk5MTElCQVVFckxiQk9MTElBQUVJckxiQlBMTElBQVVJckxiQlFMTElCQUVJckxiQlJMTElCQVVJckxiQlNMTElBQUQ0ckxiQlRMTElBQVQ0ckxiQlVMTElCQUQ0ckxiQlZMTElCQVQ0ckxiQldMTElBQUVBckxiQlhMTElBQVVBckxiQllMTElCQUVBckxiQlpMTElCQVVBckxiQmFMTElBQUVNckxiQmJMTElBQVVNckxiQmNMTElCQUVNckxiQmRMTElCQVVNckxiQmVMTElBQUQ4ckxiQmZMTElBQVQ4ckxiQmdMTElCQUQ4ckxiQmhMTElCQVQ4ckxiQmlMTEEzS3k2eEt3RVVLeTJ3WXl5d055dXdPeXN0c0dRc3NEY3JzRHdyTGJCbExMQUFGckEzSzdBOUt5MndaaXl3T0NzdXNTc0JGQ3N0c0djc3NEZ3JzRHNyTGJCb0xMQTRLN0E4S3kyd2FTeXdPQ3V3UFNzdHNHb3NzRGtyTHJFckFSUXJMYkJyTExBNUs3QTdLeTJ3YkN5d09TdXdQQ3N0c0cwc3NEa3JzRDByTGJCdUxMQTZLeTZ4S3dFVUt5MndieXl3T2l1d095c3RzSEFzc0RvcnNEd3JMYkJ4TExBNks3QTlLeTJ3Y2l5ekNRUUNBMFZZSVJzaklWbENLN0FJWmJBREpGQjRzQUVWTUMwQVM3Z0F5RkpZc1FFQmpsbXdBYmtJQUFnQVkzQ3hBQVZDc1FBQUtyRUFCVUt4QUFncXNRQUZRckVBQ0NxeEFBVkN1UUFBQUFrcXNRQUZRcmtBQUFBSktyRURBRVN4SkFHSVVWaXdRSWhZc1FOa1JMRW1BWWhSV0xvSWdBQUJCRUNJWTFSWXNRTUFSRmxaV1ZteEFBd3F1QUgvaGJBRWpiRUNBRVFBJykgZm9ybWF0KCd0cnVldHlwZScpO1xufVxuLyogQ2hyb21lIGhhY2s6IFNWRyBpcyByZW5kZXJlZCBtb3JlIHNtb290aCBpbiBXaW5kb3p6ZS4gMTAwJSBtYWdpYywgdW5jb21tZW50IGlmIHlvdSBuZWVkIGl0LiAqL1xuLyogTm90ZSwgdGhhdCB3aWxsIGJyZWFrIGhpbnRpbmchIEluIG90aGVyIE9TLWVzIGZvbnQgd2lsbCBiZSBub3QgYXMgc2hhcnAgYXMgaXQgY291bGQgYmUgKi9cbi8qXG5AbWVkaWEgc2NyZWVuIGFuZCAoLXdlYmtpdC1taW4tZGV2aWNlLXBpeGVsLXJhdGlvOjApIHtcbiAgQGZvbnQtZmFjZSB7XG4gICAgZm9udC1mYW1pbHk6ICdzYic7XG4gICAgc3JjOiB1cmwoJy4uL2ZvbnQvc2Iuc3ZnPzQ5MzQwMjQ4I3NiJykgZm9ybWF0KCdzdmcnKTtcbiAgfVxufVxuKi9cbiBcbiBbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCBbY2xhc3MqPVwiIHNiLWljb24tXCJdOmJlZm9yZSB7XG4gIGZvbnQtZmFtaWx5OiBcInNiXCI7XG4gIGZvbnQtc3R5bGU6IG5vcm1hbDtcbiAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgc3BlYWs6IG5vbmU7XG4gXG4gIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgdGV4dC1kZWNvcmF0aW9uOiBpbmhlcml0O1xuICB3aWR0aDogMWVtO1xuICBtYXJnaW4tcmlnaHQ6IC4yZW07XG4gIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgLyogb3BhY2l0eTogLjg7ICovXG4gXG4gIC8qIEZvciBzYWZldHkgLSByZXNldCBwYXJlbnQgc3R5bGVzLCB0aGF0IGNhbiBicmVhayBnbHlwaCBjb2RlcyovXG4gIGZvbnQtdmFyaWFudDogbm9ybWFsO1xuICB0ZXh0LXRyYW5zZm9ybTogbm9uZTtcbiAgICAgXG4gIC8qIGZpeCBidXR0b25zIGhlaWdodCwgZm9yIHR3aXR0ZXIgYm9vdHN0cmFwICovXG4gIGxpbmUtaGVpZ2h0OiAxZW07XG4gXG4gIC8qIEFuaW1hdGlvbiBjZW50ZXIgY29tcGVuc2F0aW9uIC0gbWFyZ2lucyBzaG91bGQgYmUgc3ltbWV0cmljICovXG4gIC8qIHJlbW92ZSBpZiBub3QgbmVlZGVkICovXG4gIG1hcmdpbi1sZWZ0OiAuMmVtO1xuIFxuICAvKiB5b3UgY2FuIGJlIG1vcmUgY29tZm9ydGFibGUgd2l0aCBpbmNyZWFzZWQgaWNvbnMgc2l6ZSAqL1xuICAvKiBmb250LXNpemU6IDEyMCU7ICovXG4gXG4gIC8qIFVuY29tbWVudCBmb3IgM0QgZWZmZWN0ICovXG4gIC8qIHRleHQtc2hhZG93OiAxcHggMXB4IDFweCByZ2JhKDEyNywgMTI3LCAxMjcsIDAuMyk7ICovXG59XG4uc2ItaWNvbi1maWx0ZXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwMCc7IH0gLyogJ+6ggCcgKi9cbi5zYi1pY29uLXRoLWxhcmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDEnOyB9IC8qICfuoIEnICovXG4uc2ItaWNvbi10aDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAyJzsgfSAvKiAn7qCCJyAqL1xuLnNiLWljb24tdGgtbGlzdDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODAzJzsgfSAvKiAn7qCDJyAqL1xuLnNiLWljb24tcGVuY2lsOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MDQnOyB9IC8qICfuoIQnICovXG4uc2ItaWNvbi1jYW5jZWw6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNSc7IH0gLyogJ+6ghScgKi9cbi5zYi1pY29uLXBsdXM6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwNic7IH0gLyogJ+6ghicgKi9cbi5zYi1pY29uLWNvZzpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA3JzsgfSAvKiAn7qCHJyAqL1xuLnNiLWljb24tYWxpZ24tanVzdGlmeTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODA4JzsgfSAvKiAn7qCIJyAqL1xuLnNiLWljb24tb2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwOSc7IH0gLyogJ+6giScgKi9cbi5zYi1pY29uLWxvY2s6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwYSc7IH0gLyogJ+6giicgKi9cbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGInOyB9IC8qICfuoIsnICovXG4uc2ItaWNvbi1kb3duOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGMnOyB9IC8qICfuoIwnICovXG4uc2ItaWNvbi11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODBkJzsgfSAvKiAn7qCNJyAqL1xuLnNiLWljb24taGVscC1jaXJjbGVkOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MGUnOyB9IC8qICfuoI4nICovXG4uc2ItaWNvbi1pbmZvLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgwZic7IH0gLyogJ+6gjycgKi9cbi5zYi1pY29uLXNvcnQtbmFtZS11cDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODEwJzsgfSAvKiAn7qCQJyAqL1xuLnNiLWljb24tc29ydC1uYW1lLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMSc7IH0gLyogJ+6gkScgKi9cbi5zYi1pY29uLWRvd24tZGlyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MTInOyB9IC8qICfuoJInICovXG4uc2ItaWNvbi11cC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxMyc7IH0gLyogJ+6gkycgKi9cbi5zYi1pY29uLWNvbXBhc3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNCc7IH0gLyogJ+6glCcgKi9cbi5zYi1pY29uLXJpZ2h0LWRpcjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE1JzsgfSAvKiAn7qCVJyAqL1xuLnNiLWljb24tbGVmdC1kaXI6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNic7IH0gLyogJ+6glicgKi9cbi5zYi1pY29uLWRvY3M6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxNyc7IH0gLyogJ+6glycgKi9cbi5zYi1pY29uLWNpcmNsZS1lbXB0eTpiZWZvcmUgeyBjb250ZW50OiAnXFxlODE4JzsgfSAvKiAn7qCYJyAqL1xuLnNiLWljb24tZG90LWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxOSc7IH0gLyogJ+6gmScgKi9cbi5zYi1pY29uLXRvLWVuZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFhJzsgfSAvKiAn7qCaJyAqL1xuLnNiLWljb24tdG8tc3RhcnQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxYic7IH0gLyogJ+6gmycgKi9cbi5zYi1pY29uLWZhc3QtZm9yd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFjJzsgfSAvKiAn7qCcJyAqL1xuLnNiLWljb24tZmFzdC1iYWNrd2FyZDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODFkJzsgfSAvKiAn7qCdJyAqL1xuLnNiLWljb24tY3c6YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZSc7IH0gLyogJ+6gnicgKi9cbi5zYi1pY29uLWxldmVsLWRvd246YmVmb3JlIHsgY29udGVudDogJ1xcZTgxZic7IH0gLyogJ+6gnycgKi9cbi5zYi1pY29uLWF0dGVudGlvbjpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIwJzsgfSAvKiAn7qCgJyAqL1xuLnNiLWljb24tYXR0ZW50aW9uLWNpcmNsZWQ6YmVmb3JlIHsgY29udGVudDogJ1xcZTgyMSc7IH0gLyogJ+6goScgKi9cbi5zYi1pY29uLXNlYXJjaDpiZWZvcmUgeyBjb250ZW50OiAnXFxlODIyJzsgfSAvKiAn7qCiJyAqL1xuLnNiLWljb24tY2N3OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjMnOyB9IC8qICfuoKMnICovXG4uc2ItaWNvbi1zdGFyOmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjQnOyB9IC8qICfuoKQnICovXG4uc2ItaWNvbi1zdGFyLWVtcHR5OmJlZm9yZSB7IGNvbnRlbnQ6ICdcXGU4MjUnOyB9IC8qICfuoKUnICovXG4vKiBlbmQgb2YgaW1wb3J0IGZyb20gc2ItZW1iZWRkZWQuY3NzICovXG5cblxuLnNiICpbY2xhc3NePVwic2ItaWNvbi1cIl06YmVmb3JlLCAuc2IgKltjbGFzcyo9XCIgc2ItaWNvbi1cIl06YmVmb3JlIHtcbiAgZm9udC1mYW1pbHk6ICdzYic7XG4gIGNvbG9yOiBpbmhlcml0O1xuICAvKiBCZXR0ZXIgRm9udCBSZW5kZXJpbmcgPT09PT09PT09PT0gKi9cbiAgLXdlYmtpdC1mb250LXNtb290aGluZzogYW50aWFsaWFzZWQ7XG4gIC1tb3otb3N4LWZvbnQtc21vb3RoaW5nOiBncmF5c2NhbGU7XG59XG5cbi8vIGZpeCBmb3IgaWNvbiBmb250IHRoYXQgZGlkbid0IGhhdmUgdmVydGljYWwgc29ydCBhcnJvd3Ncbi5zYi1pY29uLWV4Y2hhbmdlOmJlZm9yZSB7XG4gIC5yb3RhdGUoOTBkZWcpO1xufVxuXG4vLyBUaGUgbG9hZGluZyBzcGlubmVyLiAgVGhpcyBpcyBhbiBhbmltYXRlZCBnaWYsIGZvdW5kIGF0IFwiaWNvbnMvbG9hZGVyLmdpZlwiXG4uc2ItaWNvbi1sb2FkaW5nIHtcbiAgd2lkdGg6IDE0OHB4O1xuICB0ZXh0LWFsaWduOiBjZW50ZXI7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgPiBkaXYge1xuICB3aWR0aDogMzZweDtcbiAgaGVpZ2h0OiAxOHB4O1xuICBtYXJnaW46IDJweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGlnaGxpZ2h0Q29sb3I7XG5cbiAgYm9yZGVyLXJhZGl1czogMTAlO1xuICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gIC13ZWJraXQtYW5pbWF0aW9uOiBib3VuY2VkZWxheSAxLjRzIGluZmluaXRlIGVhc2UtaW4tb3V0O1xuICBhbmltYXRpb246IGJvdW5jZWRlbGF5IDEuNHMgaW5maW5pdGUgZWFzZS1pbi1vdXQ7XG4gIC8qIFByZXZlbnQgZmlyc3QgZnJhbWUgZnJvbSBmbGlja2VyaW5nIHdoZW4gYW5pbWF0aW9uIHN0YXJ0cyAqL1xuICAtd2Via2l0LWFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG4gIGFuaW1hdGlvbi1maWxsLW1vZGU6IGJvdGg7XG59XG5cbi5zYi1pY29uLWxvYWRpbmcgLnNiLWljb24tYm91bmNlMSB7XG4gIC13ZWJraXQtYW5pbWF0aW9uLWRlbGF5OiAtMC4zMnM7XG4gIGFuaW1hdGlvbi1kZWxheTogLTAuMzJzO1xufVxuXG4uc2ItaWNvbi1sb2FkaW5nIC5zYi1pY29uLWJvdW5jZTIge1xuICAtd2Via2l0LWFuaW1hdGlvbi1kZWxheTogLTAuMTZzO1xuICBhbmltYXRpb24tZGVsYXk6IC0wLjE2cztcbn1cblxuLy8gSGVhZGVyIGljb24gYmFja2dyb3VuZCBjb2xvcnNcbi5zYlBhZ2VUaXRsZSB7XG5cdC5zZi1pY29uLWN1c3RvbTkwIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNUE5Q0REO1xuXHR9XG5cdC5zZi1pY29uLWN1c3RvbTkzIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjOTA0RDRDO1xuXHR9XG5cdC5zZi1pY29uLXByb2R1Y3Qge1xuXHRcdGJhY2tncm91bmQtY29sb3I6ICNCNzgxRDM7XG5cdH1cdFxuXHQuc2YtaWNvbi1zZXR0aW5ncyB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogI0VEQjU2Njtcblx0fVxuXHQuc2YtaWNvbi1kb3dubG9hZCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxuXHQuc2YtaWNvbi1jb250cmFjdC0xIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkVDMDZFO1xuXHR9XG5cdC5zZi1pY29uLWFwcHJvdmFsIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjMDBDNkI3O1xuXHR9XG4gICAgLnNmLWljb24tcG9zdCB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICM2NUNBRTQ7XG4gICAgfVxuXHQuc2YtaWNvbi1nZG9jIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNTQ2OThEO1xuXHR9XG5cdC5zZi1pY29uLWRvY3VtZW50IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjYmFhYzkzO1xuXHR9XG5cdC5zZi1pY29uLXJlY2VudCB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzZDQTFFOTtcblx0fVxuXHQuc2YtaWNvbi1jb3B5IHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjNkNBMEU5O1xuXHR9XG5cdC5zZi1pY29uLWZhdm9yaXRlIHtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiAjRkY3Qjg0O1xuXHR9XG5cdC5zZi1pY29uLXJlZnJlc2gge1xuXHRcdCYucmVzaXplIHtcblx0XHRcdGJhY2tncm91bmQtY29sb3I6ICM2Q0EwRTk7XG5cdFx0fVxuXHR9XG5cblx0LnNmLWljb24tcmVwbGFjZSB7XG5cdFx0YmFja2dyb3VuZC1jb2xvcjogIzU0Njk4RDtcblx0fVxufVxuXG5ALXdlYmtpdC1rZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHsgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCkgfVxuICA0MCUgeyAtd2Via2l0LXRyYW5zZm9ybTogc2NhbGUoMS4wKSB9XG59XG5cbkBrZXlmcmFtZXMgYm91bmNlZGVsYXkge1xuICAwJSwgODAlLCAxMDAlIHtcbiAgICB0cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gICAgLXdlYmtpdC10cmFuc2Zvcm06IHNjYWxlKDAuMCk7XG4gIH0gNDAlIHtcbiAgICAgIHRyYW5zZm9ybTogc2NhbGUoMS4wKTtcbiAgICAgIC13ZWJraXQtdHJhbnNmb3JtOiBzY2FsZSgxLjApO1xuICAgIH1cbn1cbiIsIi8vIEdsb2JhbCBWYXJpYWJsZXNcbi8vXG4vLyBBbGwgZ2xvYmFsIExFU1MgdmFyaWFibGVzXG4vL1xuLy8gU3R5bGVndWlkZSB2YXJpYWJsZXNcbkBpbXBvcnQgXCJ2YXJpYWJsZXMubGVzc1wiO1xuXG4vL1NGREMgRm9udHNcbkBpbXBvcnQgXCJmb250cy5sZXNzXCI7XG4vLyBNaXhpbnNcbi8vXG4vLyBBbGwgZ2xvYmFsIExFU1MgbWl4aW5zIChmdW5jdGlvbnMpXG4vL1xuLy8gU3R5bGVndWlkZSBNaXhpbnNcbkBpbXBvcnQgXCJtaXhpbnMubGVzc1wiO1xuXG4vLyBUeXBvZ3JhcGh5XG4vL1xuLy8gQWxsIHRleHQgcmVsYXRlZCBjb250ZW50IGluY2x1ZGluZyBoZWFkaW5ncywgbGlua3MsIGFuZCBwbGFpbiB0ZXh0XG4vL1xuLy8gU3R5bGVndWlkZSBUeXBvZ3JhcGh5XG5AaW1wb3J0IFwidHlwb2dyYXBoeS5sZXNzXCI7XG5cbi8vIEJ1dHRvbnMgYW5kIFRvb2xiYXJzXG4vL1xuLy8gQnV0dG9ucywgYnV0dG9uIGJhcnMsIHRvb2xiYXJzXG4vL1xuLy8gU3R5bGVndWlkZSBCdXR0b25zXG5AaW1wb3J0IFwiYnV0dG9ucy5sZXNzXCI7XG5cbi8vIERpYWxvZ3Ncbi8vXG4vLyBEaWFsb2cgd2luZG93cywgcG9wdXBzLCBhbmQgdGhlaXIgbW9kYWwgbWFza3Ncbi8vXG4vLyBTdHlsZWd1aWRlIERpYWxvZ3NcbkBpbXBvcnQgXCJkaWFsb2dzLmxlc3NcIjtcblxuLy8gTGF5b3V0XG4vL1xuLy8gTGF5b3V0IGFuZCBwYWdlIHBhdHRlcm5zXG4vL1xuLy8gU3R5bGVndWlkZSBMYXlvdXRcbkBpbXBvcnQgXCJsYXlvdXQubGVzc1wiO1xuXG4vLyBGb3Jtc1xuLy9cbi8vIEZvcm1zIGFuZCBpbnB1dCByZWxhdGVkIGNvbnRyb2xzXG4vL1xuLy8gU3R5bGVndWlkZSBGb3Jtc1xuQGltcG9ydCBcImZvcm1zLmxlc3NcIjtcbkBpbXBvcnQgXCJkYXRlUGlja2VyLmxlc3NcIjtcblxuLy8gVGFibGVzXG4vL1xuLy8gVGFidWxhciBkaXNwbGF5IG9mIGRhdGFcbi8vXG4vLyBTdHlsZWd1aWRlIFRhYmxlc1xuQGltcG9ydCBcInRhYmxlcy5sZXNzXCI7XG5cbi8vIERyb3AgRG93bnNcbi8vXG4vLyBEcm9wIGRvd25zIC8gbWVudXNcbi8vXG4vLyBTdHlsZWd1aWRlIERyb3Bkb3duc1xuQGltcG9ydCBcImRyb3Bkb3ducy5sZXNzXCI7XG5cbi8vIEljb25zXG4vL1xuLy8gVGhlIGljb25zIGFuZCBpY29uIGZvbnRzXG4vL1xuLy8gU3R5bGVndWlkZSBJY29uc1xuQGltcG9ydCBcImljb25zLmxlc3NcIjtcblxuQGltcG9ydCBcInNmZGMubGVzc1wiO1xuXG5cbi8vIE91ciB0b3AtbW9zdCBzZWxlY3RvciwgcmVzZXQgYnJvd3NlciBpbmNvbnNpc3RlbmNpZXNcbi5zYiB7XG4gIGZvbnQtc2l6ZTogMTBweDsgIC8vIGlkZWFsbHkgdGhpcyB3b3VsZCBiZSA2Mi41JSBvbiBodG1sIHNvIHdlIGNvdWxkIHVzZSByZW0gYnV0IFNGREMgbGltaXRzIHVzIGhlcmVcbiAgZm9udC1mYW1pbHk6IEBzYkZvbnQgIWltcG9ydGFudDsgIC8vIG11c3QgYmUgaW1wb3J0YW50IGFzIFNGREMgYWxzbyBzZXRzXG59XG5cbi8vIFJlc2V0IGJyb3dzZXIgaW5jb25zaXN0ZW5jaWVzXG4uc2IgKiB7XG4gIGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG59XG5cbi8vIEhpZGluZyAtIGEgY29tbW9uIHN0YXRlIG1vZGlmaWVyIGNsYXNzIHRoYXQgY2FuIGJlIGFwcGxpZWQgYW55d2hlcmVcbi5zYiAqLmhpZGRlbiB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi8vIENsZWFyIGZsb2F0aW5nIGNoaWxkcmVuLCB0eXBpY2FsbHkgYnkgcHV0dGluZyB0aGlzIG9uIHBhcmVudFNlbGVjdG9yOmFmdGVyLlxuLnNiQ2xlYXIge1xuICBjb250ZW50OiBcIlwiO1xuICBkaXNwbGF5OiB0YWJsZTtcbiAgY2xlYXI6IGJvdGg7XG59XG5cbi5zYkxpbmsge1xuICBjb2xvcjogQHNiTGlua0NvbG9yO1xufSIsIi8vIFRoZSBwYWdlIGJhY2tncm91bmQgY29sb3JcbkBzYlBhZ2VCZ0NvbG9yOiAjZmZmO1xuXG4vLyBUaGUgZGVmYXVsdC9zdGFuZGFyZCBmb250IGNvbG9yXG5Ac2JGb250Q29sb3I6ICMxNjMyNUM7XG5cbi8vIFRoZSBjb2xvciBvZiBjb250ZW50IHNlY3Rpb25zIHN1Y2ggYXMgcGFnZSB0aXRsZSwgZGV0YWlscywgZXRjXG5Ac2JDb250ZW50QmdDb2xvcjogI0Y0RjZGOTtcblxuLy8gVGhlIGZvbnQgY29sb3Igb2YgY29udGVudCBzZWN0aW9ucyBzdWNoIGFzIHBhZ2UgdGl0bGUsIGRldGFpbHMsIGV0Y1xuQHNiQ29udGVudEZvbnRDb2xvcjogIzU0Njk4RDtcblxuLy8gVGhlIHN0YW5kYXJkIGZvbnQgZmFtaWx5XG5Ac2JGb250OiAnU2FsZXNmb3JjZSBTYW5zJywgJ09wZW4gU2FucycsIEFyaWFsLCBzYW5zLXNlcmlmO1xuXG4vLyBCYXNlIGZvbnQgc2l6ZSB0byBiZSB1c2VkIGZvciBhbGwgb3RoZXIgZm9udCBzaXplIGNhbGN1bGF0aW9uc1xuQHNiRm9udFNpemU6IDEwcHg7XG5cbi8vIEJhc2UgZm9udCBzaXplIGZvciByZWd1bGFyIGNvbnRlbnRcbkBzYkNvbnRlbnRGb250U2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbi8vIERlZmF1bHQgYm9yZGVyIGNvbG9yIGZvciBhIHZhcmlldHkgb2YgZWxlbWVudHNcbkBzYkJvcmRlckNvbG9yOiAjRDhEREU2O1xuXG4vLyAvLyBEZWZhdWx0IGJvcmRlciBjb2xvciBmb3IgdGFibGUgcm93c1xuLy8gQHNiVGFibGVCb3JkZXJDb2xvcjogI0Y0RjZGOTtcblxuLy8gQm9yZGVyIG9mIGNvbnRlbnQgc2VjdGlvbnNcbkBzYkNvbnRlbnRCb3JkZXI6IDFweCBzb2xpZCAjZDBkMGQwO1xuXG4vLyBJY29uIGNvbG9yIGZvciBzZWNvbmRhcnkgaWNvbnMgKHByaW1hcnkgc2hvdWxkIGJlIHNhbWUgYXMgQHNiRm9udENvbG9yKVxuQHNiSWNvbkNvbG9yOiAjODg4O1xuXG4vLyBDb2xvciBmb3IgaGlnaGxpZ2h0cyAoc3BsYXNoIG9mIGNvbG9yKVxuQHNiSGlnaGxpZ2h0Q29sb3I6ICMwMDcwZDI7XG5cbi8vIEZvbnQgY29sb3JzIG9mIGh5cGVybGlua3NcbkBzYkxpbmtDb2xvcjogIzAwNzBEMjtcbkBzYkxpbmtDb2xvckFjdGl2ZTogcmdiKDAsIDU3LCAxMDcpO1xuQHNiTGlua0NvbG9yRGlzYWJsZWQ6IHJnYigyMiwgNTAsIDkyKTtcbkBzYkxpbmtDb2xvckhvdmVyOiByZ2IoMCwgOTUsIDE3OCk7XG5cbi8vIFBhZ2UgSGVhZGVyIGxlZnQgKGFuZCB1c3VhbGx5IHJpZ2h0KSBtYXJnaW5cbkBzYlBhZ2VIZWFkZXJMZWZ0OiAxNXB4O1xuXG4vLyBQYWdlIEhlYWRlciB0b3AgKGFuZCB1c3VhbGx5IGJvdHRvbSkgbWFyZ2luXG5Ac2JQYWdlSGVhZGVyVG9wOiAxNXB4O1xuXG4vLyBNYXNrIGNvbG9yXG5Ac2JNYXNrQ29sb3I6ICNBOEI3Qzc7XG5cbi8vIFBhZ2UgSGVhZGVyXG5Ac2JIZWFkZXJCZ0NvbG9yOiAjZjRmNmY5O1xuQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjogI2Y0ZjZmOTtcbkBzYkhlYWRlckJvcmRlckNvbG9yOiAjZDBkMGQwO1xuQHNiSGVhZGVyRm9udENvbG9yOiAjMTYzMjVjO1xuQHNiSGVhZGVyU3VwcG9ydEZvbnRDb2xvcjogIzU0Njk4ZDtcblxuQHNiQmdDb2xvcjogI2ZmZmZmZjtcbkBzYkRldGFpbEJnQ29sb3I6I2Y0ZjZmOTtcbkBzYlNlY29uZGFyeUZvbnRDb2xvcjogIzY5Njk2OTtcblxuLy8gVGFibGVzXG5Ac2JUYWJsZUhlYWRlckZvbnRDb2xvcjogIzU0Njk4ZDtcbkBzYlRhYmxlUm93SG92ZXJDb2xvcjogI2Y0ZjZmOTtcblxuLy8gQnV0dG9uc1xuQHNiR3JvdXBCdG5CZ0NvbG9yOiAjZmZmZmZmO1xuQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjogI2Q4ZGRlNjtcbkBzYkdyb3VwQnRuRm9udENvbG9yOiAjMDA3MGQyO1xuQHNiR3JvdXBCdG5Ib3ZlckJnQ29sb3I6ICNmNGY2Zjk7XG5Ac2JHcm91cEJ0bkhvdmVyRm9udENvbG9yOiAjMDA3MGQyO1xuQHNiR3JvdXBCdG5EaXNhYmxlZEZvbnRDb2xvcjogI2JlYmViZTtcbkBzYlByaW1hcnlCdG5CZ0NvbG9yOiAjMDA3MGQyO1xuQHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjogI2ZmZmZmZjtcbkBzYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3I6ICMwMDVmYjI7XG5cbi8vIEljb25zXG5Ac2JBY2NlbnRJY29uQ29sb3I6ICMwMDcwZDI7XG5Ac2JBY2NlbnRJY29uSG92ZXJDb2xvcjogIzE2MzI1YztcbkBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yOiAjODg4ODg4O1xuQHNiSGlkZUljb25zOiBibG9jaztcblxuLy8gVGFic1xuQHNiVGFiU2VsZWN0ZWRDb2xvcjogIzE2NmJiZjtcblxuLy8gQnJlYWtwb2ludHMgZm9yIE1lZGlhIFF1ZXJpZXNcbkBzYkJwU21hbGw6IDA7XG5Ac2JCcE1lZGl1bTogNzY3cHg7XG5Ac2JCcExhcmdlOiAxMDI0cHg7XG5Ac2JCcFhMYXJnZTogMTIwMHB4O1xuIiwiLy8gQXBwbGljYXRpb24gU2V0dGluZ3MgcGFnZVxuLy9cbi8vIG1hbnkgb2YgdGhlIHN0eWxlcyBoZXJlIGp1c3Qgb3ZlcnJpZGUgdGhlIFNGIHN0eWxlcyBhcyB0aGlzIHBhZ2UgaXMgaGVhdnkgVkYgbWFya3VwXG4jc2JDcHFTZXR0aW5ncyB7XG5cbiAgcGFkZGluZzogQHNiUGFnZUhlYWRlckxlZnQ7XG5cbiAgLmJQYWdlQmxvY2sge1xuICAgIGJvcmRlcjogMCAhaW1wb3J0YW50O1xuICAgIGJhY2tncm91bmQ6IG5vbmUgIWltcG9ydGFudDtcbiAgfVxuXG4gIC5zYlRhYnMge1xuICAgIGZvbnQtZmFtaWx5OiBpbmhlcml0O1xuXG4gICAgPiB0Ym9keSA+IHRyOm50aC1jaGlsZCgxKSA+IC5yaWNoLXRhYi1ib3R0b20tbGluZSB7XG4gICAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQgQHNiSGVhZGVyQm9yZGVyQ29sb3I7XG5cbiAgICAgIC5yaWNoLXRhYmhkci1jZWxsLWFjdGl2ZSB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IDRweCBzb2xpZCBAc2JUYWJTZWxlY3RlZENvbG9yO1xuICAgICAgfVxuXG4gICAgICAucmljaC10YWJoZHItc2lkZS1ib3JkZXIge1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgfVxuXG4gICAgICAucmljaC10YWJoZHItc2lkZS1jZWxsIHtcbiAgICAgICAgYm9yZGVyOiAwO1xuICAgICAgfVxuXG4gICAgICAucmljaC10YWItYWN0aXZlLCAucmljaC10YWItaW5hY3RpdmUge1xuICAgICAgICBiYWNrZ3JvdW5kOiBub25lICFpbXBvcnRhbnQ7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplICFpbXBvcnRhbnQ7XG4gICAgICAgIHBhZGRpbmc6IDAgMTZweCA2cHggMTZweDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAucmljaC10YWItaGVhZGVyLCAucmljaC10YWJwYW5lbC1jb250ZW50IHtcbiAgICAgIGZvbnQtZmFtaWx5OiBpbmhlcml0ICFpbXBvcnRhbnQ7XG4gICAgICBmb250LXNpemU6IGluaGVyaXQgIWltcG9ydGFudDtcbiAgICB9XG5cbiAgICAucmljaC10YWJwYW5lbC1jb250ZW50IHtcbiAgICAgIGJhY2tncm91bmQ6IG5vbmUgIWltcG9ydGFudDtcbiAgICAgIGJvcmRlcjogMCAhaW1wb3J0YW50O1xuICAgIH1cblxuICAgIC5sYWJlbENvbCwgLmRhdGFDb2wge1xuICAgICAgcGFkZGluZy10b3A6IDhweDtcbiAgICAgIHBhZGRpbmctYm90dG9tOiA4cHg7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cblxuICAgIC5sYWJlbENvbCwgLmRhdGEyQ29sIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgZm9udC13ZWlnaHQ6IG5vcm1hbDtcbiAgICB9XG5cbiAgICBpbnB1dDpub3QoW3R5cGU9c3VibWl0XSk6bm90KFt0eXBlPWNoZWNrYm94XSksIHNlbGVjdCB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHdpZHRoOiAyMjBweCAhaW1wb3J0YW50O1xuICAgIH1cblxuICAgIC5zYkJ0biB7XG4gICAgICBmb250LXNpemU6IGluaGVyaXQ7XG4gICAgfVxuICB9XG59XG4iLCIvL3NldFZhcmlhYmxlIHNhbXBsZSBzd2F0Y2hlcyBpdCB3aWxsIHJlYWQgZGVmYXVsdHMgZnJvbSBvbiBUaGVtZS5wYWdlXG4udGhlbWVQYWdle1xuICAuc2JIZWFkZXJCZ0NvbG9ye2NvbG9yOkBzYkhlYWRlckJnQ29sb3I7fVxuICAuc2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9ye2NvbG9yOkBzYkhlYWRlclNlY29uZGFyeUJnQ29sb3I7fVxuICAuc2JIZWFkZXJCb3JkZXJDb2xvcntjb2xvcjpAc2JIZWFkZXJCb3JkZXJDb2xvcjt9XG4gIC5zYkhlYWRlckZvbnRDb2xvcntjb2xvcjpAc2JIZWFkZXJGb250Q29sb3I7fVxuICAuc2JIZWFkZXJTdXBwb3J0Rm9udENvbG9ye2NvbG9yOkBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7fVxuICAuc2JCZ0NvbG9ye2NvbG9yOkBzYkJnQ29sb3I7fVxuICAuc2JEZXRhaWxCZ0NvbG9ye2NvbG9yOkBzYkRldGFpbEJnQ29sb3J9O1xuICAuc2JGb250Q29sb3J7Y29sb3I6QHNiRm9udENvbG9yO31cbiAgLnNiU2Vjb25kYXJ5Rm9udENvbG9ye2NvbG9yOkBzYlNlY29uZGFyeUZvbnRDb2xvcjt9XG4gIC5zYkJvcmRlckNvbG9ye2NvbG9yOkBzYkJvcmRlckNvbG9yO31cbiAgLnNiVGFibGVIZWFkZXJGb250Q29sb3J7Y29sb3I6QHNiVGFibGVIZWFkZXJGb250Q29sb3I7fVxuICAuc2JUYWJsZVJvd0hvdmVyQ29sb3J7Y29sb3I6QHNiVGFibGVSb3dIb3ZlckNvbG9yO31cbiAgLnNiR3JvdXBCdG5CZ0NvbG9ye2NvbG9yOkBzYkdyb3VwQnRuQmdDb2xvcjt9XG4gIC5zYkdyb3VwQnRuQm9yZGVyQ29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjt9XG4gIC5zYkdyb3VwQnRuRm9udENvbG9ye2NvbG9yOkBzYkdyb3VwQnRuRm9udENvbG9yO31cbiAgLnNiR3JvdXBCdG5Ib3ZlckJnQ29sb3J7Y29sb3I6QHNiR3JvdXBCdG5Ib3ZlckJnQ29sb3I7fVxuICAuc2JHcm91cEJ0bkhvdmVyRm9udENvbG9ye2NvbG9yOkBzYkdyb3VwQnRuSG92ZXJGb250Q29sb3I7fVxuICAuc2JHcm91cEJ0bkRpc2FibGVkRm9udENvbG9ye2NvbG9yOkBzYkdyb3VwQnRuRGlzYWJsZWRGb250Q29sb3I7fVxuICAuc2JQcmltYXJ5QnRuQmdDb2xvcntjb2xvcjpAc2JQcmltYXJ5QnRuQmdDb2xvcjt9XG4gIC5zYlByaW1hcnlCdG5Gb250Q29sb3J7Y29sb3I6QHNiUHJpbWFyeUJ0bkZvbnRDb2xvcjt9XG4gIC5zYlByaW1hcnlCdG5Ib3ZlckJnQ29sb3J7Y29sb3I6QHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjt9XG4gIC5zYkFjY2VudEljb25Db2xvcntjb2xvcjpAc2JBY2NlbnRJY29uQ29sb3I7fVxuICAuc2JBY2NlbnRJY29uSG92ZXJDb2xvcntjb2xvcjpAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjt9XG4gIC5zYkFjY2VudEljb25EaXNhYmxlZENvbG9ye2NvbG9yOkBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yO31cbiAgLnNiSWNvbkNvbG9ye2NvbG9yOkBzYkljb25Db2xvcjt9XG4gIC5zYlRhYlNlbGVjdGVkQ29sb3J7Y29sb3I6QHNiVGFiU2VsZWN0ZWRDb2xvcjt9XG59XG4vL3N0YXJ0IFRoZW1lLnBhZ2Ugc3R5bGluZyBoZXJlXG4udGhlbWVQYWdle1xuICBjb2xvcjogQHNiRm9udENvbG9yO1xuICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JCZ0NvbG9yO1xuICAuc2JUaXRsZXMgaDJ7XG4gICAgY29sb3I6IEBzYkhlYWRlclN1cHBvcnRGb250Q29sb3I7XG4gIH1cbiAgLnNiQnRuIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgIGJvcmRlci1jb2xvcjogQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgY29sb3I6IEBzYkdyb3VwQnRuSG92ZXJGb250Q29sb3JcbiAgICB9XG4gICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkJnQ29sb3I7XG4gICAgICBib3JkZXItY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiUHJpbWFyeUJ0bkhvdmVyQmdDb2xvcjtcbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgLm5vcm1hbC5zZi1pY29uLWNvcHk6YmVmb3Jle1xuICAgIGNvbG9yOiBAc2JJY29uQ29sb3JcbiAgfVxuICAuYWNjZW50LnNmLWljb24tY29weTpiZWZvcmV7XG4gICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgfVxuICAuYWNjZW50LnNmLWljb24tY29weTpob3Zlcjo6YmVmb3JlIHtcbiAgICBjb2xvcjogQHNiQWNjZW50SWNvbkhvdmVyQ29sb3I7XG4gIH1cbiAgLmRpc2FibGVkLnNmLWljb24tY29weTpiZWZvcmV7XG4gICBjb2xvcjogQHNiQWNjZW50SWNvbkRpc2FibGVkQ29sb3I7XG4gIH1cblx0LnNmLWljb24tY29weXtcblx0XHRmb250LXNpemU6IDI0cHg7XG5cdFx0cGFkZGluZy1yaWdodDo0MHB4O1xuXHR9XG5cdC5zYlRhYmxlPnRib2R5PnRyPnRkIHtcblx0ICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuXHR9XG5cdC5kZW1vSXRlbXMge1xuXHQgICAgYm9yZGVyOiAxcHggc29saWQgIzAwMDAwMDtcblx0ICAgIHBhZGRpbmc6IDBweDtcblx0ICAgIG1hcmdpbi1sZWZ0OjYwcHg7XG5cdCAgICBtYXJnaW4tcmlnaHQ6NjBweDtcblx0ICAgIHBhZGRpbmctdG9wOjIwcHg7XG5cdCAgICBwYWRkaW5nLWJvdHRvbToyMHB4O1xuXHQgICAgcGFkZGluZy1sZWZ0OjIwcHg7XG5cdCAgICBwYWRkaW5nLXJpZ2h0OjIwcHg7XG5cdCAgICBtYXJnaW4tdG9wOjQwcHg7XG5cdCAgICBib3JkZXItY29sb3I6IEBzYkJvcmRlckNvbG9yICFpbXBvcnRhbnQ7XG5cdH1cblx0LmJvdHRvbVBhZGRpbmd7XG5cdFx0cGFkZGluZy1ib3R0b206NDBweDtcblx0fVxuXHQudGhlbWVIZWFkZXJ7XG5cdFx0cGFkZGluZy10b3A6NDBweDtcblx0XHRwYWRkaW5nLWxlZnQ6NjBweDtcblx0XHRwYWRkaW5nLWJvdHRvbToxMHB4O1xuICAgIGJvcmRlci1ib3R0b20tc3R5bGU6IHNvbGlkICFpbXBvcnRhbnQ7XG4gICAgYm9yZGVyLWJvdHRvbS13aWR0aDogMXB4ICFpbXBvcnRhbnQ7XG4gICAgYm9yZGVyLWJvdHRvbS1jb2xvcjogQHNiQm9yZGVyQ29sb3IgIWltcG9ydGFudDtcbiAgICBoM3tcbiAgICAgIGNvbG9yOiBAc2JGb250Q29sb3IgIWltcG9ydGFudDtcbiAgICB9XG5cdH1cblx0LmNvbG9yUGlja1dyYXBwZXJ7XG5cdFx0d2lkdGg6MzAwcHg7XG5cdFx0ZGlzcGxheTppbmxpbmUtYmxvY2s7XG5cdFx0bWFyZ2luLWxlZnQ6NTVweDtcblx0XHRtYXJnaW4tcmlnaHQ6NTVweDtcblx0XHRtYXJnaW4tdG9wOjQwcHg7XG5cdH1cblx0LmNvbG9yUGlja1dyYXBwZXIgc3Bhbntcblx0XHRwb3NpdGlvbjpyZWxhdGl2ZTtcblx0XHR0b3A6MTFweDtcblx0fVxuXHQuZmllbGRXcmFwcGVye1xuXHRcdHdpZHRoOjMwMHB4O1xuXHRcdGRpc3BsYXk6aW5saW5lLWJsb2NrO1xuXHRcdG1hcmdpbi1sZWZ0OjU1cHg7XG5cdFx0bWFyZ2luLXJpZ2h0OjU1cHg7XG5cdFx0bWFyZ2luLXRvcDo0MHB4O1xuXG5cdFx0JiA+IGlucHV0IHtcblx0XHRcdGZsb2F0OiByaWdodDtcblx0XHRcdG1hcmdpbi1yaWdodDogMjVweDtcblx0XHRcdG1hcmdpbi10b3A6IDlweDtcblx0XHR9XG5cdH1cblx0LmZpZWxkV3JhcHBlciBzcGFue1xuXHRcdHBvc2l0aW9uOnJlbGF0aXZlO1xuXHRcdHRvcDoxMXB4O1xuXHR9XG5cdC5iYWNrZ3JvdW5kSGlkZXtcblx0XHRkaXNwbGF5Om5vbmU7XG5cdH1cblx0LnNwLXJlcGxhY2VyLnNwLWxpZ2h0LmZ1bGwtc3BlY3RydW0ge1xuXHQgICAgZmxvYXQ6IHJpZ2h0O1xuXHQgICAgbWFyZ2luLXJpZ2h0OjEwcHg7XG5cdH1cblx0LmNvbnRlbnR7XG5cdFx0ICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS40O1xuXHR9XG5cdC5zYkJ1dHRvbnN7XG5cdFx0bWFyZ2luLWxlZnQ6MTBweDtcblx0fVxuXHQuc3AtcmVwbGFjZXIge1xuXHQgIGJvcmRlci1jb2xvcjogI2Q4ZGRlNiAhaW1wb3J0YW50O1xuXHQgIHBhZGRpbmc6IDAgIWltcG9ydGFudDtcblx0XHRiYWNrZ3JvdW5kLWNvbG9yOiBpbmhlcml0ICFpbXBvcnRhbnQ7XG5cdFx0Ym9yZGVyLXJhZGl1czo1cHg7XG5cdH1cblx0LnNwLWRkIHtcblx0ICBsaW5lLWhlaWdodDo0MHB4ICFpbXBvcnRhbnQ7XG5cdCAgaGVpZ2h0OjQwcHghaW1wb3J0YW50O1xuXHR9XG5cdC5zcC1wcmV2aWV3e1xuXHQgIG1hcmdpbi1yaWdodDowcHggIWltcG9ydGFudDtcblx0ICB3aWR0aDo0MHB4ICFpbXBvcnRhbnQ7XG5cdCAgaGVpZ2h0OjQwcHggIWltcG9ydGFudDtcblx0ICBib3JkZXItd2lkdGg6MHB4ICFpbXBvcnRhbnQ7XG5cdH1cblx0LnNwLWNvbnRhaW5lcntcblx0ICBiYWNrZ3JvdW5kLWNvbG9yOiNmZmZmZmYgIWltcG9ydGFudDtcblx0ICBib3JkZXI6IDFweCBzb2xpZCAjZDhkZGU2ICFpbXBvcnRhbnQ7XG5cdCAgYm9yZGVyLXJhZGl1czo1cHghaW1wb3J0YW50O1xuXHR9XG59XG4iLCIjc2JUcmFuc2xhdGUge1xuXG4gIC5zYkRlc2NyaXB0aW9uIHtcbiAgICB3aWR0aDogOTAlO1xuICB9XG5cbiAgLnNiTG9uZ1RleHRBcmVhIHtcbiAgICB3aWR0aDogOTAlO1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgfVxuICBcbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICBib3JkZXI6IG5vbmU7XG5cbiAgICBzZWxlY3Qge1xuICAgICAgbWluLXdpZHRoOiAyMDBweDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cblxuICAgID4gc3BhbiB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHBhZGRpbmc6IDAgMjBweCAwIDQwcHg7XG4gICAgfVxuICB9XG5cblxuICAuc2JGaWVsZHNUYWJsZSB7XG4gICAgbWFyZ2luLXRvcDogMDtcbiAgICBwYWRkaW5nLXRvcDogMDtcblxuICAgID4gLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyID4gdGQge1xuXG4gICAgICAgIGhlaWdodDogQHNiVGFibGVDZWxsSGVpZ2h0O1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG5cbiAgICAgICAgJjpudGgtY2hpbGQoMSksICY6bnRoLWNoaWxkKDIpIHtcbiAgICAgICAgICB3aWR0aDogMjAlO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpudGgtY2hpbGQoMykge1xuICAgICAgICAgIHdpZHRoOiA2MCU7XG4gICAgICAgIH1cblxuICAgICAgICA+IGlucHV0LCB0ZXh0YXJlYSB7XG4gICAgICAgICAgd2lkdGg6IDEwMCU7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRleHRhcmVhIHtcbiAgICAgICAgICBib3JkZXI6IEBzYlRleHRib3hCb3JkZXI7XG4gICAgICAgICAgYm9yZGVyLXJhZGl1czogQHNiVGV4dGJveFJhZGl1cztcbiAgICAgICAgICBwYWRkaW5nOiAwIDVweDtcbiAgICAgICAgICBtaW4taGVpZ2h0OiAzNXB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiVXNlckRlZmluZWRGaWVsZHNUYWJsZSB7XG4gICAgPiAuc2JUYWJsZSB7XG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICY6bnRoLWNoaWxkKDEpIHtcbiAgICAgICAgICB3aWR0aDogMTUlO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpudGgtY2hpbGQoMikge1xuICAgICAgICAgIHdpZHRoOiAzMCU7XG4gICAgICAgIH1cblxuICAgICAgICAmOm50aC1jaGlsZCgzKSB7XG4gICAgICAgICAgd2lkdGg6IDU1JTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gaW5wdXQsIHRleHRhcmVhIHtcbiAgICAgICAgICB3aWR0aDogMTAwJTtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGV4dGFyZWEge1xuICAgICAgICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgICAgICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgICAgICAgIG1pbi1oZWlnaHQ6IDM1cHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgLnNiVGFibGUge1xuICAgIC5zYkJ1dHRvbnMge1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgIC5zYkJ0biB7XG4gICAgICAgIHdpZHRoOiAzNXB4O1xuICAgICAgICBoZWlnaHQ6IDQwcHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLmNrZV90ZXh0YXJlYV9pbmxpbmUge1xuICAgIGJvcmRlcjogQHNiVGV4dGJveEJvcmRlcjtcbiAgICBib3JkZXItcmFkaXVzOiBAc2JUZXh0Ym94UmFkaXVzO1xuICAgIHBhZGRpbmc6IDAgNXB4O1xuICAgIG1pbi1oZWlnaHQ6IDcwcHg7XG4gIH1cbn1cbiIsIi8vIFNlYXJjaCByZXN1bHRzIGRpc3BsYXllZFxuI3NiQXNzZXRTZWFyY2gge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIC8vIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIC8vIGJhY2tncm91bmQ6IEBzYkJ0bkJnQ29sb3I7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIGJhY2tncm91bmQ6IG5vbmU7XG4gICAgICBib3JkZXI6IG5vbmU7XG5cbiAgICBoZWFkZXIge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgICB9XG4gIH1cblxuICB0YWJsZS5zYlRhYmxle1xuICAgIG1hcmdpbi1ib3R0b206NTBweDtcbiAgfVxuXG4gIC5wYWdpbmF0aW9uQ29udHJvbHNXcmFwcGVye1xuICAgIHBvc2l0aW9uOiBmaXhlZDtcbiAgICBsZWZ0OiAwO1xuICAgIHJpZ2h0OiAwO1xuICAgIGJvdHRvbTowO1xuICAgIHBvaW50ZXItZXZlbnRzOiBub25lO1xuICB9XG4gIC5wYWdpbmF0aW9uQ29udHJvbHMge1xuICAgIHBhZGRpbmc6IDRweDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICBtYXJnaW4tbGVmdDphdXRvO1xuICAgIG1hcmdpbi1yaWdodDphdXRvO1xuICAgIHdpZHRoOjI1MHB4O1xuICAgIHBvaW50ZXItZXZlbnRzOiBhdXRvO1xuICAgIGJhY2tncm91bmQtY29sb3I6QHNiQmdDb2xvcjtcbiAgICAtd2Via2l0LWJvcmRlci10b3AtbGVmdC1yYWRpdXM6IDRweDtcbiAgICAtd2Via2l0LWJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiA0cHg7XG4gICAgLW1vei1ib3JkZXItcmFkaXVzLXRvcGxlZnQ6IDRweDtcbiAgICAtbW96LWJvcmRlci1yYWRpdXMtdG9wcmlnaHQ6IDRweDtcbiAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiA0cHg7XG4gICAgYm9yZGVyLXRvcC1yaWdodC1yYWRpdXM6IDRweDtcbiAgICAtd2Via2l0LWJveC1zaGFkb3c6IDNweCAwcHggNXB4IDBweCByZ2JhKDE3MCwxNzAsMTcwLDEpO1xuICAgIC1tb3otYm94LXNoYWRvdzogM3B4IDBweCA1cHggMHB4IHJnYmEoMTcwLDE3MCwxNzAsMSk7XG4gICAgYm94LXNoYWRvdzogM3B4IDBweCA1cHggMHB4IHJnYmEoMTcwLDE3MCwxNzAsMSk7XG5cbiAgICBzcGFuIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgfVxuXG4gICAgaW5wdXQge1xuICAgICAgaGVpZ2h0OiBhdXRvO1xuICAgICAgd2lkdGg6IDMwcHg7XG4gICAgICBtYXJnaW46IDAgNXB4O1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIHBhZGRpbmc6IDJweDtcbiAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICB9XG5cbiAgICBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAyO1xuICAgICAgbWFyZ2luLXJpZ2h0OiAtNXB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgJi5kaXNhYmxlZCB7XG4gICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uRGlzYWJsZWRDb2xvcjtcbiAgICAgIH1cblxuICAgICAgJjpub3QoLmRpc2FibGVkKSB7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2ItaWNvbi1sZWZ0LWRpcixcbiAgICAuc2ItaWNvbi1yaWdodC1kaXIge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG4gICAgfVxuICB9XG59XG5cbi8vIFNpZGUgUGFuZWxcbi5zYkFzc2V0RmlsdGVyIHtcbiAgLnNiUGFuZWw7XG4gIHRvcDogMTEzcHg7XG5cbiAgaW5wdXQge1xuICAgIGRpc3BsYXk6IGlubGluZTtcbiAgfVxuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxufVxuIiwiLy8gU2VhcmNoIHJlc3VsdHMgZGlzcGxheWVkXG4jc2JTZWxlY3RDb250cmFjdCB7XG4gIC5zYlNlYXJjaFJlc3VsdHM7XG5cbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gIFx0YmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgXHRib3JkZXI6IG5vbmU7XG4gIH1cbn0iLCIvLyBTZWFyY2ggcmVzdWx0cyBkaXNwbGF5ZWRcbiNzYkFtZW5kQ29udHJhY3Qge1xuICAuc2JTZWFyY2hSZXN1bHRzO1xuXG4gIC5zYlBhZ2VCbG9ja1NlY3Rpb24ge1xuICBcdGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gIFx0Ym9yZGVyOiBub25lO1xuICB9XG5cbiAgLnNiUGFnZVRpdGxlPi5zYlBhZ2VUaXRsZVRhYmxlPi5zYlBhZ2VUaXRsZUxlZnQgW2NsYXNzXj1zZi1pY29uXTpiZWZvcmUge1xuICBcdHRvcDogMHB4O1xuICB9XG4gIC5zYkxvYWRpbmdNYXNrIHtcbiAgXHR2aXNpYmlsaXR5OiBoaWRkZW47XG4gIH1cbn1cblxuQG1lZGlhIG9ubHkgc2NyZWVuIGFuZCAobWluLWRldmljZS13aWR0aCA6IDMyMHB4KSBhbmQgKG1heC1kZXZpY2Utd2lkdGggOiA2NDBweCkge1xuXG4gICNzYkFtZW5kQ29udHJhY3Qge1xuICAgIC5zYlBhZ2VUaXRsZVJpZ2h0IHtcblxuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICAgIC5zYkJ1dHRvbnMge1xuICAgICAgICBmbG9hdDogbm9uZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxufSIsIi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIFByZXZpZXcgcGFnZVxuXG5QcmV2aWV3cyBhIGRvY3VtZW50IGluIHRoZSBicm93c2VyIHdpdGggY2hvc2VuIHRlbXBsYXRlLCBhZGRpdGlvbmFsIGRvY3MsIGV0Yy5cbiovXG4jc2JEb2NHZW5QcmV2aWV3IHtcblx0LnNiUGFnZUJsb2NrU2VjdGlvbiB7XG5cdFx0ZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXHRcdHBhZGRpbmc6IDA7XG5cdFx0YmFja2dyb3VuZDogbm9uZTtcblx0XHRib3JkZXI6IG5vbmU7XG5cdFx0bWFyZ2luLXJpZ2h0OiA0NHB4O1xuXG5cdFx0JjpsYXN0LW9mLXR5cGUge1xuXHRcdFx0bWFyZ2luLXJpZ2h0OiBpbmhlcml0O1xuXHRcdH1cblx0fVxuXG5cdC5zYkR1YWxMaXN0Qm94IHNlbGVjdCB7XG5cdFx0d2lkdGg6IDMyMHB4O1xuXHR9XG59XG5cbi8qXG5Eb2N1bWVudCBHZW5lcmF0aW9uIG9wdGlvbnNcblxuQ2hvaWNlcyBmb3IgZG9jdW1lbnQgZ2VuZXJhdGlvbiBzdWNoIGFzIHRlbXBsYXRlLCBvdXRwdXQgZm9ybWF0LCBldGMuXG4qL1xuI3NiRG9jR2VuT3B0aW9ucyB7XG5cdG1hcmdpbjogMCAwIDAgNDBweDtcblx0bGFiZWwge1xuXHRcdGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXHR9XG5cblx0PiB0Ym9keSA+IHRyID4gdGQge1xuXHRcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdFx0cGFkZGluZy1ib3R0b206IDhweDtcblx0fVxuXG5cdD4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHRcdHRleHQtYWxpZ246IHJpZ2h0O1xuXG5cdFx0PiBbY2xhc3NePXNiLWljb25dIHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjU7XG5cdFx0XHRjb2xvcjogQHNiSWNvbkNvbG9yO1xuXHRcdH1cblx0fVxuXG5cdGlucHV0LCBzZWxlY3Qge1xuXHRcdHdpZHRoOiAzMjVweDtcblx0fVxuXG5cdC5zYkR1YWxMaXN0Qm94IHNlbGVjdCB7XG5cdFx0d2lkdGg6IDMyMHB4O1xuXHR9XG59XG4iLCIjc2JJbXBvcnRMaW5lc3tcblxuXHQjc2JJbXBvcnRPcHRpb25ze1xuXHRcdG1hcmdpbjogMCAwIDAgNDBweDtcblxuXHRcdGZpZWxkc2V0IHtcblx0XHRcdGJvcmRlcjogMDtcblx0XHRcdHBhZGRpbmc6IDVweDtcblxuXHRcdFx0PiBsYWJlbCB7XG5cdFx0XHRcdG1hcmdpbi1yaWdodDogMTBweDtcblx0XHRcdFx0Zm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cdFx0XHRcdGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0XHRcdFx0d2lkdGg6IDE3NXB4O1xuXHRcdFx0XHR0ZXh0LWFsaWduOiByaWdodDtcblx0XHRcdH1cblxuXHRcdFx0PiBpbnB1dCwgc2VsZWN0IHtcblx0XHQgICAgXHR3aWR0aDogMjAwcHg7XG5cdFx0ICBcdH1cblx0XHR9XG5cdH1cblxuXHQuc2JQYWdlQmxvY2tTZWN0aW9uIHtcblx0ICAgIGJhY2tncm91bmQ6IG5vbmU7XG5cdCAgICBib3JkZXI6IG5vbmU7XG5cblx0XHRoZWFkZXIge1xuXHRcdFx0bWFyZ2luLWJvdHRvbTogMTBweDtcblx0XHR9XG4gIFx0fVxufVxuIiwiLy8gTGluZSBFZGl0b3JcbiNzYkxpbmVFZGl0b3Ige1xuXG4gIC8vIHRvb2wgYmFycyBpbiB0aGUgcGFnZSB0aXRsZVxuICAuc2JQYWdlVGl0bGUge1xuXG4gICAgLnNiUGFnZVRpdGxlUmlnaHQge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgfVxuXG4gICAgJi5zcXVlZXplZCB7XG4gICAgICAuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLWxlZnQ6IDE2cHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIHRyYW5zaXRpb246IGFsbCAuMjVzIGVhc2UtaW47XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgICAgICYuaWNvbiB7XG4gICAgICAgICAgcGFkZGluZzogOHB4IDdweDtcbiAgICAgICAgfVxuXG4gICAgICAgICYuc2YtaWNvbi1kb3duIHtcbiAgICAgICAgICBwYWRkaW5nLXRvcDogOHB4O1xuICAgICAgICB9XG5cbiAgICAgICAgLnNmLWljb24tcmVmcmVzaDpiZWZvcmUge1xuICAgICAgICAgIGZvbnQtc2l6ZTogMS4xZW07XG4gICAgICAgICAgbWFyZ2luLXRvcDogMC4zZW07XG4gICAgICAgICAgbWFyZ2luLWJvdHRvbTogMC4zZW07XG4gICAgICAgIH1cblxuICAgICAgICA+IG1lbnUgLnNlcGFyYXRvciB7XG4gICAgICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkJvcmRlckNvbG9yO1xuICAgICAgICAgIG1hcmdpbi1ib3R0b206IDZweDtcbiAgICAgICAgfVxuXG4gICAgICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIH1cblxuICAgICAgfVxuXG5cbiAgICAgID4gLnNiVG9vbFNlcGFyYXRvciB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgaGVpZ2h0OiAxcHg7XG4gICAgICAgIHdpZHRoOiAxMHB4O1xuICAgICAgICBmbG9hdDogbGVmdDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAjc2JSb2xsdXBNZW51UXVvdGUgPiB1bC5zYlRvb2xzID4gbGkuc2JUb29sU2VwYXJhdG9yIHtcblx0ICBkaXNwbGF5OiBub25lO1xuXHR9XG5cblx0I3NiUm9sbHVwTWVudVF1b3RlID4gc3Bhbi5zZi1pY29uLWRvd24ge1xuXHQgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0ICBwYWRkaW5nOiA4cHggMTJweDtcblx0fVxuICB9XG5cbiAgLnNiUXVvdGVBY3Rpb25zLFxuICAuc2JHcm91cEFjdGlvbnMge1xuICAgIC5yZW5ld1N1YnNjcmlwdGlvbnNCdG4sXG4gICAgLnVwZ3JhZGVBc3NldHNCdG4sXG4gICAgLnJlc2V0RGlzY0J0bixcbiAgICAub3B0aW9uYWxBbGxCdG4sXG4gICAgLm9wdGlvbmFsTm9uZUJ0bixcbiAgICAuZGVsZXRlTGluZXNCdG4sXG4gICAgLmFkZEdyb3VwQnRuLFxuICAgIC51bmdyb3VwQnRuIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgLnNiVG9vbCB7XG5cblxuICAgICAgJi5maXJzdCB7XG4gICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgICAgYm9yZGVyLXRvcC1sZWZ0LXJhZGl1czogM3B4O1xuICAgICAgfVxuXG4gICAgICAmLmVuZCxcbiAgICAgICYubGFzdCB7XG4gICAgICAgIGJvcmRlci1ib3R0b20tcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICAgIGJvcmRlci10b3AtcmlnaHQtcmFkaXVzOiAzcHg7XG4gICAgICB9XG5cbiAgICAgICYuc2JUb29sU2VwYXJhdG9yIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBpbmhlcml0O1xuXG4gICAgICAgICsgLnNiVG9vbCB7XG4gICAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgICAgIGJvcmRlci1ib3R0b20tbGVmdC1yYWRpdXM6IDNweDtcbiAgICAgICAgICBib3JkZXItdG9wLWxlZnQtcmFkaXVzOiAzcHg7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICA+IC5zYlRvb2xzID4gLnNiVG9vbDpub3QoI3NiUm9sbHVwTWVudVF1b3RlKTpub3QoLnNiUHJpbWFyeUFjdGlvbikge1xuICAgICAgcGFkZGluZzogMDtcblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgICB9XG5cbiAgICAgID4gc3BhbiwgaSB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JDb250ZW50QmdDb2xvcjtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICA+IHNwYW4uc2YtaWNvbi1kb3duIHtcbiAgICAgICAgYm9yZGVyLWxlZnQ6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgfVxuICAgIH1cblxuICAgID4gLnNiVG9vbHMgPiAuc2JQcmltYXJ5QWN0aW9uIHtcbiAgICAgIHBhZGRpbmc6IDA7XG5cbiAgICAgID4gc3BhbiwgaSB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIH1cblxuICAgICAgPiBzcGFuLnNmLWljb24tZG93biB7XG4gICAgICAgIGJvcmRlci1sZWZ0OiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgIH1cbiAgICB9XG5cbiAgfVxuICAuc2JRdW90ZUFjdGlvbnMge1xuICAgID4gLnNiVG9vbHMgPiAuc2JUb29sOm5vdCgjc2JSb2xsdXBNZW51UXVvdGUpIHtcblxuICAgICAgPiBzcGFuLmxhYmVsLFxuICAgICAgPiBpIHtcbiAgICAgICAgcGFkZGluZzogOHB4IDEycHg7XG4gICAgICB9XG5cbiAgICAgID4gc3Bhbi5zZi1pY29uLWRvd24ge1xuICAgICAgICBwYWRkaW5nOiA4cHggNHB4O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICYudXBncmFkYWJsZSBsaS51cGdyYWRlQXNzZXRzQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLnJlbmV3YWJsZSBsaS5yZW5ld1N1YnNjcmlwdGlvbnNCdG4ge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG4gICYuZGlzY291bnRhYmxlIGxpLnJlc2V0RGlzY0J0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5vcHRpb25hbDpub3QoLmFsbFNlbGVjdGVkKSAuc2JRdW90ZUFjdGlvbnMgbGkub3B0aW9uYWxBbGxCdG4sXG4gICYub3B0aW9uYWwuYWxsU2VsZWN0ZWQgLnNiUXVvdGVBY3Rpb25zIGxpLm9wdGlvbmFsTm9uZUJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5vcHRpb25hbCAuc2JHcm91cEFjdGlvbnMgbGkub3B0aW9uYWxBbGxCdG4sXG4gICYub3B0aW9uYWwgLnNiR3JvdXBBY3Rpb25zIGxpLm9wdGlvbmFsTm9uZUJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi5tdWx0aURlbGV0ZSAuc2JRdW90ZUFjdGlvbnMgLmRlbGV0ZUxpbmVzQnRuIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuICAmLmdyb3VwYWJsZSBsaS5hZGRHcm91cEJ0biB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gIH1cbiAgJi51bmdyb3VwYWJsZSBsaSB7XG5cbiAgICAmLmFkZEdyb3VwQnRuIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuXG4gICAgJi5hZGRHcm91cEJ0bixcbiAgICAmLnVuZ3JvdXBCdG4ge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgfVxuICB9XG5cbiAgLy8gY3VzdG9tIGFjdGlvbnMgb24gdGhlIGxpbmUgZWRpdG9yXG4gIC5zYlF1b3RlQWN0aW9ucyxcbiAgLnNiR3JvdXBBY3Rpb25zIHtcbiAgICB1bCB7XG4gICAgICBsaXN0LXN0eWxlLXR5cGU6IG5vbmU7XG5cbiAgICAgICYuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICAgIG1hcmdpbjogMDtcbiAgICAgIH1cblxuICAgICAgbGk6bm90KC5zYlByaW1hcnlBY3Rpb24pIHtcbiAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICAgICAgJi5hY3Rpb24gPiAubGFiZWw6aG92ZXIge1xuICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICBjb2xvcjogQHNiR3JvdXBCdG5Ib3ZlckZvbnRDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgIHNwYW4uc2YtaWNvbi1yaWdodCxcbiAgICAgICAgc3Bhbi5zZi1pY29uLWRvd24ge1xuICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcblxuICAgICAgICAgICYub3BlbiArIHVsIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuXG4gICAgICAgICAgICAmLnNiU29sdXRpb25Hcm91cHMge1xuICAgICAgICAgICAgICBtYXgtaGVpZ2h0OiA0NTBweDtcbiAgICAgICAgICAgICAgb3ZlcmZsb3cteTogYXV0bztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgdWwge1xuICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgICAgIHRvcDogMTAwJTtcbiAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG4gICAgICAgIHotaW5kZXg6IDQ7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cbiAgICAgICAgbGkge1xuICAgICAgICAgIHBhZGRpbmc6IDVweCAxMHB4O1xuICAgICAgICB9XG5cbiAgICAgICAgdWwge1xuICAgICAgICAgIHRvcDogLTFweDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgID4gdWwge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgY3Vyc29yOiBhdXRvO1xuXG4gICAgICA+IGxpIHtcbiAgICAgICAgPiB1bCB7XG4gICAgICAgICAgcmlnaHQ6IC0xcHg7XG4gICAgICAgIH1cblxuICAgICAgICAmLmFjdGlvbiA+IC5sYWJlbDpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5CZ0NvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiUXVvdGVBY3Rpb25zIHtcbiAgICB1bCBsaSB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG5cbiAgICA+IHVsID4gbGkge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcblxuICAgICAgJi5sYXN0IHVsIHVsIHtcbiAgICAgICAgcmlnaHQ6IDEwMCU7XG4gICAgICB9XG5cbiAgICAgICY6bm90KC5sYXN0KSB1bCB1bCB7XG4gICAgICAgIGxlZnQ6IDEwMCU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gVGhlIFF1b3RlIEZpZWxkcyBzZWN0aW9uLCBpZiBzaG93blxuICAuc2JRdW90ZUZpZWxkcyB7XG5cbiAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG5cbiAgICBoZWFkZXIge1xuICAgICAgbWFyZ2luLWJvdHRvbTogMTBweDtcbiAgICB9XG5cbiAgICB0YWJsZSA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICBwYWRkaW5nOiA1cHggMDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG5cbiAgICAgIGlucHV0LCBzZWxlY3Qge1xuICAgICAgICBmb250LXNpemU6IGluaGVyaXQ7XG4gICAgICAgIHdpZHRoOiAxNDBweDtcbiAgICAgIH1cblxuICAgICAgW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG4gICAgICB9XG5cbiAgICAgIFtjbGFzcz1zYi1pY29uLXNlYXJjaF0ge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBtYXJnaW4tbGVmdDogM3B4O1xuICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAmLnNiTGFiZWwge1xuICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgcGFkZGluZy1yaWdodDogMTJweDtcbiAgICAgICAgd2lkdGg6IDE1JTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBBIHRhYmxlIG9mIHF1b3RlIGxpbmVzIGluIHRoZSBlZGl0b3IgKGNhbiBoYXZlIG11bHRpcGxlLCBlLmcuIGdyb3VwZWQgcXVvdGUpXG4gIC5zYlRhYmxlIHtcbiAgICBAcm93SGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gICAgQGluZGVudDogMTBweCArIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgLy8gZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICBpbnB1dCwgc2VsZWN0IHtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdDtcblxuICAgICAgJi5zYlNtYWxsIHtcbiAgICAgICAgbWF4LXdpZHRoOiA4MHB4O1xuICAgICAgfVxuXG4gICAgICAmOmRpc2FibGVkIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiSGVhZGVyQmdDb2xvcjtcbiAgICAgIH1cblxuICAgICAgJi5oYXNEYXRlcGlja2VyIHtcbiAgICAgICAgbWluLXdpZHRoOiA5NXB4O1xuICAgICAgICB3aWR0aDogODUlO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIHBhZGRpbmcgZm9yIGZpcnN0IGFuZCBsYXN0IGNvbHVtbnNcbiAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG4gICAgPiB0aGVhZCA+IHRyID4gdGg6bGFzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG5cbiAgICBzZWxlY3QgeyAgLy8gZG9lcyB0aGlzIG5lZWQgdG8gYmUgbW9yZSBzcGVjaWZpYz8gIGl0IGlzIGp1c3QgZm9yIEFkZGl0aW9uYWwgRGlzYyBjb2x1bW5cbiAgICAgIG1pbi13aWR0aDogMjBweDtcbiAgICAgIG1hcmdpbi1sZWZ0OiA0cHg7XG4gICAgfVxuXG4gICAgLy8gdGFibGUgY2VsbHNcbiAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAvLyBoZWlnaHQ6IEByb3dIZWlnaHQ7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAmLnJpZ2h0IGlucHV0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG5cbiAgICAgIGEgPiBzcGFuW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgIGNvbG9yOiBAc2JJY29uQ29sb3I7XG5cbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICAgICYuc2JNRFFpY29uIHtcbiAgICAgICAgICBtYXJnaW4tcmlnaHQ6IC0xMWVtO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIEFjdGlvbnMgY29sdW1uXG4gICAgICAmLnNiQWN0aW9ucyB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgIHdpZHRoOiAxJTtcbiAgICAgICAgcGFkZGluZy1sZWZ0OiAxNXB4O1xuXG4gICAgICAgIC5hY3Rpb24sXG4gICAgICAgIC51cmwge1xuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgID4gdWwge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICBjdXJzb3I6IGF1dG87XG5cbiAgICAgICAgICA+IGxpLm1lbnUge1xuICAgICAgICAgICAgcGFkZGluZzogNXB4O1xuICAgICAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICAgICAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgICAgICAgIGJvcmRlcjogMXB4IHNvbGlkIEBzYkdyb3VwQnRuQm9yZGVyQ29sb3I7XG5cbiAgICAgICAgICAgIC5zYkFjdGlvbiB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDVweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICB1bCB7XG4gICAgICAgICAgcGFkZGluZzogMDtcbiAgICAgICAgICBtYXJnaW46IDA7XG4gICAgICAgICAgbGlzdC1zdHlsZS10eXBlOiBub25lO1xuXG4gICAgICAgICAgbGkge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgICAgICAgICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcblxuICAgICAgICAgICAgJi5hY3Rpb24gPiAubGFiZWw6aG92ZXIge1xuICAgICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgICAgIGNvbG9yOiBAc2JGb250Q29sb3I7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIHNwYW4uc2YtaWNvbi1yaWdodCB7XG4gICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcblxuICAgICAgICAgICAgICAmLm9wZW4gKyB1bCB7XG4gICAgICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIHVsIGxpIHtcbiAgICAgICAgICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgdWwge1xuICAgICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICAgICAgICAgIHRvcDogLTFweDtcbiAgICAgICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JHcm91cEJ0bkJnQ29sb3I7XG4gICAgICAgICAgICBib3JkZXItcmFkaXVzOiBAc2JCdG5Cb3JkZXJSYWRpdXM7XG4gICAgICAgICAgICBib3JkZXI6IDFweCBzb2xpZCBAc2JHcm91cEJ0bkJvcmRlckNvbG9yO1xuICAgICAgICAgICAgei1pbmRleDogNDtcbiAgICAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cbiAgICAgICAgICAgIGxpIHtcbiAgICAgICAgICAgICAgcGFkZGluZzogNXB4IDEwcHg7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gaW5pdGlhbGx5IGhpZGUgYWxsIGN1c3RvbSBhY3Rpb25zIHRoYXQgZG9lcyBoYXZlIGFuIGFjdGlvbiBzZWxlY3RlZCAobWVudSB0eXBlIG9yIHVybCBjdXN0b20gYWN0aW9ucyBzaG91bGQgYmUgZGlzcGxheWVkIGF0IGFsbCB0aW1lcylcbiAgICAgICAgLnNiQWN0aW9uIHtcbiAgICAgICAgICBwYWRkaW5nOiAycHg7XG5cbiAgICAgICAgICAmLmFjdGlvbiB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgICY6bm90KC5yZW1vdmFibGUpIHtcbiAgICAgICAgICAuc2ItaWNvbi1pbmZvLWNpcmNsZWQge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgICAgY3Vyc29yOiBhdXRvO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgaXMgZGVsZXRhYmxlIGZyb20gdGhlIHF1b3RlLCBkaXNwbGF5IEFkZCBUbyBGYXZvcml0ZXMsIFJlbW92ZSBGcm9tIEZhdm9yaXRlcywgYW5kIERlbGV0ZSBhY3Rpb25zXG4gICAgICAgICYucmVtb3ZhYmxlIHtcbiAgICAgICAgICAuYWRkVG9GYXZCdG4sXG4gICAgICAgICAgLnJlbW92ZUZyb21GYXZCdG4sXG4gICAgICAgICAgLmRlbGV0ZUJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC5hZGRUb0ZhdkJ0bixcbiAgICAgICAgICAgIC5yZW1vdmVGcm9tRmF2QnRuLFxuICAgICAgICAgICAgLmRlbGV0ZUJ0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cblxuXG4gICAgICAgICAgJi5mYXZvcml0ZSAuYWRkVG9GYXZCdG4sXG4gICAgICAgICAgJjpub3QoLmZhdm9yaXRlKSAucmVtb3ZlRnJvbUZhdkJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIC8vIGFzIGEgbGlzdCBpdGVtIHdpdGhpbiBhIG1lbnVcbiAgICAgICAgICAmLmZhdm9yaXRlIHVsIHVsIC5hZGRUb0ZhdkJ0bixcbiAgICAgICAgICAmOm5vdCguZmF2b3JpdGUpIHVsIHVsIC5yZW1vdmVGcm9tRmF2QnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gSWYgdGhlIGxpbmUgaXMgYSBzdGFuZGFsb25lIGxpbmUsIGRpc3BsYXkgQ0xvbmUgaWNvbiAoYm90aCBmb3IgZXhpc3RpbmcgYW5kIG5ldyBsaW5lcylcbiAgICAgICAgJjpub3QoLmNvbXBvbmVudCkge1xuICAgICAgICAgIC5jbG9uZUJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC5jbG9uZUJ0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgaXMgYnVuZGxlIHBhcmVudCwgZGlzcGxheSB0aGUgUmVjb25maWd1cmUgTGluZSBhY3Rpb25cbiAgICAgICAgJi5jb25maWd1cmFibGUge1xuICAgICAgICAgIC5yZWNvbmZpZ3VyZUJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gYXMgYSBsaXN0IGl0ZW0gd2l0aGluIGEgbWVudVxuICAgICAgICAgIHVsIHVsIHtcbiAgICAgICAgICAgIC5yZWNvbmZpZ3VyZUJ0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgY2FuIGJlIGRpc3BsYXllZCBpbiBlaXRoZXIgdGFibGUsIGRpc3BsYXkgRGVzZWdtZW50IG9yIFJlc2VnbWVudCBMaW5lIGFjdGlvbnNcbiAgICAgICAgJi5jb252ZXJ0YWJsZSB7XG4gICAgICAgICAgLmRlc2VnbWVudEJ0bixcbiAgICAgICAgICAucmVzZWdtZW50QnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgdWwgdWwge1xuICAgICAgICAgICAgLmRlc2VnbWVudEJ0bixcbiAgICAgICAgICAgIC5yZXNlZ21lbnRCdG4ge1xuICAgICAgICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBEaXNwbGF5IGVpdGhlciBEZXNlZ21lbnQgb3IgUmVzZWdtZW50IGRlcGVuZGluZyBvbiB3aGV0aGVyIHRoZSBsaW5lIGlzIGEgc3RhbmRhcmQgb3Igc2VnbWVudGVkIGxpbmUgaXRlbVxuICAgICAgICAgICYuc2VnbWVudGVkIC5yZXNlZ21lbnRCdG4sXG4gICAgICAgICAgJjpub3QoLnNlZ21lbnRlZCkgLmRlc2VnbWVudEJ0biB7XG4gICAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIElmIGxpbmUgaGFzIGEgZGlzY291bnQgc2NoZWR1bGUsIGRpc3BsYXkgRWRpdCBEaXNjb3VudCBTY2hlZHVsZSBidXR0b25cbiAgICAgICAgJi5kc0VkaXRhYmxlIHtcbiAgICAgICAgICAudmlld0RTQnRuIHtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAvLyBhcyBhIGxpc3QgaXRlbSB3aXRoaW4gYSBtZW51XG4gICAgICAgICAgdWwgdWwge1xuICAgICAgICAgICAgLnZpZXdEU0J0biB7XG4gICAgICAgICAgICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAvLyBNdWx0aSBEZWxldGUgY29sdW1uXG4gICAgICAmLnNiRGVsZXRlQ2hlY2tib3gge1xuICAgICAgICB3aWR0aDogMSU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gZXhwYW5kIGxpbmUgYWN0aW9uIG1lbnVzIHRvIHRoZSByaWdodFxuICAgIHRib2R5ID4gdHIgPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgICYuc2JBY3Rpb25zIHVsIHVse1xuICAgICAgICBsZWZ0OiAxMDAlO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIGV4cGFuZCBsaW5lIGFjdGlvbiBtZW51cyB0byB0aGUgbGVmdFxuICAgIHRib2R5ID4gdHIgPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgJi5zYkFjdGlvbnMgdWwgdWx7XG4gICAgICAgIHJpZ2h0OiAxMDAlO1xuICAgICAgfVxuICAgIH1cblxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmhvdmVyIHtcbiAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgfVxuICAgIH1cblxuICAgID4gdGZvb3QgPiB0ciB7XG5cbiAgICAgICYuc2JUb3RhbFJvdyB0ZCB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuXG4gICAgICAgICY6bGFzdC1vZi10eXBlIHtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICA+IHRkIHtcbiAgICAgICAgLy8gaGVpZ2h0OiBAcm93SGVpZ2h0O1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIENsYXNzZXMgZm9yIHByb2R1Y3QgaGllcmFyY2h5IHZpc3VhbGl6YXRpb25cbiAgICAuc2JCdW5kbGVPcHRpb24ge1xuICAgICAgY29sb3I6IEBzYlNlY29uZGFyeUZvbnRDb2xvcjtcbiAgICB9XG4gICAgLnNiSW5kZW50MiB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiAxO1xuICAgIH1cbiAgICAuc2JJbmRlbnQzIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDI7XG4gICAgfVxuICAgIC5zYkluZGVudDQge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogMztcbiAgICB9XG4gICAgLnNiSW5kZW50NSB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA0O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ2IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDU7XG4gICAgfVxuICAgIC5zYkluZGVudDcge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAaW5kZW50ICogNjtcbiAgICB9XG4gICAgLnNiSW5kZW50OCB7XG4gICAgICBwYWRkaW5nLWxlZnQ6IEBpbmRlbnQgKiA3O1xuICAgIH1cbiAgICAuc2JJbmRlbnQ5IHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDg7XG4gICAgfVxuICAgIC5zYkluZGVudDEwIHtcbiAgICAgIHBhZGRpbmctbGVmdDogQGluZGVudCAqIDk7XG4gICAgfVxuXG5cbiAgICAvLyBEZXNjcmlwdGlvbiBmaWVsZFxuICAgIC5zYkRlc2NyaXB0aW9uRmllbGQge1xuICAgICAgc3BhbiB7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICB9XG5cbiAgICAgIC5zYi1pY29uLXBlbmNpbCB7XG4gICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgIH1cblxuICAgICAgJjpob3ZlciB7XG4gICAgICAgIC5zYi1pY29uLXBlbmNpbCB7XG4gICAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIFF1b3RlIFRvdGFsIGFtb3VudCBpbiBsb3dlciByaWdodCBjb3JuZXJcbiAgLnNiUXVvdGVUb3RhbCB7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgZmxvYXQ6IHJpZ2h0O1xuICAgIG1hcmdpbjogMTJweCAyMnB4IDI2cHggMDtcblxuICAgID4gc3BhbiB7XG4gICAgICBtYXJnaW4tbGVmdDogMTBweDtcbiAgICB9XG4gIH1cblxuICAvLyBHcm91cCB0YWJzL2xpbmtzXG4gIC5zYkdyb3VwcywgLnNiRGltZW5zaW9uVGFicyB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgbWFyZ2luOiAxOHB4IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7XG4gICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuXG4gICAgPiBhIHtcbiAgICAgIGN1cnNvcjogbW92ZTtcbiAgICAgIGNvbG9yOiBpbmhlcml0O1xuICAgICAgcGFkZGluZzogNnB4IDE2cHggNnB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuXG4gICAgICA+IC5zZi1pY29uLWVkaXQge1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICB2aXNpYmlsaXR5OiBoaWRkZW47XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgICAgICByaWdodDogLTZweDtcbiAgICAgICAgdG9wOiA2cHg7XG4gICAgICAgICY6aG92ZXIge1xuICAgICAgICAgIGNvbG9yOiBAc2JBY2NlbnRJY29uSG92ZXJDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgICYudmlzaWJsZSB7XG4gICAgICAgICAgdmlzaWJpbGl0eTogdmlzaWJsZTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgICA+IGEuc2VsZWN0ZWQge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgfVxuICAgID4gYTpob3ZlciB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICAgID4gLnNmLWljb24tZWRpdCB7XG4gICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gQSBHcm91cCBvbiB0aGUgcXVvdGUuICBUaGVzZSBzdHlsZXMgYXJlIGZvciBtdWx0aXBsZSBncm91cHMgd2l0aCBvdmVycmlkZXMgbGF0ZXIgb24gZm9yIGEgc2luZ2xlIGdyb3VwLlxuICAuc2JHcm91cCB7XG4gICAgLy8gR3JvdXAgbmFtZSAtIGRpc3BsYXllZCBvbmx5IHdoZW4gdGhlIHF1b3RlIGlzIGdyb3VwZWRcbiAgICA+IGhlYWRlciB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cblxuICAgIC8vIEdyb3Vwc1xuICAgICYuc2JHcm91cGVkIHtcbiAgICAgIGJhY2tncm91bmQ6IEBzYkJnQ29sb3I7XG4gICAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICBib3JkZXI6IEBzYkNvbnRlbnRCb3JkZXI7XG4gICAgICBib3JkZXItcmFkaXVzOiA0cHg7XG5cbiAgICAgID4gaGVhZGVyIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjpAc2JIZWFkZXJTZWNvbmRhcnlCZ0NvbG9yO1xuICAgICAgICBkaXNwbGF5OiBibG9jaztcbiAgICAgICAgbWFyZ2luOiAwO1xuICAgICAgICBib3JkZXI6IDA7XG4gICAgICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJUb3AgLSA1cHggQHNiUGFnZUhlYWRlckxlZnQgQHNiUGFnZUhlYWRlclRvcCAtIDEwcHg7XG4gICAgICAgIGJvcmRlci1ib3R0b206IEBzYkNvbnRlbnRCb3JkZXI7XG5cbiAgICAgICAgJi5zYkhpZGRlbkhlYWRlcntcbiAgICAgICAgICBkaXNwbGF5OiBub25lO1xuICAgICAgICB9XG5cbiAgICAgICAgPiAuc2JHcm91cEVkaXRvciA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICAgd2lkdGg6IDUwJTtcbiAgICAgICAgICBtYXJnaW46IDEwcHg7XG4gICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcblxuICAgICAgICAgICY6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICAgICAgICBib3JkZXItcmlnaHQ6IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgICAgICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgID4gdGFibGUgPiB0Ym9keSA+IHRyOmZpcnN0LW9mLXR5cGUgPiB0ZDpsYXN0LW9mLXR5cGUge1xuICAgICAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICAgICAgcGFkZGluZy1yaWdodDogMTBweDtcbiAgICAgICAgICAgICAgbWluLXdpZHRoOiAyMDVweDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICAuc2JGYXZvcml0ZSB7XG4gICAgICAgICAgICB3aWR0aDogNSU7XG5cbiAgICAgICAgICAgID4gaSB7XG4gICAgICAgICAgICAgIGZvbnQtc2l6ZTogMmVtO1xuICAgICAgICAgICAgICBkaXNwbGF5OmlubGluZS1ibG9jaztcbiAgICAgICAgICAgICAgdmVydGljYWwtYWxpZ246IHN1cGVyO1xuXG4gICAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICAgIHZpc2liaWxpdHk6aGlkZGVuO1xuICAgICAgICB9XG5cbiAgICAgICAgLnNiR3JvdXBIZWFkZXIge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAgID4gaW5wdXQge1xuICAgICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLnNiR3JvdXBIZWFkZXI6aG92ZXIge1xuICAgICAgICAgIC5zZi1pY29uLWVkaXQge1xuICAgICAgICAgICAgdmlzaWJpbGl0eTp2aXNpYmxlO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIGgyIHtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuXG4gICAgICAgICAgJjpub3QoLnNiR3JvdXBEcmFnSGFuZGxlKSB7XG4gICAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgPiBbY2xhc3M9c2ItaWNvbi1wZW5jaWxdIHtcbiAgICAgICAgICAgIHZpc2liaWxpdHk6IGhpZGRlbjtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICAmOmhvdmVyID4gW2NsYXNzPXNiLWljb24tcGVuY2lsXSB7XG4gICAgICAgICAgICB2aXNpYmlsaXR5OiB2aXNpYmxlO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC5zYkdyb3VwTmFtZSB7XG4gICAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgICAgICBtYXJnaW4tcmlnaHQ6IDE1cHg7XG4gICAgICAgICAgaGVpZ2h0OkBzYlRleHRib3hIZWlnaHQ7XG4gICAgICAgIH1cblxuICAgICAgICAvLyBHcm91cCBBY3Rpb25zIChpLmUuIEFkZCBQcm9kdWN0cywgQWRkIEZhdm9yaXRlcywgUmVzZXQgRGlzY291bnRzLCBPcHRpb25hbCwgQ2xvbmUsIERlbGV0ZSlcbiAgICAgICAgLnNiR3JvdXBBY3Rpb25zIHtcbiAgICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cbiAgICAgICAgICBtZW51IHtcbiAgICAgICAgICAgIG1heC1oZWlnaHQ6IDEyNXB4O1xuICAgICAgICAgICAgb3ZlcmZsb3cteTogYXV0bztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICB1bCB1bCB1bCB7XG4gICAgICAgICAgICBsZWZ0OiAxMDAlO1xuICAgICAgICAgIH1cblxuICAgICAgICAgID4gdWwuc2JUb29scyA+IGxpLnNiVG9vbCB7XG4gICAgICAgICAgICBtYXJnaW4tYm90dG9tOiA1cHg7XG5cbiAgICAgICAgICAgID4gc3BhbixcbiAgICAgICAgICAgID4gaSB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDZweCA4cHg7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgLy8gR3JvdXAgbGV2ZWwgY3VzdG9tIGFjdGlvbnNcbiAgICAgICAgLnNiVG9vbHMge1xuICAgICAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgICAgICBoZWlnaHQ6IDMycHg7XG5cbiAgICAgICAgICAgID4gc3Bhbi5sYWJlbCxcbiAgICAgICAgICAgID4gaSB7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IDZweCA4cHg7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgID4gc3Bhbi5zZi1pY29uLWRvd24ge1xuICAgICAgICAgICAgICBwYWRkaW5nOiA2cHggNHB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIEdyb3VwIGRlc2NyaXB0aW9uLCBpZiBpbmNsdWRlZCBpbiB0aGUgUXVvdGUgTGluZSBHcm91cCBmaWVsZCBzZXRcbiAgICAgICAgLnNiRGVzY3JpcHRpb24ge1xuICAgICAgICAgIG1hcmdpbi10b3A6IDEwcHg7XG4gICAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgZGlzcGxheTogdGFibGU7XG5cbiAgICAgICAgICA+IGRpdixcbiAgICAgICAgICA+IGRpdiA+IHAge1xuICAgICAgICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgICAgIH1cblxuICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgY29sb3I6IGluaGVyaXQ7XG4gICAgICAgICAgICBbY2xhc3M9c2YtaWNvbi1lZGl0XSB7XG4gICAgICAgICAgICAgIHZpc2liaWxpdHk6IHZpc2libGU7XG4gICAgICAgICAgICAgIHBhZGRpbmctbGVmdDogNXB4O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JUYWJsZSB7XG4gICAgICAgIG1hcmdpbi10b3A6IDEwcHg7XG4gICAgICB9XG4gICAgfVxuXG5cbiAgICAvLyBHcm91cC1sZXZlbCBmaWVsZHMgKGUuZy4gT3B0aW9uYWwsIFN1YnNjcmlwdGlvbiBUZXJtLCBBZGQgRGlzYylcbiAgICAuc2JHcm91cEZpZWxkcyB7XG4gICAgICBwYWRkaW5nOiAwIDEwcHg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcblxuICAgICAgPiB0YWJsZSA+IHRib2R5ID4gdHIge1xuXG4gICAgICAgIC5zYkxhYmVsIHtcbiAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiA1cHg7XG4gICAgICAgIH1cblxuICAgICAgICA+IHRkIHtcblxuICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcblxuICAgICAgICAgIC5zYkZpZWxkUm93IHtcbiAgICAgICAgICAgIHBhZGRpbmctYm90dG9tOiAxMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGxhYmVsIHtcbiAgICAgICAgICAgIG1hcmdpbi1yaWdodDogNHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0Om5vdChbdHlwZT1jaGVja2JveF0pIHtcbiAgICAgICAgICAgIGhlaWdodDogMmVtO1xuICAgICAgICAgICAgd2lkdGg6IDEwMHB4O1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gR3JvdXAgdG90YWwgLSBkaXNwbGF5cyBvbmx5IHdoZW4gdGhlcmUgYXJlIGJvdGggTURRIGFuZCBzdGFuZGFyZCBwcm9kdWN0cyBvbiBhIGdyb3VwXG4gICAgLnNiR3JvdXBUb3RhbCB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIG1hcmdpbjogMTVweCAyMnB4IDIwcHggMDtcbiAgICB9XG4gIH1cblxuICAvLyBFbXB0eSBncm91cCBvciBxdW90ZSBtZXNhZ2VzXG4gIC5zYkVtcHR5R3JvdXBNc2csXG4gIC5zYkVtcHR5UXVvdGVNc2csXG4gIC5lbXB0eU1TVGFibGVNZXNzYWdlLFxuICAuZW1wdHlTdGFuZGFyZFRhYmxlTWVzc2FnZSB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgcGFkZGluZzogQHNiUGFnZUhlYWRlckxlZnQ7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSB7XG4gICAgY2xlYXI6IGJvdGg7XG4gIH1cblxuICAuZW1wdHlNU1RhYmxlTWVzc2FnZSxcbiAgLmVtcHR5U3RhbmRhcmRUYWJsZU1lc3NhZ2Uge1xuICAgIHBhZGRpbmc6IEBzYlBhZ2VIZWFkZXJMZWZ0IDAgMCBAc2JQYWdlSGVhZGVyTGVmdCAqIDI7XG4gIH1cblxuICAjc2JQcmljZWJvb2tNYXNrLCAjc2JTZWdtZW50c01hc2ssICNzYkZhdm9yaXRlc01hc2ssICNzYkFsZXJ0TWFzayB7XG4gICAgLnNiTW9kYWxNYXNrO1xuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cbiAgfVxuXG4gICNzYlNlZ21lbnRzTW9kYWwsICNzYlByb2R1Y3RSdWxlQWxlcnQge1xuICAgIC5zYk1vZGFsRGlhbG9nO1xuICAgIG1heC13aWR0aDogNjAwcHg7XG5cbiAgICAmLmFtZW5kbWVudCB7XG4gICAgICBjdXJzb3I6IGRlZmF1bHQ7XG4gICAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgICAgICBvdmVyZmxvdzogYXV0bztcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgaVtjbGFzc149c2YtaWNvbl0ge1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cblxuXG4gICAgICAjc2JDdXN0b21TZWdtZW50cyB7XG4gICAgICAgID4gdGJvZHkgPiB0ciB7XG4gICAgICAgICAgJjpmaXJzdC1vZi10eXBlID4gdGQge1xuICAgICAgICAgICAgcGFkZGluZy10b3A6IDE0cHg7XG4gICAgICAgICAgfVxuICAgICAgICAgID4gdGQge1xuICAgICAgICAgICAgY3Vyc29yOiBkZWZhdWx0O1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAuc2JNb2RhbEZvb3RlciB7XG4gICAgICAgID4gLnNiQnV0dG9ucyB7XG4gICAgICAgICAgPiAuc2JCdG4ge1xuICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuICAgICAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgICAgIGN1cnNvcjogZGVmYXVsdDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgICY6Zm9jdXMge1xuICAgICAgICAgICAgICBvdXRsaW5lOiBub25lO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgJi5zYlByaW1hcnlBY3Rpb24ge1xuICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuQmdDb2xvcjtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYlByaW1hcnlCdG5Gb250Q29sb3I7XG4gICAgICAgICAgICAgICY6aG92ZXIge1xuICAgICAgICAgICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JQcmltYXJ5QnRuSG92ZXJCZ0NvbG9yO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgJi5jbG9zZSB7XG4gICAgICBkaXNwbGF5OiBub25lO1xuICAgIH1cblxuICAgIC5zYlZhbGlkYXRpb25FcnJvcnMge1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgIHBhZGRpbmc6IDVweCAxNXB4IDA7XG5cbiAgICAgID4gZGl2IHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIGNvbG9yOiAjYzAwO1xuICAgICAgICBwYWRkaW5nLWJvdHRvbTogNXB4O1xuXG4gICAgICAgID4gc3BhbiwgPiBkaXYge1xuICAgICAgICAgIGRpc3BsYXk6IGlubGluZTtcbiAgICAgICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgICAgICB9XG5cbiAgICAgICAgPiBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgICBjb2xvcjogI2MwMDtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMjtcbiAgICAgICAgICBwYWRkaW5nOiAwIDEwcHggMCAwO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgLm1lc3NhZ2Uge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgbWFyZ2luOiAwIDAgMCA3cHg7XG4gICAgfVxuXG4gICAgLnNiQ3VzdG9tU2VnbWVudHNDb250YWluZXIge1xuICAgICAgaGVpZ2h0OiA0NDFweDtcbiAgICAgIG92ZXJmbG93OiBhdXRvO1xuICAgIH1cblxuICAgICNzYkN1c3RvbVNlZ21lbnRzIHtcbiAgICAgIG1hcmdpbi10b3A6IDA7XG5cbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoIHtcbiAgICAgICAgcGFkZGluZy1ib3R0b206IDA7XG4gICAgICAgIC8vIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCAjYzAwO1xuICAgICAgfVxuXG4gICAgICA+IHRib2R5ID4gdHIgPiB0ZCB7XG4gICAgICAgIHRleHQtYWxpZ246IGluaXRpYWw7XG4gICAgICAgIGhlaWdodDogMzBweDtcbiAgICAgICAgY3Vyc29yOiBtb3ZlO1xuXG4gICAgICAgID4gW2NsYXNzXj1zYi1pY29uXSB7XG4gICAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Db2xvcjtcbiAgICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgICAgcGFkZGluZzogMCA1cHggMCAwO1xuICAgICAgICB9XG5cbiAgICAgICAgLnNmLWljb24tY2xvc2Uge1xuICAgICAgICAgIGNvbG9yOiAjNGQ0ZDRkO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTW9kYWwge1xuICAgICNzYlNlZ21lbnRzTW9kYWw7XG5cbiAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIgLnNiVGFibGUge1xuICAgICAgPiB0Ym9keSA+IHRyIHtcbiAgICAgICAgJjpob3ZlciB7XG4gICAgICAgICAgYmFja2dyb3VuZDogQHNiQmdDb2xvcjtcbiAgICAgICAgfVxuXG4gICAgICAgID4gdGQge1xuICAgICAgICAgIHBhZGRpbmctdG9wOiAyMHB4O1xuXG4gICAgICAgICAgI3NiRmF2b3JpdGVOYW1lIHtcbiAgICAgICAgICAgIHdpZHRoOiAzMDBweDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBQcm9kdWN0IFJ1bGUgQWxlcnQgc3R5bGVcbiAgI3NiUHJvZHVjdFJ1bGVBbGVydCB7XG4gICAgbWluLWhlaWdodDogYXV0bztcbiAgICBsaSB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG4gIH1cblxuICAvLyBNRFEgcGFnZSBzdHlsZVxuICAmLnNiTURRIC5zYlBhZ2VCbG9jayB7XG5cbiAgICAuc2JUYWJsZSB7XG4gICAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgICAgPiB0Ym9keSA+IHRyID4gdGQ6Zmlyc3Qtb2YtdHlwZSB7XG4gICAgICAgIHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG4gICAgICB9XG5cbiAgICAgID4gdGhlYWQgPiB0ciA+IHRoOmxhc3Qtb2YtdHlwZSxcbiAgICAgID4gdGJvZHkgPiB0ciA+IHRkOmxhc3Qtb2YtdHlwZSB7XG4gICAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBTZWdtZW50ZWQgUHJvZHVjdHMgdGFibGVcbiAgLnNiTXVsdGlTZWdtZW50IC5zYlRhYmxlIHtcbiAgICBtYXJnaW4tdG9wOiAxMHB4O1xuXG4gICAgLnNiTGluZU51bWJlciB7XG4gICAgICA+IHNwYW4ge1xuICAgICAgICBkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG4gICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiRXhwYW5kQ29sbGFwc2Uge1xuICAgICAgPiBbY2xhc3NePVwic2ItaWNvbi1cIl0ge1xuICAgICAgICBmb250LXNpemU6IDEuNWVtO1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgfVxuXG4gICAgICA+IDpudGgtb2YtdHlwZSgyKSB7XG4gICAgICAgIGZvbnQtc2l6ZTogMS4zZW07XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gdGhlIGNlbGwgd2l0aCB0aGUgZXhwYW5kL2NvbGxhcHNlIGljb25cbiAgICAuc2JFeHBhbmQge1xuICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcblxuICAgICAgaSB7XG4gICAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICAgICAgZm9udC1zaXplOiAxNHB4O1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgICAgIHRvcDogMnB4O1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIGEgXCJkZXRhaWxcIiByb3cgb2YgYSBzZWdtZW50XG4gICAgPiB0Ym9keSB7XG4gICAgICA+IHRyLmV4cGFuZGVkID4gdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiAwO1xuICAgICAgfVxuXG4gICAgICA+IC5zYkRldGFpbCB7XG4gICAgICAgID4gdGQge1xuICAgICAgICAgIGhlaWdodDogMzBweDtcbiAgICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JEZXRhaWxCZ0NvbG9yO1xuICAgICAgICB9XG5cbiAgICAgICAgJjpub3QoLmxhc3REZXRhaWxSb3cpe1xuICAgICAgICAgID4gdGQge1xuICAgICAgICAgICAgYm9yZGVyLWJvdHRvbTogMDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICAvLyBsYWJlbCBjb2x1bW4gZm9yIGRldGFpbCByb3dzXG4gICAgICAgID4gdGQ6bnRoLWNoaWxkKDIpIHtcbiAgICAgICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgICAgICBwYWRkaW5nLXJpZ2h0OiA0MHB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB0Zm9vdCA+IHRyPiB0ZDpmaXJzdC1vZi10eXBlIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgIH1cblxuICAgID4gdGZvb3QgPiB0cj4gdGQ6bGFzdC1vZi10eXBlIHtcbiAgICAgIHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIH1cbiAgfVxuXG4gIC8vIE1EUSBTdGFuZGFyZCBQcm9kdWN0cyBhbmQgU2VnbWVudGVkIFByb2R1Y3RzIGNvbnRhaW5lciBlbGVtZW50c1xuICAuc2JTdGFuZGFyZCB7XG4gICAgcGFkZGluZy10b3A6IDQwcHg7XG5cbiAgICAmLnNiRW1wdHlUYWJsZSB7XG4gICAgICBwYWRkaW5nLXRvcDowO1xuICAgIH1cblxuICAgID4gaDIge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB9XG4gIH1cblxuICAuc2JNdWx0aVNlZ21lbnQge1xuICAgIHBhZGRpbmctdG9wOiBAc2JQYWdlSGVhZGVyTGVmdDtcblxuICAgICYuc2JFbXB0eVRhYmxlIHtcbiAgICAgIHBhZGRpbmctdG9wOjA7XG4gICAgfVxuXG4gICAgLnNiU2VnbWVudGVkVGFibGVIZWFkZXIge1xuICAgICAgb3ZlcmZsb3c6IGF1dG87XG5cbiAgICAgID4gaDIge1xuICAgICAgICBwYWRkaW5nLWxlZnQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgICAgfVxuXG4gICAgfVxuXG4gICAgLnNiRGltZW5zaW9uSGVhZGVyIHtcbiAgICAgIG1hcmdpbjogMCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIGNsZWFyOiBib3RoO1xuXG4gICAgICA+IGgyLCBpIHtcbiAgICAgICAgZmxvYXQ6IGxlZnQ7XG4gICAgICB9XG5cbiAgICAgIGkge1xuICAgICAgICBmb250LXNpemU6IEBzYkZvbnRTaXplICogMS4yO1xuICAgICAgICBjb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICAgICAgICBwYWRkaW5nOiA1cHggMCAwIDVweDtcbiAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5zYlRvb2x0aXAgPiAuc2JUb29sdGlwQ29udGVudCB7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgfVxuXG4gIC5zYk1EUVJpZ2h0IHtcbiAgICBmbG9hdDogcmlnaHQ7XG4gICAgPiAuc2JUb29sdGlwIHtcbiAgICAgIHdpZHRoOiAxJTtcbiAgICB9XG4gIH1cblxuICAvLyBEcmFnICYgRHJvcCBIb3ZlciBzdHlsZXNcbiAgLnNiR3JvdXBEcmFnSGFuZGxlIHtcbiAgICBjdXJzb3I6IG1vdmU7XG4gIH1cblxuICAuc2JEcmFnZ2VkTGluZSxcbiAgLnNiRHJhZ2dlZERpbWVuc2lvbixcbiAgLnNiRHJhZ2dlZFNlZ21lbnQsXG4gIC5zYkRyYWdnZWRHcm91cCB7XG4gICAgY29sb3I6IEBzYkxpbmtDb2xvcjtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgfVxuXG4gIC5zYkRyb3BSb3dIb3ZlciB7XG4gICAgYmFja2dyb3VuZDogQHNiVGFibGVSb3dIb3ZlckNvbG9yO1xuICB9XG5cbiAgLnNiRW1wdHlUYWJsZUhvdmVyIHtcbiAgICBwYWRkaW5nLWJvdHRvbTogMjJweDtcbiAgfVxuXG4gIC5zYkVtcHR5VGFibGVIb3ZlcixcbiAgLnNiRW1wdHlHcm91cEhvdmVyIHtcbiAgICBib3JkZXI6IDJweCBzb2xpZCBAc2JBY2NlbnRJY29uQ29sb3I7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICB9XG5cbiAgLnNiR3JvdXAuc2JHcm91cGVkLnNiRHJvcEdyb3VwSG92ZXIge1xuICAgIGJvcmRlcjogM3B4IHNvbGlkIEBzYkFjY2VudEljb25Db2xvcjtcbiAgICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIH1cblxuICBhLnNiRHJvcERpbWVuc2lvbkhvdmVyIHtcbiAgICBjb2xvcjogI2ZmZjtcbiAgICBjdXJzb3I6IG1vdmU7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG4gIH1cblxuICAuc2JQYWdlcyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIHBhZGRpbmc6IDA7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcblxuICAgIC5zYkJ0biB7XG4gICAgICBmbG9hdDogbm9uZTtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICB9XG5cbiAgICAuc2JEaXNwbGF5ZWRQYWdlIHtcbiAgICAgIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG4gICAgfVxuICB9XG5cbiAgLnNiRHJvcFBhZ2VIb3ZlciB7XG4gICAgY29sb3I6ICNmZmY7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogQHNiQWNjZW50SWNvbkNvbG9yO1xuICB9XG5cbiAgdGggPiAubXVsdGlTZWdtZW50QXJyb3cge1xuICAgIGZvbnQtc2l6ZTogMS4yZW0gIWltcG9ydGFudDtcbiAgICAmOmhvdmVyIHtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG4gIH1cblxuICAjc2JUaWVyc01vZGFsIHtcbiAgICAgLnNiTW9kYWxEaWFsb2c7XG4gICAgIG1heC13aWR0aDogODAlO1xuXG4gICAgIC5zYk1vZGFsQ29udGVudENvbnRhaW5lciB7XG4gICAgICAgcGFkZGluZzogMTVweDtcbiAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgbWluLWhlaWdodDogMTAwcHg7XG4gICAgICAgbWF4LWhlaWdodDogNDAwcHg7XG4gICAgICAgb3ZlcmZsb3c6IGF1dG87XG5cbiAgICAgICBpbnB1dCB7XG4gICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICAgIH1cbiAgICAgfVxuXG4gICAgLmRhdGFDZWxsIHtcbiAgICAgIHRleHQtYWxpZ246bGVmdFxuICAgIH1cblxuICAgICNyZXZlcnRUaWVySWNvbiB7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG5cbiAgICAjcmV2ZXJ0SWNvbkNvbnRhaW5lciB7XG4gICAgICBwYWRkaW5nOiA4cHg7XG4gICAgICBtYXJnaW4tbGVmdDogMTZweDtcbiAgICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgfVxuXG5cdCAjZGlzY291bnRVbml0U2VsZWN0IHtcblx0IFx0bWFyZ2luLWxlZnQ6IDEwcHg7XG5cdCBcdHBhZGRpbmctbGVmdDogMTVweDtcblx0IH1cblxuICAgICAjZGlzY291bnRTY2hlZHVsZU5hbWUge1xuICAgICAgIHBhZGRpbmctbGVmdDogMzBweDtcblxuICAgICAgIGlucHV0IHtcbiAgICAgICAgIG1pbi13aWR0aDogMzAwcHg7XG4gICAgICAgICBtYXJnaW4tbGVmdDogMTBweDtcbiAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgICBwYWRkaW5nLWxlZnQ6IDEwcHg7XG4gICAgICAgfVxuICAgICB9XG5cbiAgICAgLnNmLWljb24tZXJyb3Ige1xuICAgICAgIGNvbG9yOiAjYzAwICFpbXBvcnRhbnQ7XG4gICAgIH1cblxuICAgICNkZWxldGVBbGxDaGVja2JveCB7XG4gICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgfVxuXG4gICAgICNkaXNjb3VudFVuaXRTZWxlY3Qge1xuICAgICAgcGFkZGluZy1yaWdodDogMjBweDtcbiAgICAgfVxuXG4gICAgICNlcnJvck1lc3NhZ2Uge1xuICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgfVxuXG4gICAgIC5oaWRlSW5wdXRCb3JkZXJzIHtcbiAgICAgICAgaW5wdXQge1xuICAgICAgICAgIGJvcmRlcjogbm9uZTtcbiAgICAgICAgICBiYWNrZ3JvdW5kOiAjZmZmO1xuICAgICAgICB9XG4gICAgIH1cblxuICAgICAuZGlzY291bnRTY2hlZHVsZVJvdyB7XG4gICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgIH1cblxuICAgIC5yZXZlcnRCdXR0b24ge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgYm9yZGVyOiAxcHggc29saWQgQHNiR3JvdXBCdG5Cb3JkZXJDb2xvcjtcbiAgICAgIGJvcmRlci1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcbiAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkZvbnRDb2xvcjtcbiAgICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICAgIGN1cnNvcjogcG9pbnRlcjtcbiAgICB9XG5cbiAgICAgLmRpc2NvdW50U2NoZWR1bGVIZWFkZXIge1xuICAgICAgICB0ZXh0LWFsaWduOiBsZWZ0O1xuICAgICB9XG5cbiAgICAuYWRkQm90dG9tQm9yZGVyIHtcbiAgICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkICNkOGRkZTY7XG4gICAgICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICAgfVxuXG4gICAgIC5kaXNjb3VudFNjaGVkdWxlTG9hZGVyIHtcbiAgICBtYXJnaW4tbGVmdDogYXV0bztcbiAgICBtYXJnaW4tcmlnaHQ6IGF1dG87XG4gICAgbWFyZ2luLXRvcDogMjBweDtcbiAgICAgfVxuICAgfVxufVxuXG4jZWRpdERlc2NyaXB0aW9uQ29udGFpbmVyIC5zYkxpbmVFZGl0b3JEZXNjcmlwdGlvbkVkaXRGb290ZXIge1xuXHRtYXJnaW4tdG9wOiAxNnB4O1xufVxuXG4ucmVtb3ZlQm94U2hhZG93IHtcbiAgYm94LXNoYWRvdzogbm9uZTtcbn1cblxuLmFkZEJveFNoYWRvdyB7XG4gIGJveC1zaGFkb3c6IDAgMCAwIDE1cHggI0QxRDREODtcbn1cblxuLmhpZGRlbiB7XG4gIGRpc3BsYXk6IG5vbmU7XG59XG5cbi8vIExpbmUgRWRpdG9yIHRvb2x0aXBzIGZvciBNRFEuICBIYXZlIHRvIG1ha2UgdGhpcyBnbG9iYWwgYXMgalFVSSBwdXRzIGF0IGVuZCBvZiBkb2N1bWVudCwgbm90IHdpdGhpbiBvcmlnaW5hbCBwYXJlbnQgZWxlbWVudFxuLnNiTGluZUVkaXRvclRvb2x0aXAge1xuICBwYWRkaW5nOiAxMnB4O1xuICB0YWJsZSB0ZCB7XG4gICAgcGFkZGluZzogM3B4IDJweDtcbiAgICAmOm50aC1jaGlsZCgyKSB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICB9XG4gIH1cbn1cblxuLnNiQnRuVG9vbHRpcCB7XG4gIHBhZGRpbmc6IDNweDtcbiAgYmFja2dyb3VuZC1jb2xvcjogQHNiQmdDb2xvcjtcbiAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgLXdlYmtpdC1ib3gtc2hhZG93OiAxcHggMXB4IDExcHggI0QxRDREODtcbiAgLW1vei1ib3gtc2hhZG93OiAxcHggMXB4IDExcHggI0QxRDREODtcbiAgYm94LXNoYWRvdzogMXB4IDFweCAxMXB4ICNEMUQ0RDg7XG59XG4iLCIjc2JOZXdSZWxhdGVkQ29udGVudHtcblxuICAjc2JOZXdSZWxhdGVkQ29udGVudE9wdGlvbnN7XG4gICAgbWFyZ2luOiAwO1xuXG4gICAgZmllbGRzZXQge1xuICAgICAgYm9yZGVyOiAwO1xuICAgICAgcGFkZGluZzogNXB4O1xuXG4gICAgICA+IGxhYmVsIHtcbiAgICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgICB3aWR0aDogMTc1cHg7XG4gICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgfVxuXG4gICAgICA+IGlucHV0LCBzZWxlY3Qge1xuICAgICAgICB3aWR0aDogMjAwcHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICBib3JkZXI6IG5vbmU7XG4gIH1cbn1cbiIsIiNzYlByb2R1Y3RDb25maWd1cmF0b3Ige1xuXG4gIC5zYkNvbmZpZ1Byb2R1Y3ROYW1lIHtcbiAgICBtYXJnaW46IEBzYlBhZ2VIZWFkZXJUb3AgMCAwIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICB9XG5cbiAgLy8gdG9vbCBiYXJzIGluIHRoZSBwYWdlIHRpdGxlXG4gIC5zYlBhZ2VUaXRsZSB7XG5cbiAgICAmLnNxdWVlemVkIHtcbiAgICAgIC5zYlRvb2xzIHtcbiAgICAgICAgcGFkZGluZzogMDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JQYWdlVGl0bGVMZWZ0IHtcbiAgICAgIC5zZi1pY29uLWN1c3RvbV9hcHBzIHtcbiAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogIzgxOTlhZjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAuc2JCdXR0b25zIHtcbiAgICAgIGZsb2F0OiByaWdodDtcbiAgICB9XG5cbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICBwYWRkaW5nOiA3cHggMDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG4gICAgICBmbG9hdDogcmlnaHQ7XG4gICAgICB0cmFuc2l0aW9uOiBhbGwgLjI1cyBlYXNlLWluO1xuXG4gICAgICA+IC5zYlRvb2wge1xuICAgICAgICBwYWRkaW5nOiA4cHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbFNlcGFyYXRvciB7XG4gICAgICBib3JkZXItcmlnaHQ6IEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgICAgaGVpZ2h0OiAxcHg7XG4gICAgICB3aWR0aDogMTBweDtcbiAgICAgIGZsb2F0OiBsZWZ0O1xuICAgIH1cblxuICAgIC5zYkJ0biB7XG4gICAgICAmOmRpc2FibGVkIHtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25EaXNhYmxlZENvbG9yO1xuICAgICAgICBjdXJzb3I6IGRlZmF1bHQ7XG4gICAgICB9XG5cbiAgICAgICYuc2JBZGRPcHRpb24ge1xuICAgICAgICBtYXJnaW46IDE2cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnNiRmVhdHVyZUljb24ge1xuICAgIGNvbG9yOiBAc2JIaWdobGlnaHRDb2xvcjtcbiAgICBmb250LXNpemU6IDMwcHg7XG4gIH1cblxuICAuc2JBZGRPcHRpb25Db250YWluZXIge1xuICAgIC5zYkFkZE9wdGlvbiB7XG4gICAgICBib3JkZXI6IDA7XG4gICAgICBtYXJnaW46IDRweCAwIDRweCAwO1xuXG4gICAgICAmOmhvdmVyIHtcbiAgICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICAgICAgY29sb3I6IEBzYkFjY2VudEljb25Ib3ZlckNvbG9yO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgaGVhZGVyIHtcbiAgICBwYWRkaW5nOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXG4gICAgJi5zYlNlY3Rpb24ge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMXB4IHNvbGlkIEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLnNiRm9vdGVyIHtcbiAgICAgIG1hcmdpbjogMDtcbiAgICAgIGJvcmRlci10b3A6IEBzYkhlYWRlckJvcmRlckNvbG9yO1xuICAgICAgYmFja2dyb3VuZDogQHNiSGVhZGVyU2Vjb25kYXJ5QmdDb2xvcjtcbiAgICB9XG5cbiAgICAmLm9wdGlvbkxvb2t1cE1vZGUge1xuICAgICAgYm9yZGVyOiBub25lO1xuICAgICAgYmFja2dyb3VuZDogbm9uZTtcbiAgICB9XG5cblxuICAgIC5zYlRpdGxlQ29udGFpbmVyIHtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHBhZGRpbmctcmlnaHQ6IDUwcHg7XG4gICAgICBwYWRkaW5nLXRvcDogNXB4O1xuICAgICAgdmVydGljYWwtYWxpZ246IHRvcDtcblxuICAgICAgPiAuc2JGZWF0dXJlSW5zdHJ1Y3Rpb25zIHtcbiAgICAgICAgcGFkZGluZzogMTBweCAwIDAgMDtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiRmVhdHVyZUFkZGl0aW9uYWxJbnN0cnVjdGlvbnMge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgICAgZmxvYXQ6IHJpZ2h0O1xuICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICBwYWRkaW5nLXRvcDogM3B4O1xuICAgIH1cblxuICB9XG5cbiAgLmZlYXR1cmVDb250ZW50IHtcbiAgICBmb250LXNpemU6IEBzYkZvbnRTaXplO1xuICB9XG5cbiAgLnNiVG9wQ29uZmlndXJhdGlvbkF0dHJpYnV0ZXMsIC5zYkJvdHRvbUNvbmZpZ3VyYXRpb25BdHRyaWJ1dGVzIHtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICBwYWRkaW5nLXRvcDogMTBweDtcblxuICAgICYuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICAgIGJvcmRlcjowIDtcblxuICAgICAgJi5zYkJvdHRvbSB7XG4gICAgICAgIGJvcmRlci10b3A6IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcbiAgICAgICAgcGFkZGluZy10b3A6IDMwcHg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiQ29uZmlnQXR0cmlidXRlQ29sdW1uIHtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiB0b3A7XG4gICAgfVxuXG4gICAgbGFiZWwge1xuICAgICAgcGFkZGluZzo1cHg7XG4gICAgfVxuXG4gICAgdGQge1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICBpbnB1dCB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDMwcHg7XG5cbiAgICAgICYuaGFzRGF0ZXBpY2tlciB7XG4gICAgICAgIHdpZHRoOiA0NSU7XG4gICAgICB9XG5cbiAgICB9XG5cbiAgICAuc2JMYWJlbENvbCB7XG4gICAgICBwYWRkaW5nLXJpZ2h0OiAxMHB4O1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgfVxuXG4gICAgLnNiRGF0YUNvbCB7XG4gICAgICBwYWRkaW5nOiA2cHggMDtcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG5cbiAgICAgID4gZGl2IHtcblxuICAgICAgICA+IGRpdiB7XG4gICAgICAgICAgcGFkZGluZy1sZWZ0OiA1cHg7XG4gICAgICAgIH1cblxuICAgICAgICA+IC5yZXF1aXJlZENvbmZpZ3VyYXRpb25BdHRyaWJ1dGUge1xuICAgICAgICAgIGJvcmRlci1sZWZ0OiAjYzAwIHNvbGlkO1xuICAgICAgICAgIHBhZGRpbmctbGVmdDogMnB4O1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnJlcXVpcmVzQ29uZmlndXJhdGlvbiB7XG4gICAgYm9yZGVyLWxlZnQ6ICNjMDAgc29saWQ7XG4gIH1cblxuICAuY2VudGVyIHtcbiAgICB3aWR0aDogMTAwJTtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICB9XG5cbiAgLnNiU2VsZWN0aW9uQ29sdW1uIHtcbiAgICB3aWR0aDogMSU7XG4gICAgY3Vyc29yOiBwb2ludGVyO1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgfVxuXG4gIC8vIFNpZGUgUGFuZWxcbiAgLnNiT3B0aW9uc0ZpbHRlciB7XG4gICAgLnNiUGFuZWw7XG4gICAgdG9wOiA5MXB4O1xuXG4gICAgaW5wdXQge1xuICAgICAgZGlzcGxheTogaW5saW5lO1xuICAgIH1cblxuICAgIGRpdiB7XG4gICAgICA+IGEge1xuICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyBPcHRpb24gTWV0aG9kIEFkZCBTaWRlIFBhbmVsXG4gIC5zYkFkZE9wdGlvbnNGaWx0ZXIge1xuICAgIC5zYlBhbmVsO1xuICAgIHRvcDogOTFweDtcblxuICAgIGlucHV0IHtcbiAgICAgIGRpc3BsYXk6IGlubGluZTtcbiAgICB9XG5cbiAgICBkaXYge1xuICAgICAgPiBhIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLy8gdGhlIFwiWCBQcm9kdWN0cyBGb3VuZFwiIGxhYmVsXG4gIC5zYlJlc3VsdHMge1xuICAgIG1hcmdpbjogMTRweCAwIC04cHggMDtcbiAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgfVxuXG4gIFx0Ly8gUGFnZSBCbG9jayBTZWN0aW9uIG92ZXJyaWRlc1xuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgIHBhZGRpbmc6IDA7XG4gIH1cblxuICAuc2JHcm91cHMge1xuICAgIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIG1hcmdpbjogMThweCBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICB0ZXh0LXRyYW5zZm9ybTogdXBwZXJjYXNlO1xuICAgIGJvcmRlci1ib3R0b206IDFweCBzb2xpZCBAc2JIZWFkZXJCb3JkZXJDb2xvcjtcblxuICAgID4gYSwgc3BhbiB7XG4gICAgICBjb2xvcjogaW5oZXJpdDtcbiAgICAgIHBhZGRpbmc6IDZweCAxNnB4O1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIH1cbiAgICA+IGEuc2VsZWN0ZWQsIHNwYW4uc2VsZWN0ZWQge1xuICAgICAgYm9yZGVyLWJvdHRvbTogMnB4IHNvbGlkIEBzYlRhYlNlbGVjdGVkQ29sb3I7XG4gICAgfVxuICAgID4gYTpob3Zlciwgc3Bhbjpob3ZlciB7XG4gICAgICBib3JkZXItYm90dG9tOiAycHggc29saWQgQHNiVGFiU2VsZWN0ZWRDb2xvcjtcbiAgICB9XG4gIH1cblxuICAvLyBBIHRhYmxlIG9mIG9wdGlvbnMgKHJvd3MpXG4gIC5zYlRhYmxlIHtcbiAgICBAcm93SGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG4gICAgbWFyZ2luLXRvcDogNXB4O1xuXG4gICAgLy8gZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG5cbiAgICA+IHRoZWFkID4gdHIgPiB0aDpudGgtY2hpbGQoMiksXG4gICAgPiB0Ym9keSA+IHRyID4gdGQ6bnRoLWNoaWxkKDIpIHtcbiAgICAgIHdpZHRoOiA2MHB4O1xuICAgIH1cblxuICAgIC8vIEFkZCBPcHRpb24gYnV0dG9uIG9uIHRoZSBsb3dlciBsZWZ0IHJvdyBvZiB0aGUgdGFibGVcblxuICAgIC8vIHRhYmxlIGNlbGxzXG4gICAgPiB0aGVhZCA+IHRyID4gdGgge1xuICAgICAgcGFkZGluZy1yaWdodDogMTJweDtcbiAgICAgIHBhZGRpbmctbGVmdDogMTJweDtcbiAgICB9XG4gICAgPiB0Ym9keSA+IHRyID4gdGQge1xuICAgICAgaGVpZ2h0OiBAcm93SGVpZ2h0O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgIHBhZGRpbmc6IDAgMTJweDtcblxuXG4gICAgICBbY2xhc3NePXNiLWljb25dIHtcbiAgICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuMjtcbiAgICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICAgIH1cblxuICAgICAgJi5yaWdodCB7XG4gICAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgfVxuXG5cbiAgICAgICYuc2JRdWFudGl0eUNlbGwge1xuICAgICAgICB3aWR0aDogNzVweDtcbiAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuXG4gICAgICAgIGlucHV0IHtcbiAgICAgICAgICB3aWR0aDogMTAwcHg7XG4gICAgICAgICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgICAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICB9XG5cbiAgICAuc2JDdXJyZW5jeUNlbGwge1xuICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG5cbiAgICAgIGlucHV0IHtcbiAgICAgICAgdGV4dC1hbGlnbjogcmlnaHQ7XG4gICAgICB9XG4gICAgfVxuXG4gICAgPiB0Ym9keSB0cjpsYXN0LWNoaWxkIHtcbiAgICAgID4gdGQge1xuICAgICAgICBib3JkZXItYm90dG9tOiBub25lO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC53aXphcmRDb25maWd1cmF0b3IgPiB0YWJsZSA+IHRib2R5ID4gdHI6aG92ZXIge1xuICAgIGJhY2tncm91bmQ6ICNmZmY7XG4gIH1cblxuICAuc2JMb2FkTW9yZSB7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIGhlaWdodDogNjVweDtcbiAgICB0b3A6IDk0JTtcbiAgICB3aWR0aDogMTAwJTtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgZm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDEuNTtcbiAgICBwYWRkaW5nLXRvcDogMTVweDtcbiAgICBiYWNrZ3JvdW5kOiBAc2JCZ0NvbG9yO1xuICAgIGRpc3BsYXk6IG5vbmU7XG5cbiAgICAmLnNiU2hvd0xvYWRpbmcge1xuICAgICAgZGlzcGxheTogaW5saW5lLWJsb2NrO1xuICAgIH1cbiAgfVxuICAuc2YtaWNvbi13YXJuaW5nIHtcbiAgICBjb2xvcjogIzU4NzZhMztcbiAgICBmb250LXNpemU6IDIwcHg7XG4gIH1cbn1cbiIsIi8vIFByb2R1Y3QgU2VhcmNoXG4jc2JQcm9kdWN0U2VhcmNoIHtcbiAgLnNiU2VhcmNoUmVzdWx0cztcblxuICAuc2JQYWdlQmxvY2tTZWN0aW9uIHtcbiAgICBiYWNrZ3JvdW5kOiBub25lO1xuICAgIG1hcmdpbjogMDtcbiAgICBwYWRkaW5nOiAwO1xuICB9XG5cbiAgLnNiUGFnZVRpdGxlIHtcbiAgICAuc2JUb29scyB7XG4gICAgICBtYXJnaW4tcmlnaHQ6IDEwcHg7XG4gICAgICAvLyBwYWRkaW5nOiA3cHggMDtcbiAgICAgIC8vIGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIGJhY2tncm91bmQ6IEBzYkdyb3VwQnRuQmdDb2xvcjtcbiAgICAgICAgcGFkZGluZzogN3B4O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5zYlRhYmxlIHtcbiAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgfVxuXG4gICAgLnNiU2VsZWN0aW9uSGVhZGVyIHtcbiAgICAgIHdpZHRoOiAxJVxuICAgIH1cblxuICAgIHRib2R5IHtcbiAgICAgICYuY2xvc2UgPiAuc2JHcm91cFJvd3tcbiAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgIH1cbiAgICAgIFxuICAgICAgLnNiR3JvdXBOYW1lIHtcbiAgICAgICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICAgICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgICAgfVxuXG4gICAgICAuc2JHcm91cE5hbWVSb3cge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JIZWFkZXJCZ0NvbG9yO1xuICAgICAgICBjdXJzb3I6IHBvaW50ZXI7XG4gICAgICAgIFxuICAgICAgICBpIHtcbiAgICAgICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZSAqIDEuMjU7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICB0Zm9vdCA+IHRyLnNiUHJvZHVjdFBhZ2VzIHtcblxuICAgICAgPiB0ZCB7XG4gICAgICAgIGJvcmRlci1ib3R0b206IG5vbmU7XG5cbiAgICAgICAgLnNiUGFnZXMge1xuICAgICAgICAgIGZvbnQtc2l6ZTogMC45ZW07XG4gICAgICAgICAgbWFyZ2luLXRvcDogMTBweDtcbiAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG5cbiAgICAgICAgICA+IC5zYkJ1dHRvbnMge1xuICAgICAgICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICAgICAgICAgIGJhY2tncm91bmQtY29sb3I6IEBzYkJnQ29sb3I7XG5cbiAgICAgICAgICAgID4gLnNiQnRuIHtcbiAgICAgICAgICAgICAgcGFkZGluZy10b3A6IDZweDtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYkdyb3VwQnRuRm9udENvbG9yO1xuXG4gICAgICAgICAgICAgICYuc2ItaWNvbi1sZWZ0LWRpcixcbiAgICAgICAgICAgICAgJi5zYi1pY29uLXJpZ2h0LWRpciB7XG4gICAgICAgICAgICAgICAgZm9udC1zaXplOiAxLjdlbTtcbiAgICAgICAgICAgICAgICBwYWRkaW5nLXRvcDogM3B4O1xuICAgICAgICAgICAgICB9XG5cbiAgICAgICAgICAgICAgJi5kaXNhYmxlZCB7XG4gICAgICAgICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICAgICAgICAgIGNvbG9yOiBAc2JHcm91cEJ0bkRpc2FibGVkRm9udENvbG9yO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLnNiUGFnZVNlbGVjdG9yIHtcbiAgICAgICAgICAgIHBhZGRpbmc6IDAgMTBweDtcbiAgICAgICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblxuICAgICAgICAgICAgPiBpbnB1dCB7XG4gICAgICAgICAgICAgIHdpZHRoOiA0NXB4O1xuICAgICAgICAgICAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgICBcbiAgICAgICY6aG92ZXIge1xuICAgICAgICBiYWNrZ3JvdW5kLWNvbG9yOiBAc2JUYWJsZVJvd0hvdmVyQ29sb3I7XG5cbiAgICAgICAgPiB0ZCAuc2JQYWdlcyA+IC5zYkJ1dHRvbnN7XG4gICAgICAgICAgYmFja2dyb3VuZC1jb2xvcjogQHNiVGFibGVSb3dIb3ZlckNvbG9yO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG59XG5cbi8vIEZpbHRlZCBhbmQgR3VpZGVkIFNlbGxpbmcgcGFuZWxzIG9uIHJpZ2h0IHNpZGUgb2YgcGFnZVxuLnNiUHJvZHVjdEZpbHRlciwgI3NiR3VpZGVkTW9kYWwuc2JHdWlkZWQge1xuICAuc2JQYW5lbDtcblxuICBkaXYge1xuICAgID4gYSB7XG4gICAgICB0ZXh0LWFsaWduOiByaWdodDtcbiAgICAgIGRpc3BsYXk6IGZsZXg7XG4gICAgICBmb250LXNpemU6IEBzYkNvbnRlbnRGb250U2l6ZTtcbiAgICB9XG4gIH1cblxuICBmaWVsZHNldD5zcGFuIHtcbiAgICA+IGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuICB9XG5cbiAgbGFiZWw+c3BhbiB7XG4gICAgPiBpbnB1dFt0eXBlPWNoZWNrYm94XSB7XG4gICAgICB2ZXJ0aWNhbC1hbGlnbjogbWlkZGxlO1xuICAgIH1cbiAgfVxufVxuXG4uc2JQcm9kdWN0cyB7XG4gIHRyYW5zaXRpb246IC4wMnM7XG59XG5cbi8vIEd1aWRlZCBTZWxsaW5nXG4jc2JHdWlkZWRNYXNrIHtcbiAgLnNiTW9kYWxNYXNrO1xuXG4gICYuY2xvc2Uge1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gIH1cbn1cblxuI3NiR3VpZGVkTW9kYWwuc2JHdWlkZWRNb2RhbCB7XG4gIC5zYk1vZGFsRGlhbG9nO1xuICBtYXgtd2lkdGg6IDQ4MHB4O1xuXG4gICYuY2xvc2Uge1xuICAgIGRpc3BsYXk6IG5vbmU7XG4gIH1cblxuICA+IC5zYkZpZWxkQ29ue1xuICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgb3ZlcmZsb3c6IGF1dG87XG4gIH1cblxuICBmaWVsZHNldCB7XG4gICAgcGFkZGluZzogMTBweDtcbiAgICBib3JkZXI6IDA7XG4gICAgZm9udC1zaXplOiAxLjRlbTtcblxuICAgID4gbGFiZWwge1xuICAgICAgZm9udC1zaXplOiBAc2JGb250U2l6ZTtcbiAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgIHBhZGRpbmc6IDAgMCA1cHggN3B4O1xuICAgICAgdmVydGljYWwtYWxpZ246IG1pZGRsZTtcbiAgICB9XG5cbiAgICA+IHNwYW4ge1xuICAgICAgZGlzcGxheTogYmxvY2s7XG4gICAgICA+IGlucHV0W3R5cGU9Y2hlY2tib3hdIHtcbiAgICAgICAgZGlzcGxheTogbm9uZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpbnB1dCwgc2VsZWN0IHtcbiAgICAgIGZvbnQtc2l6ZTogaW5oZXJpdCAhaW1wb3J0YW50O1xuICAgICAgbWFyZ2luLWxlZnQ6IDZweDtcbiAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG4gICAgICBtaW4td2lkdGg6IDEwMHB4O1xuICAgIH1cblxuICAgID4gKltjbGFzc149c2ItaWNvbl0ge1xuICAgICAgY29sb3I6IEBzYkljb25Db2xvcjtcbiAgICB9XG4gIH1cblxufVxuXG5kaXYuY2hhdHRlckZvbGxvdyB7XG4gIHdoaXRlLXNwYWNlOiBub3dyYXA7XG59XG5cbi5jaGF0dGVyRm9sbG93IGEge1xuICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gIGNvbG9yOiAjMDAwMDAwO1xuICBjdXJzb3I6IHBvaW50ZXI7XG59XG5cbi5jaGF0dGVyRm9sbG93IC5mb2xsb3dJY29uIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC9pbWcvZmVlZHMvZm9sbG93X3Nwcml0ZS5wbmcpO1xuICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIDA7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDIwcHg7XG4gIG1hcmdpbi10b3A6IDdweDtcbiAgbWFyZ2luLWxlZnQ6IDNweDsgIFxufVxuXG4uY2hhdHRlckZvbGxvdyAuY2hlY2tJY29uIHtcbiAgYmFja2dyb3VuZC1pbWFnZTogdXJsKC9pbWcvZmVlZHMvZm9sbG93X3Nwcml0ZS5wbmcpO1xuICBiYWNrZ3JvdW5kLXJlcGVhdDogbm8tcmVwZWF0O1xuICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIC0yN3B4O1xuICB3aWR0aDogYXV0bztcbiAgaGVpZ2h0OiAyMHB4O1xuICBtYXJnaW4tdG9wOiA3cHg7XG4gIG1hcmdpbi1sZWZ0OiAzcHg7XG59XG5cbi5jaGF0dGVyRm9sbG93IC51bmZvbGxvd0ljb24ge1xuICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoL2ltZy9mZWVkcy9mb2xsb3dfc3ByaXRlLnBuZyk7XG4gIGJhY2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7XG4gIGJhY2tncm91bmQtcG9zaXRpb246IDAgLTU0cHg7XG4gIHdpZHRoOiBhdXRvO1xuICBoZWlnaHQ6IDIwcHg7XG4gIG1hcmdpbi10b3A6IDdweDtcbiAgbWFyZ2luLWxlZnQ6IDNweDtcbn1cblxuLmNoYXR0ZXJGb2xsb3cgLmhpb24ge1xuICBiYWNrZ3JvdW5kLXBvc2l0aW9uOiAwIC03NXB4O1xufSIsIi8vIFNlYXJjaCByZXN1bHRzIGRpc3BsYXllZFxuI3NiU3Vic2NyaXB0aW9uU2VhcmNoIHtcbiAgLnNiU2VhcmNoUmVzdWx0cztcblxuICAuc2JQYWdlVGl0bGUge1xuXG4gICAgJi5zcXVlZXplZCB7XG4gICAgICAuc2JUb29scyB7XG4gICAgICAgIHBhZGRpbmc6IDA7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLnNiVG9vbHMge1xuICAgICAgbWFyZ2luLXJpZ2h0OiAxMHB4O1xuICAgICAgcGFkZGluZzogN3B4IDA7XG5cbiAgICAgID4gLnNiVG9vbCB7XG4gICAgICAgIHBhZGRpbmc6IDhweDtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gU2lkZSBwYW5lbFxuLnNiU3Vic2NyaXB0aW9uRmlsdGVyIHtcbiAgLnNiUGFuZWw7XG5cbiAgaW5wdXQge1xuICAgIGRpc3BsYXk6IGlubGluZTtcbiAgfVxuXG4gIGRpdiB7XG4gICAgPiBhIHtcbiAgICAgIHRleHQtYWxpZ246IHJpZ2h0O1xuICAgICAgZGlzcGxheTogZmxleDtcbiAgICAgIGZvbnQtc2l6ZTogQHNiQ29udGVudEZvbnRTaXplO1xuICAgIH1cbiAgfVxufVxuIiwiLy8gVXNlZCBmb3IgdGhlIENsb25lUHJvZHVjdENoaWxkcmVuLCBDbG9uZUxpbmVJdGVtcywgYW5kIENsb25lUXVvdGVUZW1wbGF0ZVJlbGF0ZWQgcGFnZXNcbi8vIEFsc28gYWRkZWQgUmVmcmVzaFByaWNpbmcgUGFnZXNcbi8vIEFsc28gYWRkZWQgUHJldmlld09wcG9ydHVuaXR5IHBhZ2VcbiNzYkNsb25lUmVsYXRlZCwgI3NiUmVmcmVzaFByaWNlcywgI3NiUHJldmlld0FwcHJvdmFscywgI3NiTGlzdEFwcHJvdmFscyB7XG5cblx0YmFja2dyb3VuZDogQHNiUGFnZUJnQ29sb3I7XG5cdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdHRleHQtYWxpZ246IGNlbnRlcjtcblx0Zm9udC1mYW1pbHk6IEBzYkZvbnQ7XG5cblx0LnNiUGFnZVRpdGxlIHtcblx0XHR0ZXh0LWFsaWduOiBsZWZ0O1xuXG5cdFx0aDEge1xuXHRcdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDI7XG5cdFx0ICBcdGZvbnQtd2VpZ2h0OiAzMDA7XG5cdFx0ICAgIGZvbnQtZmFtaWx5OiBAc2JGb250O1xuXHRcdCAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuXHRcdH1cblx0XHRoMiB7XG5cdFx0ICBcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjI7XG4gICAgICAgICAgICBjb2xvcjogQHNiRm9udENvbG9yO1xuXHRcdH1cblxuXHRcdC5zZi1pY29uLWNvcHk6YmVmb3JlLCAuc2YtaWNvbi1yZWZyZXNoOmJlZm9yZSwgLnNmLWljb24tYXBwcm92YWw6YmVmb3JlIHtcblx0XHRcdG1hcmdpbi10b3A6IDEwcHg7XG5cdFx0XHRwb3NpdGlvbjogaW5oZXJpdDtcblx0XHR9XG5cblx0XHQuc2YtaWNvbi1wb3N0OmJlZm9yZSB7XG5cdFx0XHRwb3NpdGlvbjogaW5oZXJpdDtcblx0XHR9XG5cblx0XHQuc2YtaWNvbi1hcHByb3ZhbDpiZWZvcmUge1xuXHRcdFx0bWFyZ2luLXRvcDogMHB4O1xuXHRcdH1cblxuXHRcdC5yZXNpemUge1xuXHRcdFx0cGFkZGluZzogMnB4IDEwcHg7XG5cdFx0fVxuXHR9XG5cblx0Lm1lc3NhZ2Uge1xuXHRcdHBhZGRpbmc6IDEwcHg7XG5cdFx0bWFyZ2luOiAxOHB4IDI0cHg7XG5cdFx0Lm1lc3NhZ2VUZXh0IHtcblx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemUgKiAxLjQ7XG5cdFx0XHRoNCB7XG5cdFx0XHRcdHBhZGRpbmc6IDAgNHB4O1xuXHRcdFx0XHRkaXNwbGF5OiBpbmxpbmUtYmxvY2s7XG5cdFx0XHRcdGZvbnQtc2l6ZTogQHNiRm9udFNpemU7XG5cdFx0XHRcdGZvbnQtd2VpZ2h0OiAzMDA7XG5cdFx0XHR9XG5cdFx0fVxuXHR9XG5cblx0LnNiQnRucyB7XG5cdFx0Zm9udC1zaXplOiBAc2JGb250U2l6ZSAqIDAuOTtcblx0XHRib3JkZXItcmFkaXVzOiAwO1xuXHRcdHZlcnRpY2FsLWFsaWduOiB0b3A7XG5cdFx0ZmxvYXQ6IHJpZ2h0O1xuXG5cdFx0LnNiQnRuIHtcblx0XHRcdGJvcmRlci1yYWRpdXM6IDA7XG5cblx0XHRcdCY6Zmlyc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdGJvcmRlci10b3AtbGVmdC1yYWRpdXM6IEBzYkJ0bkJvcmRlclJhZGl1cztcblx0XHRcdFx0Ym9yZGVyLWJvdHRvbS1sZWZ0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0fVxuXG5cdFx0XHQmOmxhc3Qtb2YtdHlwZSB7XG5cdFx0XHRcdGJvcmRlci1sZWZ0OiAwO1xuXHRcdFx0XHRib3JkZXItdG9wLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0XHRib3JkZXItYm90dG9tLXJpZ2h0LXJhZGl1czogQHNiQnRuQm9yZGVyUmFkaXVzO1xuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdC8vIENvbnRhaW5lciBmb3IgZWFjaCByZWxhdGVkIGxpc3Rcblx0LnNiR3JvdXAge1xuXHQgICAgPiBoZWFkZXIge1xuXHQgICAgICAgIG1hcmdpbjogMDtcblx0ICAgICAgICBib3JkZXI6IDA7XG5cdCAgICAgICAgcGFkZGluZzogQHNiUGFnZUhlYWRlclRvcCAtIDVweCBAc2JQYWdlSGVhZGVyTGVmdCBAc2JQYWdlSGVhZGVyVG9wIC0gMTBweDtcblx0ICAgICAgICBib3JkZXItYm90dG9tOiBAc2JDb250ZW50Qm9yZGVyO1xuICAgICAgXHR9XG5cbiAgICAgIFx0LnNiUGFnZUJsb2NrU2VjdGlvbiB7XG4gICAgICBcdFx0cGFkZGluZy1ib3R0b206IDZweDtcblx0XHQgIFx0dGV4dC1hbGlnbjogbGVmdDtcblxuICAgICAgXHRcdD4gaDMge1xuXHRcdCAgICBcdGZvbnQtZmFtaWx5OiBAc2JGb250O1xuXHRcdFx0ICBcdGZvbnQtd2VpZ2h0OiAzMDA7XG5cdFx0XHR9XG4gICAgICBcdH1cblxuXHQgICAgbWFyZ2luOiBAc2JQYWdlSGVhZGVyVG9wIEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXHQgICAgYm9yZGVyOiBAc2JDb250ZW50Qm9yZGVyO1xuXHQgICAgYm9yZGVyLXJhZGl1czogM3B4O1xuICBcdH1cblxuXHQvLyBCdXR0b25zIHRvIGV4cGFuZCBhbmQgY29udHJhY3QgcmVsYXRlZCBsaXN0XG5cdC50b2dnbGVCdXR0b24ge1xuXHRcdGZsb2F0OiByaWdodDtcblx0fVxuXG5cdC8vIFRhYmxlIGZvciBlYWNoIHJlbGF0ZWQgbGlzdFxuXHQudGFibGVDb250YWluZXIge1xuXHRcdGRpc3BsYXk6IG5vbmU7XG5cdH1cblxuXHQuc2JUYWJsZSB7XG5cdCAgICBAcm93SGVpZ2h0OiBAc2JUYWJsZUNlbGxIZWlnaHQ7XG5cdCAgICBAaW5kZW50OiAxMHB4ICsgQHNiUGFnZUhlYWRlckxlZnQ7XG5cblx0ICAgIC5yZkhlYWQge1xuXHQgICAgXHRiYWNrZ3JvdW5kOiBAc2JDb250ZW50QmdDb2xvcjtcblx0ICAgIH1cblxuXHQgICAgLy8gcGFkZGluZyBmb3IgZmlyc3QgYW5kIGxhc3QgY29sdW1uc1xuXHQgICAgPiB0aGVhZCA+IHRyID4gdGg6Zmlyc3Qtb2YtdHlwZSxcblx0ICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuXHQgICAgICBcdHBhZGRpbmctbGVmdDogQHNiUGFnZUhlYWRlckxlZnQ7XG5cdCAgICB9XG5cdCAgICA+IHRoZWFkID4gdHIgPiB0aDpsYXN0LW9mLXR5cGUsXG5cdCAgICA+IHRib2R5ID4gdHIgPiB0ZDpsYXN0LW9mLXR5cGUge1xuXHQgICAgICBcdHBhZGRpbmctcmlnaHQ6IEBzYlBhZ2VIZWFkZXJMZWZ0O1xuXHQgICAgfVxuXHQgICAgPiB0Ym9keSA+IHRyOmxhc3Qtb2YtdHlwZSA+IHRkIHtcblx0ICAgICAgXHRib3JkZXItYm90dG9tOiBub25lO1xuXHQgICAgfVxuXG5cdCAgICA+IHRoZWFkID4gdHIgPiB0aCB7XG5cdCAgICAgIFx0aGVpZ2h0OiBAcm93SGVpZ2h0ICogMC41O1xuXHQgICAgfVxuXG5cdCAgICAvLyB0YWJsZSBjZWxsc1xuXHQgICAgPiB0Ym9keSA+IHRyID4gdGQge1xuXHQgICAgXHRwYWRkaW5nOiBAcm93SGVpZ2h0ICogMC4xIEByb3dIZWlnaHQgKiAwLjI7XG5cdCAgICAgIFx0aGVpZ2h0OiBAcm93SGVpZ2h0ICogMC41O1xuXHQgICAgICBcdHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cdCAgICAgIFx0dGV4dC1hbGlnbjogbGVmdDtcblx0XHR9XG5cblx0XHQ+IHRmb290ID4gdHIge1xuXHRcdFx0PiB0ZCB7XG5cdFx0XHRcdHRleHQtYWxpZ246IGxlZnQ7XG5cdFx0ICAgIFx0cGFkZGluZy10b3A6IEByb3dIZWlnaHQgKiAwLjE7XG5cdFx0ICAgIFx0cGFkZGluZy1ib3R0b206IEByb3dIZWlnaHQgKiAwLjE7XG5cdFx0ICAgIFx0cGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcblx0XHRcdFx0aGVpZ2h0OiBAcm93SGVpZ2h0ICogMC40O1xuXHRcdFx0fVxuXHRcdH1cblxuXHRcdHRib2R5ID4gdHI6aG92ZXIge1xuXHRcdCAgXHRiYWNrZ3JvdW5kOiBub25lO1xuXHRcdH1cblx0fVxuXG59XG4iLCIvLyBGYXZvcml0ZSBNYW5hZ2VyXG4jc2JGYXZvcml0ZXNNYW5hZ2VyIHtcblxuICAuc2JQYWdlVGl0bGUge1xuICAgIC5zYlRvb2xzIHtcbiAgICAgIG1hcmdpbi1yaWdodDogMTBweDtcblxuICAgICAgPiAuc2JUb29sIHtcbiAgICAgICAgYmFja2dyb3VuZDogQHNiR3JvdXBCdG5CZ0NvbG9yO1xuICAgICAgICBwYWRkaW5nOiA3cHg7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLnRvcE1zZyB7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHBhZGRpbmc6IDMycHhcbiAgfVxuXG4gIC5ib3RNc2cge1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgfVxuXG4gIC5zYlRhYmxlIHtcbiAgICA+IHRoZWFkID4gdHIgPiB0aDpmaXJzdC1vZi10eXBlLFxuICAgID4gdGJvZHkgPiB0ciA+IHRkOmZpcnN0LW9mLXR5cGUge1xuICAgICAgcGFkZGluZy1sZWZ0OiBAc2JQYWdlSGVhZGVyTGVmdDtcbiAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgfVxuXG4gICAgLnNiU2VsZWN0aW9uSGVhZGVyIHtcbiAgICAgIHdpZHRoOiAxJVxuICAgIH1cblxuICAgIC5zYkZhdm9yaXRlSGVhZGVyIHtcbiAgICAgIHdpZHRoOiAxNjBweDtcbiAgICB9XG5cbiAgICAgIC5zYkRlc2NyaXB0aW9uIHtcbiAgICAgICAgd2lkdGg6IDUwJTtcbiAgICAgIH1cblxuICAgIHRib2R5IHtcbiAgICAgIHRyIHtcbiAgICAgICAgdGQge1xuICAgICAgICAgIHZlcnRpY2FsLWFsaWduOiBtaWRkbGU7XG5cbiAgICAgICAgICBpIHtcbiAgICAgICAgICAgIGNvbG9yOiBAc2JMaW5rQ29sb3I7XG4gICAgICAgICAgICAmOmhvdmVyIHtcbiAgICAgICAgICAgICAgY29sb3I6IEBzYkZvbnRDb2xvcjtcbiAgICAgICAgICAgICAgY3Vyc29yOiBwb2ludGVyO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gICNzYkZhdm9yaXRlc01hbmFnZXJNYXNrIHtcbiAgICAuc2JNb2RhbE1hc2s7XG5cbiAgICAmLmNsb3NlIHtcbiAgICAgIGRpc3BsYXk6IG5vbmU7XG4gICAgfVxuICB9XG5cbiAgI3NiRmF2b3JpdGVzTWFuYWdlck1vZGFsIHtcbiAgICAuc2JNb2RhbERpYWxvZztcblxuICAgIG1pbi1oZWlnaHQ6IDE2MHB4O1xuICAgIG1heC13aWR0aDogNDAwcHg7XG5cbiAgICAuc2JNb2RhbENvbnRlbnRDb250YWluZXIge1xuICAgICAgdWwge1xuICAgICAgICAtd2Via2l0LXBhZGRpbmctZW5kOiAwcHg7XG4gICAgICB9XG5cbiAgICAgIC5zYlRhYmxlIHtcbiAgICAgICAgLnNiQWN0aW9ucyB7XG4gICAgICAgICAgd2lkdGg6IDElO1xuICAgICAgICAgIHRleHQtYWxpZ246IGxlZnQ7XG4gICAgICAgICAgd2hpdGUtc3BhY2U6IG5vd3JhcDtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC5mb3JtLWNvbnRyb2wge1xuICAgIGRpc3BsYXk6IGJsb2NrO1xuICAgIHdpZHRoOiAxMDAlO1xuICAgIGhlaWdodDogMzRweDtcbiAgICBwYWRkaW5nOiA2cHggMTJweDtcbiAgICBmb250LXNpemU6IDE0cHg7XG4gICAgbGluZS1oZWlnaHQ6IDEuNDI4NTcxNDM7XG4gICAgY29sb3I6ICM1NTU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2ZmZjtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiBub25lO1xuICAgIGJvcmRlcjogMXB4IHNvbGlkICNjY2M7XG4gICAgYm9yZGVyLXJhZGl1czogNHB4O1xuICB9XG5cbiAgLnNiVmFsaWRhdGlvbkVycm9ycyB7XG4gICAgZm9udC1zaXplOiBAc2JDb250ZW50Rm9udFNpemU7XG4gICAgcGFkZGluZzogNXB4IDE1cHg7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBjb2xvcjogI2MwMDtcbiAgfVxuXG4gIC5pbnZhbGlkIHtcbiAgICBib3JkZXItY29sb3I6ICNjMDA7XG4gIH1cblxuICAuZHJvcGRvd24tbWVudSB7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHRvcDogMTAwJTtcbiAgICBsZWZ0OiAwO1xuICAgIHotaW5kZXg6IDEwMDA7XG4gICAgZGlzcGxheTogbm9uZTtcbiAgICBmbG9hdDogbGVmdDtcbiAgICBtaW4td2lkdGg6IDE2MHB4O1xuICAgIHBhZGRpbmc6IDVweCAwO1xuICAgIG1hcmdpbjogMnB4IDAgMDtcbiAgICBmb250LXNpemU6IDE0cHg7XG4gICAgdGV4dC1hbGlnbjogbGVmdDtcbiAgICBsaXN0LXN0eWxlOiBub25lO1xuICAgIGJhY2tncm91bmQtY29sb3I6ICNmZmY7XG4gICAgYm9yZGVyOiAxcHggc29saWQgcmdiYSgwLDAsMCwuMTUpO1xuICAgIGJvcmRlci1yYWRpdXM6IDRweDtcbiAgICBib3gtc2hhZG93OiAwIDZweCAxMnB4IHJnYmEoMCwwLDAsLjE3NSk7XG4gICAgYmFja2dyb3VuZC1jbGlwOiBwYWRkaW5nLWJveDtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51ID4gbGkgPiBhIHtcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICBwYWRkaW5nOiAzcHggMjBweDtcbiAgICBjbGVhcjogYm90aDtcbiAgICBmb250LXdlaWdodDogbm9ybWFsO1xuICAgIGxpbmUtaGVpZ2h0OiAxLjQyODU3MTQzO1xuICAgIGNvbG9yOiAjMzMzO1xuICAgIHdoaXRlLXNwYWNlOiBub3dyYXA7XG4gIH1cbiAgLmRyb3Bkb3duLW1lbnUgPiBsaSA+IGE6aG92ZXIsXG4gIC5kcm9wZG93bi1tZW51ID4gbGkgPiBhOmZvY3VzIHtcbiAgICBjb2xvcjogIzI2MjYyNjtcbiAgICB0ZXh0LWRlY29yYXRpb246IG5vbmU7XG4gICAgYmFja2dyb3VuZC1jb2xvcjogI2Y1ZjVmNTtcbiAgfVxuXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGEsXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGE6aG92ZXIsXG4gIC5kcm9wZG93bi1tZW51ID4gLmFjdGl2ZSA+IGE6Zm9jdXMge1xuICAgIGNvbG9yOiAjZmZmO1xuICAgIHRleHQtZGVjb3JhdGlvbjogbm9uZTtcbiAgICBiYWNrZ3JvdW5kLWNvbG9yOiAjMzM3YWI3O1xuICAgIG91dGxpbmU6IDA7XG4gIH1cblxufVxuXG5cbiIsIi8vIFVzZWQgZm9yIHRoZSBibG9jayBwcmljZSBhbmQgY29zdCBzY2hlZHVsZSBwYWdlc1xuI3NiQmxvY2tQcmljZSB7XG5cblx0YmFja2dyb3VuZDogQHNiUGFnZUJnQ29sb3I7XG5cdGNvbG9yOiBAc2JGb250Q29sb3I7XG5cdGZvbnQtZmFtaWx5OiBAc2JGb250O1xuXHRwYWRkaW5nLXRvcDogMTBweDtcbiAgICBwYWRkaW5nLWJvdHRvbTogMTBweDtcblxuXHQjc2JQcmljZUJvb2tHcm91cCB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcblx0fVxuXG4gICAgI3NiQ2xvbmVQcmljZUJvb2tHcm91cCB7XG4gICAgICAgIGRpc3BsYXk6IGlubGluZS1ibG9jaztcbiAgICAgICAgcGFkZGluZy1sZWZ0OiAxMDBweDtcblx0fVxuXG4gICAgLnNiUHJpY2VCb29rVGV4dCB7XG4gICAgICAgIHBhZGRpbmc6IDEwcHg7XG5cdH1cblxuXHQuc2JDbG9uZUZyb21QcmljZUJvb2sge1xuXHQgICAgbWFyZ2luLWxlZnQ6IDE1cHg7XG5cdCAgICBwYWRkaW5nLWJvdHRvbTogNHB4O1xuXHR9XG5cblx0LnNiUHJpY2VCb29rU2VsZWN0IHtcblx0ICAgIHBhZGRpbmctYm90dG9tOiAycHg7XG5cdH1cbn0iXSwiZmlsZSI6InNiLmNzcyJ9 */
