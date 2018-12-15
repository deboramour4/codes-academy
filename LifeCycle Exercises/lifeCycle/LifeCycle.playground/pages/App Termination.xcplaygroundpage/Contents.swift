//: [Anterior - Estados de Execução de um App](@previous)
/*:
 ### Finalização de Apps

 É normal que o iOS inicie a finalização (término de execução) de um App. Às vezes, o iOS encerra aplicativos para liberar memória e criar condições para outros aplicativos serem executados. Outras razões são aplicativos que se comportam mal ou aplicativos que não respondem a eventos em um horário aceitável. Portanto, é necessário que os aplicativos devam estar preparados para que o término ocorra a qualquer momento e não devem esperar para salvar dados do usuário ou executar outras tarefas críticas.
 
 O usuário pode encerrar seu aplicativo explicitamente usando a interface de usuário multitarefa. O término de execução iniciado pelo usuário tem o mesmo efeito que encerrar um aplicativo suspenso. O processo da aplicação é eliminado e nenhuma notificação é enviada para a aplicação.
*/
/*:
 - Note:
 If an app is currently running in the background and not suspended, the system calls the applicationWillTerminate: of its app delegate before termination.
*/
/*:
 - Note:
 Os aplicativos suspensos não recebem notificação quando são encerrados; O sistema mata o processo e recupera a memória correspondente.
*/
/*:
 * Experiment: Para ver um caso de uso da execução do método applicationWillTerminate faça:
 
    1. executar o projeto e
 
    2. Dê um duplo Tap de comando + shift + H no simulador ou duplo tap no botão home (se você estiver usando um dispositivo)
 
    3. de um swipe no app lifeCycle de exemplo para interromper a execução do mesmo.
 */


import Foundation

var methodSequence4 = [
    "application:willFinishLaunchingWithOptions",
    "application:didFinishLaunchingWithOptions",
    "applicationDidBecomeActive",
    "applicationWillResignActive",
    "applicationWillTerminate"]


if methodSequence4==realMethodSequence4 {
    print ("Muito Bom!")
} else {
    print ("Você precisa de um pouquinho mais de trabalho!")
}

//: [Próximo - Threads e Conocorrência](@next)
