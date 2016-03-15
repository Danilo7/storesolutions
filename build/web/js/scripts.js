$(document).ready(function(){
	
	// ======== Effect hover menu =======
	$('#nav .item').hover(function(){
		$(this).find('.submenu').slideDown('fast',function(){
			$(this).stop();
		});
	},function(){
		$(this).find('.submenu').slideUp('fast',function(){
			$(this).stop();
		});
	});
	// ======== End Effect hover menu =======

	// ======= Active item menu =======
	var pageIndex 	  		= $('.page-index').length;
	var pageServicos		= $('.page-servicos').length;
	var pageQuemSomos 		= $('.page-quem-somos').length;
	var pageContacts  		= $('.page-contacts').length;
	var pageDataContacts            = $('.page-contacts').length;
        var pageProductList             = $('.page-product-list').length;
	
	if(pageIndex == 1){
		$('#nav li.item:eq(0)').css('background-color','gray');
	}
	else if(pageProductList == 1){
		$('#nav li.item:eq(1)').css('background-color','gray');
	}
	else if(pageServicos == 1){
		$('#nav li.item:eq(2)').css('background-color','gray');
	}
	else if(pageQuemSomos == 1){
		$('#nav li.item:eq(3)').css('background-color','gray');
	}
	else if(pageContacts == 1){
		$('#nav li.item:eq(4)').css('background-color','gray');
	}
	else if(pageDataContacts == 1){
		$('#nav li.item:eq(4)').css('background-color','gray');
	}        
	// ======= End Active Item Menu =======
	
	//======= Validate Form Contacts =======
	$('.required').hide();
	
	$('.form input[type="text"]').focus(function(){
		$(this).css('color','#000');
		$(this).val('');
		$('.required').hide('fast');
	});	
	
	$('.form .button').click(function(){	
		var subject = $('.form input[type="text"]:eq(0)').val();
		var name 	= $('.form input[type="text"]:eq(1)').val();
		var email 	= $('.form input[type="text"]:eq(2)').val();
		var phone 	= $('.form input[type="text"]:eq(3)').val();
		var message = $('.form textarea').val();
		
		if(name == 'Seu nome' || name.length <= 0){
			$('.required').show('fast');
			$('.button').css('margin-top','10px');
			return false;
		}else if(email == 'Seu email' || email.length <= 0){
			$('.required').show('fast');
			$('.button').css('margin-top','10px');
			return false;
		}else if(phone == 'Seu telefone' || phone.length <= 0){
			$('.required').show('fast');
			$('.button').css('margin-top','10px');
			return false;
		}else{
			$('#submit_form').submit();
		};
		
	});
	// ======= End Validade Form Contacts =======

	// ======= Effect hover banners home =======
	$(".content-banners-destaques .banner").hover(function(){
		$(this).find('.hover-banner').fadeIn(200, function(){
			$(this).stop().hover();
		});
		$(this).find('.title-destaques').slideDown(300, function(){
			$(this).stop().hover();
		});
	}, 
	function(){
		$(this).find('.title-destaques').slideUp(200);
		$('.hover-banner').fadeOut(300);
	});
	// ======= End Effect hover banners home =======
});

function acessProducts() {
    var adminPass = prompt("Digite a senha de admin");
    if (adminPass == "admin") {
        window.location.href = "http://localhost:47721/storesolutions/faces/product/List.xhtml";
    }else{
        alert("Senha incorreta!");
    }    
}

function submit(){
    $.post(
        "model/checkout.java", 
        {name : 'teste'}, //meaasge you want to send
        function(result) {
        $('body').html('Here is your result : <strong>' + result + '</strong>'); //message you want to show
    });
}