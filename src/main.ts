import { NestFactory } from '@nestjs/core';
import { Module } from '@nestjs/common';

class HelloService {
  hello() {
    console.log('Hello World!');
  }
}

@Module({ providers: [HelloService] })
class AppModule {}
const app = await NestFactory.createApplicationContext(AppModule);

const helloService = app.get(HelloService);

helloService.hello();