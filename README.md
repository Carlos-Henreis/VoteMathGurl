# VoteMathGurl
Tudo pelo bem da Matemática!

## O que é necessário

* **Instalar Ruby**
  * Acesse a documentação do Ruby por [aqui](https://www.ruby-lang.org/pt/documentation/installation/)

* **instalar ChromeDriver:**
  * Baixe a última versão do chromedriver por [aqui](http://chromedriver.storage.googleapis.com/index.html?path=2.37/) (v2.37)
  * Torne o arquivo que você baixou executável e mova-o para `/usr/local/share`(tudo por linha de comando)
    * `chmod +x ~/Downloads/chromedriver`
    * `sudo mv -f ~/Downloads/chromedriver /usr/local/share/chromedriver`
  * Adicionar atalhos para tudo funcionar de forma correta
    * `sudo ln -s /usr/local/share/chromedriver /usr/local/bin/chromedriver`

## Inicilizar a votação infinita teste de sistema:
* `RAILS_ENV=test rake test:system`
