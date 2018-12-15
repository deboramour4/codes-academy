//: [Previous - The Structure of an App](@previous)
/*:
 ### O Loop Principal - The Main Run Loop

 A maior parte do tempo em que um aplicativo está sendo executado, não está fazendo nada. Na verdade, ele está esperando uma entrada. Assim que um usuário tocar na tela, um evento é acionado. O objeto UIApplication configura o Loop Principal (Main Run Loop - MRL) no momento do lançamento e usa-o para processar eventos e manipular atualizações para interfaces baseadas em views. O MRL é executado no thread principal do aplicativo.
*/
/*:
 - important: Por favor, preste atenção à próxima figura obtida de [Apple developer documentation.](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/event_draw_cycle_a_2x.png) Ele mostra a arquitetura do loop de execução principal e como os eventos de usuário resultam em ações tomadas pelo seu aplicativo.
 */
//:  ![Processing events in the main run loop]( event_draw_cycle_a_2x.png "Processando eventos no loop de execução principal")
/*:
 * callout(Sistema Operacional): É quem primeiro recebe o evento e tomar a decisão sobre o que precisa ser feito. Todos os eventos de toque recebidos por um aplicativo do iOS são processados na ordem em que foram recebidos. Um evento de toque normalmente é despachado para o objeto da janela principal, que por sua vez o despacha para a visualização em que ocorreu o toque. Os eventos podem ter caminhos ligeiramente diferentes através de vários objectos de aplicações. Muitos desses tipos de eventos são entregues usando o loop de execução principal de seu aplicativo, mas alguns não. Alguns eventos são enviados para um objeto delegado ou são passados para um bloco de código (blocks) que você fornece.
*/
/*:
 * callout(Touch events): São entregues ao objeto de exibição ou controle no qual o evento ocorreu, por exemplo, um botão de toque.
*/
/*:
 * callout(Remote control): São eventos gerados por fones de ouvido e outros acessórios e os eventos de movimento Shake são entregues ao objeto do first responder que são classes que herdam do UIResponder. Essas classes declaram uma interface para manipulação de eventos e definem um comportamento padrão para respondedores.
 */
/*:
 * callout(Acelerômetro, magnetômetro, giroscópio, localização - GPS): são despachados para o objeto desigando pelo programador.
*/
/*:
 * callout(Redraw events): Não envolvem um objeto de evento, mas são simplesmente chamadas para uma view de desenhar a si mesma.
 */
/*:
 Se for necessário tomar muito tempo para executar um código complexo com uso intensivo da CPU, o resto na fila de eventos não será tratado até que o código complexo seja concluído. Nesse tipo de cenário, você pode querer considerar usar um thread separado (fora de MRL) para fazer o processamento.
 
 
*/

//: [Próximo - Estados de Execução de um App](@next)
