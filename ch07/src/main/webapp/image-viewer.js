var imageViewer = {
	_images : [
		{
			name: "국화",
			file: "Chrysanthemum.jpg"
		}, {
			name: "사막",
			file: "Desert.jpg"
		}, {
			name: "수국",
			file: "Hydrangeas.jpg"
		}, {
			name: "해파리",
			file: "Jellyfish.jpg"
		}, {
			name: "코알라",
			file: "Koala.jpg"
		}, {
			name: "등대",
			file: "Lighthouse.jpg"
		}, {
			name: "펭귄",
			file: "Penguins.jpg"
		}, {
			name: "툴립",
			file: "Tulips.jpg"
		}],
	
	_changeImage: function() {
		var index = Math.floor(Math.random() * this._images.length);
		$(".image-viewer img").attr({
			alt: this._images[index].name,
			src: "images/" + this._images[index].file
		})
	},
		
	init: function() {
		console.log(this);
		$(function() {
			var slideshow = false;
			$("#btn-change").click(this._changeImage.bind(this));
			
			$("img").click(this._changeImage.bind(this));
		
			$("#btn-slideshow").click(function() {
				slideshow = !slideshow;
				$("#btn-slideshow").text('슬라이드쇼 중단');
				
				if(!slideshow) {
					$("#btn-slideshow").text('슬라이드쇼 시작');
					clearInterval(interval);
				} else {
					interval = setInterval(this._changeImage.bind(this), 1000);
				}
		
			}.bind(this));
		}.bind(this));
	}
}