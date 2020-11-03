<script lang="typescript">
    import * as translations from './translations.json';
    import SplitPage from './SplitPage.svelte';
    export let lang:string;

    import * as programmer from './programming.json';
    import * as test from './test.json';
    import * as phone from './phone.json';

    console.log(window.location)
</script>

<div>
    <h2 id="title-introduction">{translations[lang].introduction.title}</h2>
    <SplitPage 
        title={translations[lang].introduction.titleOne}
        rtl={false}
        animation={programmer}
        text={translations[lang].introduction.textOne}
    />

    <SplitPage 
        title={translations[lang].introduction.titleTwo} 
        rtl
        animation={phone} 
        text={translations[lang].introduction.textTwo}
    />

    <SplitPage 
        title={translations[lang].introduction.titleThree} 
        rtl={false}
        animation={test}
        text={translations[lang].introduction.textThree}
    />

    <div id="lower">
        <a href="mailto:marcus@marcusfredriksson.com"><button>{translations[lang].contact}</button></a>
        <a id="author-of-animation" href={`${window.location.href.split("?")[0]}animations.txt`} rel="noreferrer">{translations[lang].animation}</a>
    </div>
</div>

<style>
    div {
        position: relative;
    }

    #title-introduction {
        margin-bottom: 2rem;
        text-align: center;
    }

    #lower {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    #author-of-animation {
		position: relative;
		color: var(--muted);
		font-size: .675rem;
        margin-bottom: 2rem;
	}

	#author-of-animation:hover {
		color: var(--blue);
	}

    button {
        padding: 1rem 4rem;
        outline: 0;
        border: 0;
        background-color: var(--blue);
        border-radius: 4px;
        color: #FFFFFF;
        font-size: 1.125rem;
        cursor: pointer;
        transition: background-color 128ms ease;
        margin-bottom: 2rem;
        user-select: none;
        width: fit-content;
    }

    button:hover {
        background-color: var(--blue-hover);
    }
    
    @media only screen and (max-width: 512px){
        button {
            width: 90vw !important;
            padding: 1rem 0;
        }
    }
</style>