import { serve } from 'https://deno.land/std/http/server.ts';

const server = serve({ port: 3000 });

for await (const req of server) {
    const userAgent = req.headers.get('user-agent');
    console.log('Listening on port 3000')
    const body = "<h1> Hello from a simple deno server </h1>" +
        "<p> your browser is: </p>" + userAgent;
    req.respond({ body });
}
