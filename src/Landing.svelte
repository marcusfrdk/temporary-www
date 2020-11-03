<script lang="typescript">
    export let lang:string;
    import { LottiePlayer } from '@lottiefiles/svelte-lottie-player';
    import * as translations from './translations.json';	
    import * as waiting from './waiting.json';
</script>

<div>
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

<style>
	div {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		text-align: center;
		height: 100vh;
		width: 100vw;
	}

	h2 {
        margin: .5rem 0;
	}
</style>