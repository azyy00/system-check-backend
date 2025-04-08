import cors from 'cors';

const corsOptions = {
    origin: [
        'http://localhost:3000',
        'http://localhost:3001',
        'https://system-check-kj7o.vercel.app',
        'https://system-check-kj7o-git-main-antmans-projects-0c115cbb.vercel.app',
        'https://system-check-git-main-antmans-projects-0c115cbb.vercel.app',
        'https://system-check.vercel.app'
    ],
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization', 'expires', 'pragma', 'cache-control'],
    optionsSuccessStatus: 200
};

export default cors(corsOptions); 