import express, { Express, Request, Response , Application } from 'express';
import dotenv from 'dotenv';

//For env File 
dotenv.config();

const app: Application = express();
const port = process.env.PORT || 8210;

app.get('/', (req: Request, res: Response) => {
  res.send('Nirmal Savinda - 25990090');
});

app.listen(port, () => {
  console.log(`Server is Fire at http://localhost:${port}`);
});
