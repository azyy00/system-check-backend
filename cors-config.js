import cors from 'cors';

const corsOptions = {
    origin: '*',  // Allow all origins temporarily
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization', 'expires', 'pragma', 'cache-control']
};

export default cors(corsOptions); 