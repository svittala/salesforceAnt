$(document).ready(function() {
	//hexc will convert a RGB value into a hexcode
	function hexc(colorval) {
	    var parts = colorval.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
	    delete(parts[0]);
	    for (var i = 1; i <= 3; ++i) {
	        parts[i] = parseInt(parts[i]).toString(16);
	        if (parts[i].length == 1) parts[i] = '0' + parts[i];
	    }
	    color = '#' + parts.join('');

	    return color;
	}
	//initialize the color spectrums
	$(".theme").spectrum({
	    showInput: true,
	    className: "full-spectrum",
	    showInitial: true,
	    maxSelectionSize: 10,
	    preferredFormat: "hex",
	});

	//check to see while instantiating the color spectrum if all the values are black aka blank/new
	newCheck = true;
	$( ".theme" ).each(function( index ) {
  		$(this).spectrum('set',$(this).val());
  		if($(this).val() != "#000000"){
  			newCheck = false;
  		}
	});
	//if new record, set default values to the associated variable settings which are associated to an invisible div
	if(newCheck){
		$(".headerColor").spectrum("set",hexc($('.sbHeaderBgColor').css('color')));
		$(".secondaryHeaderColor").spectrum("set",hexc($('.sbHeaderSecondaryBgColor').css('color')));		
		$(".headerBorderColor").spectrum("set",hexc($('.sbHeaderBorderColor').css('color')));
		$(".headerFontColor").spectrum("set",hexc($('.sbHeaderFontColor').css('color')));
		$(".headerSecondaryFontColor").spectrum("set",hexc($('.sbHeaderSupportFontColor').css('color')));
		$(".generalColor").spectrum("set",hexc($('.sbBgColor').css('color')));
		$(".detailColor").spectrum("set",hexc($('.sbDetailBgColor').css('color')));
		$(".generalFontColor").spectrum("set",hexc($('.sbFontColor').css('color')));
		$(".generalFontSecondaryColor").spectrum("set",hexc($('.sbSecondaryFontColor').css('color')));
		$(".generalBorderColor").spectrum("set",hexc($('.sbBorderColor').css('color')));
		$(".tableHeaderFontColor").spectrum("set",hexc($('.sbTableHeaderFontColor').css('color')));
		$(".tableRowHoverColor").spectrum("set",hexc($('.sbTableRowHoverColor').css('color')));
		$(".groupButtonColor").spectrum("set",hexc($('.sbGroupBtnBgColor').css('color')));
		$(".groupButtonBorderColor").spectrum("set",hexc($('.sbGroupBtnBorderColor').css('color')));
		$(".groupButtonFontColor").spectrum("set",hexc($('.sbGroupBtnFontColor').css('color')));
		$(".groupButtonHoverColor").spectrum("set",hexc($('.sbGroupBtnHoverBgColor').css('color')));
		$(".groupButtonHoverFontColor").spectrum("set",hexc($('.sbGroupBtnHoverFontColor').css('color')));
		$(".groupButtonDisabledFontColor").spectrum("set",hexc($('.sbGroupBtnDisabledFontColor').css('color')));
		$(".primaryButtonColor").spectrum("set",hexc($('.sbPrimaryBtnBgColor').css('color')));
		$(".primaryButtonFontColor").spectrum("set",hexc($('.sbPrimaryBtnFontColor').css('color')));
		$(".primaryButtonHoverColor").spectrum("set",hexc($('.sbPrimaryBtnHoverBgColor').css('color')));
		$(".accentIconFontColor").spectrum("set",hexc($('.sbAccentIconColor').css('color')));
		$(".accentIconHoverFontColor").spectrum("set",hexc($('.sbAccentIconHoverColor').css('color')));
		$(".accentIconDisabledFontColor").spectrum("set",hexc($('.sbAccentIconDisabledColor').css('color')));
		$(".iconFontColor").spectrum("set",hexc($('.sbIconColor').css('color')));
		$(".tabSelectedColor").spectrum("set",hexc($('.sbTabSelectedColor').css('color')));
	}
});

