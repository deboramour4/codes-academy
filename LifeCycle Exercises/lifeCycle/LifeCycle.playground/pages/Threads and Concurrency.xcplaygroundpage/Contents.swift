//: [Anterior - Finalização de Apps](@previous)
/*:
### Threads e Concorrência
 
 O iOS cria aplicativos no thread principal. Você pode criar threads adicionais, conforme necessário, para executar outras tarefas. Certamente, você precisa de um aplicativo com multithread e simultaneidade, se seu aplicativo tiver um dos seguintes recursos:
 
 - Quaisquer tarefas envolvendo acesso à rede, acesso a arquivos ou grandes quantidades de processamento de dados, operações de imagem complexas. Estas são tarefas longas devem sempre ser executadas em uma thread de background.
 
 - No momento do lançamento, seu aplicativo deve usar o tempo disponível para configurar sua interface de usuário o mais rápido possível. Se você tiver outras tarefas de  com demora de execução em potencial, você deve considerar usar uma thread de background.

 Para aplicativos iOS, a técnica preferida para a concorrência é usar o Grand Central Dispatch (GCD), objetos de operação e outras interfaces de programação assíncronas, em vez de criar e gerenciar os próprios threads. Tecnologias, tais como, o GCD permitem que você defina o trabalho que deseja fazer na ordem em que deseja fazê-lo, mas deixe que o sistema decida como executar melhor esse trabalho nas CPUs disponíveis. Permitir que o sistema lide com o gerenciamento de threads simplifica o código que você deve gravar, torna mais fácil garantir a correção desse código e oferece um melhor desempenho geral.
 
*/
/*:
 - Important:
 Para saber mais sobre GCD e Programação Concorrente[clique aqui.] (https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/Introduction/Introduction.html#//apple_ref/doc/uid/TP40008091)
 */


