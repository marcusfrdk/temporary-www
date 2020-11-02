<script lang="ts">
	import { LottiePlayer } from '@lottiefiles/svelte-lottie-player';
	import * as waiting from './waiting.json';
	import * as translations from './translations.json';	
	import Notification from './Notification.svelte';
	export let lang:string;

	// Set app lang
	if (/^sv\b/.test(navigator.language)){
		lang = 'sv'
	} else {
		lang = 'en'
	}

	// Modify document
	document.documentElement.lang = lang;
	document.title = translations[lang].title;
	document.querySelector('meta[name=description]').setAttribute('content', translations[lang].description);
</script>

<Notification lang={lang}/>

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

<a id="author-of-animation" href="https://lottiefiles.com/dm.rogozniy" target="_blank" rel="noreferrer">{translations[lang].animation}</a>

<style>
	div {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
		position: fixed;
		top: 47.5%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 90vw;
		text-align: center;
	}

	h2 {
		margin: .5rem 0;
		font-weight: 500;
	}

	#author-of-animation {
		position: fixed;
		bottom: 1rem;
		left: 50%;
		transform: translateX(-50%);
		color: var(--muted);
		font-size: .675rem;
	}

	#author-of-animation:hover {
		color: var(--blue);
	}

	@media only screen and (max-width: 512px){
        h2 {
			font-size: 1.375rem;
		}
		
		div {
            font-size: 0.875rem;
        }
    }
</style>