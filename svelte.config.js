import adapter from '@sveltejs/adapter-static';

const dev = process.argv.includes('dev');

/** @type {import('@sveltejs/kit').Config} */
const config = {
	kit: {
		adapter: adapter(),
        paths: {
            assets: dev ? '' : 'https://ladetec.github.io/build',
        },
		appDir: 'internal'
	}
};

export default config;
