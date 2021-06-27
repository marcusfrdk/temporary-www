<script lang="typescript">
    export let lang:string;
    import { LottiePlayer } from '@lottiefiles/svelte-lottie-player';
    import * as translations from './translations.json';	
    import * as waiting from './waiting.json';
</script>

<div id="landing-wrapper">
	<div id="landing">
		<LottiePlayer
			src="{waiting}"
			autoplay="{true}"
			loop="{true}"
			controls="{false}"
			renderer="svg"
			background="transparent"
			height="{256}"
			width="{256}"
			controlsLayout="playpause"
		/>
		<h2>{translations[lang].h2}</h2>
		<p>{translations[lang].release}</p>
	</div>
</div>

<style>
	#landing-wrapper {
		height: 100vh;
		width: 100vw;
	}

	#landing {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		text-align: center;
		position: absolute;
		top: 52.5%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 90vw;
	}

	h2 {
        margin: .5rem 0;
	}
</style>