import App from './App.svelte';

const app = new App({
	target: document.body,
	props: {
		lang: 'en',
		theme: 'light'
	}
});

export default app;