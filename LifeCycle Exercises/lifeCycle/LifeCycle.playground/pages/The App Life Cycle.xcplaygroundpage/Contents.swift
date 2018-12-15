/*:
 
 # Ciclo de vida de um App
 
 */

/*:
 
 ### Introdução
  
   Quando os desenvolvedores estão programando no iOS, de fato, eles estão usando APIs e Frameworks de alto nível. Podemos entender tais APIs  como tipos de "serviços" fornecidos pelo sistema operacional. Os frameworks de sistema fornecem a infraestrutura necessária para que todos os aplicativos possam executar sua tarefas e os desenvolvedores devem fornecer o código necessário para personalizar essa infraestrutura e dar ao aplicativo uma aparência que atraia usuários.
 
 Portanto, é necessário entender bem a infraestrutura do iOS e como ela funciona. O foco é saber o que está acontecendo dentro de uma execução de código do aplicativo.
 */
/*:
 - Note: Existem dois padrões de design principais para entender as estruturas do iOS: modelo-view-controller e delegation.
 */

/*:
 
 ### A função principal (main)
 
   Anteriormente, nos projetos do Xcode com objective-C, havia a função main para iniciar a execução do aplicativo. Hoje em dia, o arquivo "main.swift" pode conter código de alto nível, e as regras de ordem de execução também são definidas nessa função. De fato, a primeira linha de código a ser executada em "main.swift" é implicitamente definida como o ponto de entrada principal para o programa.
  
   De acordo com [blog do desenvolvedor Apple,](https://developer.apple.com/swift/blog/?id=7) No Xcode, os templates padrões incluiem o arquivo "main.swift". No entanto, para aplicativos iOS, o padrão para novos modelos de projeto iOS é adicionar @UIApplicationMain a um arquivo Swift regular. A tag @UIApplicationMain faz com que o compilador defina o ponto de entrada principal para o seu aplicativo iOS e elimina a necessidade de um arquivo "main.swift".
 */

/*:
 * experiment:
 Em geral, essa marca de anotação é lançada pelo Xcode. Por favor, encontre onde está @UIApplicationMain em algum arquivo de um projeto Xcode padrão.
 
      Você poderia atribuir o nome do arquivo na constante fileName no código abaixo?
 */

import UIKit

let fileName = "AppDelegate.swift"


if  fileName ==  realFileName {
    print ("Muito Bem!")
} else {
    print ("Tente um pouco mais!")
}

/*:
 A função main controla a entrada para framework UIKit. As únicas partes que são necessárias para fornecer são os arquivos de storyboard e o código de inicialização personalizado. A função UIApplicationMain cria os objetos principais de um aplicativo, carregando na interface do usuário do aplicativo os arquivos de storyboard, chamando o código personalizado do programador e colocando o loop de execução do aplicativo em execução.
 */

//: [Próximo - A Estrutura de um App](@next)
