package tk.thinkerzhangyan.ipcserver;

interface ISecurityCenter {
    String encrypt(String content);
    String decrypt(String password);
}