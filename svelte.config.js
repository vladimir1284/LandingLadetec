import adapter from '@sveltejs/adapter-static';
const dev = "production" === "development";
import { vitePreprocess } from '@sveltejs/kit/vite';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://kit.svelte.dev/docs/integrations#preprocessors
	// for more information about preprocessors
	preprocess: vitePreprocess(),

	kit: {
		prerender: {
			handleMissingId: 'warn'
		},
		adapter: adapter({
			pages: '',
			assets: '',
			fallback: null,
			precompress: false,
			strict: true
		}),
		paths: {
			base: dev ? '' : '',
		}
	}
};

export default config;
