tool-bar(style="height:{ height }px")
	div.line
	tool-icon(
		iname="texture"
		icon="/images/tool-icon/texture.png"
		licon="/images/tool-icon/texture_l.png"
	)
	tool-icon(
		iname="parameter"
		icon="/images/tool-icon/param.png"
		licon="/images/tool-icon/param_l.png"
	)

	style(scoped).
		:scope {
			position: absolute;
			top: 0px;
			right: 0px;
			display: block;
			background-color: #eee;
			width: 40px;
		}
		:scope .line {
			position: absolute;
			top: 0;
			left: 19.5px;
			width: 1px;
			height: 100%;
			background-color: #ccc;
		}

	script(type="coffee").

		# mount ---------------------------------------------
		@on 'mount', ->
			@height = parseInt opts.height - 71
			@update()

		# resize --------------------------------------------
		observer.on 'resize', (params) =>
			@height = params.height - 112
			@update()