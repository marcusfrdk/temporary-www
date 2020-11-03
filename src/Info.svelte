<script lang="typescript">
    import * as translations from './translations.json';
    import SplitPage from './SplitPage.svelte';
    export let lang:string;

    import * as test from './test.json';
    import * as amongus from './amongus.json';
</script>

<div>
    <h2 id="title-introduction">{translations[lang].introduction.title}</h2>
    <SplitPage title={translations[lang].introduction.titleOne} rtl={false} animation={test} text={translations[lang].introduction.textOne}/>
    <SplitPage title={translations[lang].introduction.titleTwo} rtl animation={amongus} text={translations[lang].introduction.textTwo}/>
    <SplitPage title={translations[lang].introduction.titleThree} rtl={false} animation={test} text={translations[lang].introduction.textThree}/>
    <a id="author-of-animation" href="https://lottiefiles.com/dm.rogozniy" rel="noreferrer">{translations[lang].animation}</a>
</div>

<style>
    div {
        position: relative;
    }

    #title-introduction {
        margin-bottom: 2rem;
        text-align: center;
    }

    #author-of-animation {
		position: absolute;
		bottom: 1rem;
		left: 50%;
		transform: translateX(-50%);
		color: var(--muted);
		font-size: .675rem;
	}

	#author-of-animation:hover {
		color: var(--blue);
	}
</style>