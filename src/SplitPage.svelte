<script type="typescript">
    import { LottiePlayer } from '@lottiefiles/svelte-lottie-player';

    export let title:string;
    export let text:string;
    export let animation:any;
    export let rtl:boolean;
</script>

<div class={rtl ? 'rtl' : 'ltr'}>
    <div class="text">
        <h2>{title}</h2>
        <p>{text}</p>
    </div>
    <div class="animation">
        <LottiePlayer
            src="{animation}"
            autoplay="{true}"
            loop="{true}"
            controls="{false}"
            renderer="svg"
            background="transparent"
            height="auto"
            width="auto"
            controlsLayout="playpause"
        />
    </div>
</div>

<style>
    .rtl, .ltr {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        padding: 0 5vw;
        margin-bottom: 2rem;
    }

    .text {
        display: flex;
        position: relative;
        flex-direction: column;
        width: 60%;
    }

    .text h2 {
        font-size: 1.75rem;
        margin-bottom: .5rem;
    }

    .text p {
        font-size: 1.125rem;
        line-height: 1.4rem;
    }

    .animation {
        width: 35%;
    }

    div.rtl {
        flex-direction: row-reverse;
    }
    
    @media only screen and (max-width: 512px){        
        .ltr, .rtl {flex-direction: column-reverse !important; margin-bottom: 4rem;}

        .text {
            width: 90vw;
        }
        
        .animation {
            margin-bottom: 2rem;
            width: 75% !important;
        }
    }
    
    @media only screen and (max-width: 1024px) and (min-width: 513px){        
        .ltr, .rtl {flex-direction: column-reverse !important; margin-bottom: 4rem;}
        
        .text {
            width: 75vw;
        }
        
        .animation {
            margin-bottom: 1rem;
            width: 40% !important;
        }
    }


</style>