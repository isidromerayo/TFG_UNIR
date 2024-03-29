import { TOKEN, USER } from '../utils/constants'

type Nullable<T> = T | undefined | null;

export function setToken(token: string):void {
    localStorage.setItem(TOKEN, token)
}
export  function getToken():Nullable<string> {
    return localStorage.getItem(TOKEN);
}
export function removeToken():void {
    localStorage.removeItem(TOKEN);
}

export function setUser(user: string):void {
    localStorage.setItem(USER, user)
}
export  function getUser():string {
    const usrTmp = localStorage.getItem(USER);
    if ( usrTmp === undefined || usrTmp === null) {
        return '';
    }
    return usrTmp;
}
export function removeUser():void {
    localStorage.removeItem(USER);
}