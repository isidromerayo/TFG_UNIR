import { UsuarioAuth } from './usuario-auth';

const username: string = 'dummy';
const token: string = 'dummy-token';
const fullname: string = 'dummy 1234';
const id: number = 1;

describe('UsuarioAuth', () => {
  it('should create an instance', () => {
    expect(new UsuarioAuth(username,token,fullname,id)).toBeTruthy();
  });
});
