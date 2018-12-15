//: [Anterior - O Loop Principal - The Main Run Loop](@previous)
/*:
 ### Estados de Execução de um App

 Um App pode estar em um dos segintes estados: Not running, Inactive, Active, Background, Suspended. Figura obtida de [Apple developer documentation](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/high_level_flow_2x.png) Mostra os caminhos que um App toma ao passar de um estado para outro.
*/
//: !["State changes in an iOS app"](high_level_flow_2x.png "Mudança de estados de um App iOS")
/*:
 * callout(Not Running):  O aplicativo não foi iniciado ou estava em execução, mas foi encerrado pelo sistema.
*/
/*:
 * callout(Inactive): O aplicativo está sendo executado em foreground, mas não está recebendo eventos. Está realmente em execução, mas está executando outras funções e não está pronto para aceitar entrada de usuário ou eventos. Um App geralmente permanece neste estado brevemente e transita para um estado diferente.
*/
/*:
 * callout(Active): O aplicativo está sendo executado em foreground e está recebendo eventos. Este é o modo normal para Apps em foreground.
 
 
*/
/*:
 * callout(Background): Um aplicativo atinge esse estado quando sua interface com o usuário não está visível, mas ele está executando código. A maioria dos aplicativos entra neste estado brevemente antes de serem suspensos. Um aplicativo pode solicitar tempo de execução extra nesse estado. Alguns aplicativos são executados em background e não entram em estados inativos.
*/
/*:
 * callout(Suspended): O sistema iOS pode mover um App para um estado de Suspenso (Suspended) e não notificar o App antes de fazê-lo. Nesse caso, o App está em background, mas não está executando o código. Quando ocorre uma condição de pouca memória, o sistema pode limpar aplicativos suspensos.
 
 
   
*/
/*:
 - important:
 Existem métodos para responder às mudanças de estado de forma apropriada. Esses métodos acrescentam uma chamada aos métodos do objeto delegate do App. Eles estão listados abaixo.
*/
/*:
 * callout(application:willFinishLaunchingWithOptions):Use esse método para inicializar seu aplicativo e prepará-lo para ser executado. O processo de execução já começou, mas a restauração do estado da interface do usuário ainda não ocorreu totalmente.
 */

/*:
 * callout(application:didFinishLaunchingWithOptions): Use esse método para concluir a inicialização do aplicativo e fazer os ajustes finais. Esse método é chamado após a restauração do estado ter ocorrido totalmente, mas antes que a janela do aplicativo e outra interface do usuário tenham sido apresentadas.
*/

/*:
 * callout(applicationDidBecomeActive): Use esse método para reiniciar as tarefas que foram pausadas (ou ainda não iniciadas) enquanto o App estava inativo. Por exemplo, se o usuário optar por ignorar uma chamada telefônica recebida ou uma mensagem SMS, este método será executado. Assim, este método é chamado para que seu App saiba que ele foi movido do estado inativo para o ativo.
*/
/*:
 * callout(applicationWillResignActive): Esse método é chamado para que seu aplicativo saiba que ele foi movido do estado inativo para o ativo. Isso pode ocorrer porque seu aplicativo foi iniciado pelo usuário ou pelo sistema. Os aplicativos também podem retornar ao estado ativo se o usuário optar por ignorar uma interrupção (como uma chamada telefônica ou uma mensagem SMS recebida) que enviou o aplicativo temporariamente para o estado inativo.
*/
/*:
 * callout(applicationDidEnterBackground): Permite que você saiba o quê seu aplicativo está executado em background e pode ser suspenso a qualquer momento. Use esse método para liberar recursos compartilhados, invalidar temporizadores (timers) e armazenar informações de estado do App suficientes para restaurar o App para seu estado atual caso seja encerrado mais tarde. Você também deve desabilitar atualizações para a interface do usuário do aplicativo e evitar usar alguns tipos de recursos do sistema compartilhados (como o banco de dados de contatos do usuário). Também é imperativo que você evite usar OpenGL ES em background.
*/
/*:
 * callout(applicationWillEnterForeground): Informa ao delegate que o aplicativo está prestes a entrar em foreground. Você pode usar esse método para desfazer muitas das alterações feitas em seu App após ter entrado em background.
*/
/*:
 * callout(applicationWillTerminate): Esse método permite que seu aplicativo saiba que ele está prestes a ser encerrado e removido completamente da memória. Você deve usar esse método para executar tarefas de limpeza final para seu aplicativo, como liberar recursos compartilhados, salvar dados do usuário e invalidar temporizadores. A implementação deste método tem aproximadamente cinco segundos para executar qualquer tarefa. Se este método não retornar (return) antes do tempo expirar, o sistema pode matar o processo completamente.
*/


