## ❗ Cara Pasang

- Salin folder `cloud-recoil` ke direktori resources server FiveM kamu.
- Tambahkan ke `server.cfg`:
  ```bash
  ensure cloud-recoil
  ```

## 🔧 Konfigurasi

- Cari nama weapon :
  ```bash
  https://wiki.rage.mp/wiki/Weapons
  ``` 
1. Buka file `client.lua` dan cari bagian:
   ```bash
   Config.Recoil = {
    [GetHashKey("weapon_minismg")] = 2.0,
   }
   ```
2. Ubah nilai recoil (contoh: 1.0, 2.5, dll)

## 🚀 Preview

![Preview](https://cdn.discordapp.com/attachments/1157215462225084428/1375769092434169906/2025-05-24_16-24-58.mp4?ex=68382a50&is=6836d8d0&hm=335499c43a5c5a19101bcde668880a49fed2c210b1a0b4c5e8dce91258ed5fa9&)

## 🧑‍💻 Author

[Cloud](https://github.com/Comethruuu)