function compileLess(/*String*/ destination) {
	//read all inputs from form to feed into CSS compiler
	varString = '@sbHeaderBgColor:'+$(".headerColor").spectrum("get").toHexString()+';';
	varString += '@sbHeaderSecondaryBgColor:'+$(".secondaryHeaderColor").spectrum("get").toHexString()+';';
	varString +='@sbHeaderBorderColor:'+$(".headerBorderColor").spectrum("get").toHexString()+';';
	varString +='@sbHeaderFontColor:'+$(".headerFontColor").spectrum("get").toHexString()+';';
	varString +='@sbHeaderSupportFontColor:'+$(".headerSecondaryFontColor").spectrum("get").toHexString()+';';
	varString +='@sbBgColor:'+$(".generalColor").spectrum("get").toHexString()+';';
	varString +='@sbFontColor:'+$(".generalFontColor").spectrum("get").toHexString()+';';
	varString +='@sbDetailBgColor:'+$(".detailColor").spectrum("get").toHexString()+';';
	varString +='@sbSecondaryFontColor:'+$(".generalFontSecondaryColor").spectrum("get").toHexString()+';';
	varString +='@sbBorderColor:'+$(".generalBorderColor").spectrum("get").toHexString()+';';
	varString +='@sbTableHeaderFontColor:'+$(".tableHeaderFontColor").spectrum("get").toHexString()+';';
	varString +='@sbTableRowHoverColor:'+$(".tableRowHoverColor").spectrum("get").toHexString()+';';
	varString +='@sbGroupBtnBgColor:'+$(".groupButtonColor").spectrum("get").toHexString()+';';
	varString +='@sbGroupBtnBorderColor:'+$(".groupButtonBorderColor").spectrum("get").toHexString()+';';
	varString +='@sbGroupBtnFontColor:'+$(".groupButtonFontColor").spectrum("get").toHexString()+';';
	varString +='@sbGroupBtnHoverBgColor:'+$(".groupButtonHoverColor").spectrum("get").toHexString()+';';
	varString +='@sbGroupBtnHoverFontColor:'+$(".groupButtonHoverFontColor").spectrum("get").toHexString()+';';
	varString +='@sbGroupBtnDisabledFontColor:'+$(".groupButtonDisabledFontColor").spectrum("get").toHexString()+';';
	varString +='@sbPrimaryBtnBgColor:'+$(".primaryButtonColor").spectrum("get").toHexString()+';';
	varString +='@sbPrimaryBtnFontColor:'+$(".primaryButtonFontColor").spectrum("get").toHexString()+';';
	varString +='@sbPrimaryBtnHoverBgColor:'+$(".primaryButtonHoverColor").spectrum("get").toHexString()+';';
	varString +='@sbAccentIconColor:'+$(".accentIconFontColor").spectrum("get").toHexString()+';';
	varString +='@sbAccentIconHoverColor:'+$(".accentIconHoverFontColor").spectrum("get").toHexString()+';';
	varString +='@sbAccentIconDisabledColor:'+$(".accentIconDisabledFontColor").spectrum("get").toHexString()+';';
	varString +='@sbIconColor:'+$(".iconFontColor").spectrum("get").toHexString()+';';
	varString +='@sbTabSelectedColor:'+$(".tabSelectedColor").spectrum("get").toHexString()+';';
	varString +='@sbHideIcons:'
	varString += ($(".hideIcons")[0].checked) ? 'none;' : 'block;';
	//Read LESS code read from the content of a div hidden on the page
	cssString = varString + $('#themeLess').text();
	compileString = '';
	//compile CSS via less.render
	less.render( cssString,{sync: true},function( e, output ) {
	    if(e){console.log(e);}
	    compileString = output.css;
		if(destination == "preview"){
		    $('.themePage style').html(compileString);
		}
	    if(destination == "publish"){
	    	$('.compiledCSS').val(compileString);
	    	//hack to call apex:button to call class to submit form since there's no way toget around less.render being asynchronous
	    	$('.hiddenPublish').click();
	    };
	    console.log("test");
    });
}

//reload page to reset values set on the form
function revert(){
	location.reload();
}