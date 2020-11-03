<script lang="ts">
	import * as translations from './translations.json';	
	import Notification from './Notification.svelte';
	import Landing from './Landing.svelte';
	import Info from './Info.svelte';
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
<Landing lang={lang}/>
<Info lang={lang}/>
