<script lang="typescript">
    import * as translations from './translations.json';
    export let lang:string;
</script>

<a href="https://twitter.com/marcusfrdk" rel="noreferrer"><div>{translations[lang].notification}</div></a>

<style>
    div {
        padding: 1rem 2rem;
        width: 100vw;
        background-color: var(--blue);
        color: #FFFFFF;
        position: absolute;
        top: 0;
        left: 0;
        text-align: center;
        cursor: pointer;
        transition: background-color 256ms ease;
    }

    div:hover {
        background-color: var(--blue-hover);
    }

    @media only screen and (max-width: 512px){
        div {
            font-size: 0.875rem;
        }
    }
</style>