/*:
 * Important:
 Por favor, vá para o arquivo AppDelegate.swift e preste atenção aos métodos UIApplicationDelegate. Veja que em cada um foi colocado um funçã de impressão (print) :
    - (A) application:willFinishLaunchingWithOptions
    - (B) application:didFinishLaunchingWithOptions
    - (C) applicationWillResignActive
    - (D) applicationDidEnterBackground
    - (E) applicationWillEnterForeground
    - (F) applicationDidBecomeActive
    - (G) applicationWillTerminate
*/
 
 
/*:
 * Experiment: Você poderia citar qual a seqüência de nomes de métodos vai executada antes que a view deste projeto seja mostrada na tela? Preencha o array de strings "methodSequence1" do código abaixo com a sequencia de execução dos métodos necessários a esta tarefa.
  
      OBS. 1 Use apenas os nomes dos métodos igual à lista acima.
  
      OBS. 2 Execute o projeto se for necessário para ver a resposta.
*/
import Foundation

var methodSequence1 = [
        "application:willFinishLaunchingWithOptions",
        "application:didFinishLaunchingWithOptions",
        "applicationDidBecomeActive"]


if methodSequence1==realMethodSequence1 {
    print ("Muito Bom!")
} else {
    print ("Tente um pouco mais!")
}

/*:
 * Important: Perceba qual a seqüência de execução dos métodos na vida de um App.
*/

/*:
 * Experiment: Da mesma maneira, Você poderia associar a sequência dos nomes de métodos no array de strings methodSequence2 no código abaixo? Considere:
 
    1. A primeira vez que o App apareceu na tela após uma execução e
    2. O app entrou em background.
 
    OBS. Para ver o resultado:
    1. Execute o projeto e
    2. Digite command+shift+H no simulador ou pressione o botão de home (se você estiver usando um dispositivo).
 */

var methodSequence2 = [
    "application:willFinishLaunchingWithOptions",
    "application:didFinishLaunchingWithOptions",
    "applicationDidBecomeActive",
    "applicationWillResignActive",
    "applicationDidEnterBackground"]

if methodSequence2==realMethodSequence2 {
    print ("Muito Bom!")
} else {
    print ("Tente um pouco mais!")
}

/*:
 * Experiment: Para finalizar, você poderia atribuir a seqüência dos nomes dos métodos no Array de Strings chamado methodSequence2 no código abaixo? Considerar:
 
      1. A primeira view deste projeto já foi mostrada na tela;
      2. Coloque o aplicativo em background  e
      3. Coloque o aplicativo em foreground novamente.
  
      OBS. Para ver o resultado, você pode
      1.  executar o projeto;
      2.  digite command + shift + H no simulador ou pressione o
          botão home (se você estiver usando um dispositivo) e
      3.  clique no ícone do aplicativo do projeto para exibir o
          aplicativo novamente.
 */

var methodSequence3 = [
    "application:willFinishLaunchingWithOptions",
    "application:didFinishLaunchingWithOptions",
    "applicationDidBecomeActive",
    "applicationWillResignActive",
    "applicationDidEnterBackground",
    "applicationWillEnterForeground",
    "applicationDidBecomeActive"
]


if methodSequence3==realMethodSequence3 {
    print ("Muito Bom!")
} else {
    print ("Tente um pouco mais!")
}

//: [Próximo - Finalização de Apps](@next)
