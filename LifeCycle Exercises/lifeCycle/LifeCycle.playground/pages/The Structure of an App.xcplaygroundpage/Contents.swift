//: [Anterior - Introdução](@previous)

/*:
 ### A Estrutura de um App
 
 É muito importante observar que os aplicativos iOS usam uma arquitetura model-view-controller. Uma excelente explicação sobre o padrão de projeto modelo-view-controller pode ser encontrada em [Apple Guides and Sample Code.](https://developer.apple.com/library/content/documentation/General/Conceptual/CocoaEncyclopedia/Model-View-Controller/Model-View-Controller.html)
 
 A lógica de dados e de negócios é separada da interface do usuário. Por isso, é fornecido um ambiente adequado para criar aplicativos que podem ser executados em diferentes dispositivos com diferentes tamanhos de tela.
*/

/*:
 - important: Por favor, preste atenção à próxima figura obtida de[Apple developer documentation.](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Art/core_objects_2x.png)
 */

//:  ![Objetos Chaves em um App iOS]( core_objects_2x.png "Key objects in an iOS app")

/*:
 * callout(UIApplication objects): Gerencia o ciclo de eventos e os comportamentos de aplicativos de alto nível. Ele também envia dados sobre eventos especiais para delegates personalizados pelo programador, por exemplo, push notifications.
*/

/*:
 * callout(The Application Delegate - app delegate): Funciona com o objeto UIApplication para lidar com a inicialização do aplicativo, transições de estado e muitos eventos de alto nível. É frequentemente utilizado para configurar as estruturas de dados iniciais do aplicativo.
 */

/*:
 * callout(Data model objects and documents): Armazenar conteúdos específicos do seu aplicativo, por exemplo, bancos de dados, um objeto de imagem ou qualquer dado de usuário. É possível usar subclasses personalizadas do UIDocument para gerenciar objetos de modelo de dados.
 */

/*:
 * callout(Views and controls): Fornecer a representação visual do conteúdo da sua aplicação. Uma view é um objeto que desenha conteúdo em uma área retangular designada e responde a eventos nessa área. Os controles são um tipo especializado de view responsável pela implementação de objetos de interface, tais como, buttons, text fields, and toggle switches.
 */

/*:
 * callout(View controller objects): Gerencia a apresentação do conteúdo da sua aplicação na tela. O papel mais importante de um view controller é gerenciar interfaces de sistema padrão (visualizações), tais como, image picker, tab bar interface, and navigation interface. O view controller torna suas views visíveis instalando-as na janela do aplicativo. A classe UIViewController fornece a funcionalidade padrão para carregar views, apresentá-las, executá-las em resposta a rotações de dispositivos e vários outros comportamentos padrões do sistema.
 
 */


/*:
 * callout(UIWindow objects): Coordena a apresentação de views em uma tela. A maioria dos aplicativos tem apenas uma janela, que apresenta conteúdo na tela principal, mas os aplicativos podem ter uma janela adicional para o conteúdo exibido em uma tela externa.
 
 */

/*:
 - Note: 
 É importante entender cada função de cada objeto na arquitetura model-view-controller porque o Ciclo de Vida de um App é feito pelas interações entre esses objetos.
 */


//: [Próximo - o Loop Principal (The Main Run Loop)](@next)
