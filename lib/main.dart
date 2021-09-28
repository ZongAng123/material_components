import 'package:flutter/material.dart';

// Using Material Components 使用 Material 组件
/**
 * Flutter 提供了许多 widget，可帮助你构建遵循 Material Design 的应用。 
 * Material 应用以 MaterialApp widget 开始，它在你的应用的底层下构建了许多有用的 widget。
 * 这其中包括 Navigator，它管理由字符串标识的 widget 栈，也称为“routes”。 
 * Navigator 可以让你在应用的页面中平滑的切换。使用 MaterialApp widget 不是必须的，但这是一个很好的做法。
 * */

void main() {
  // runApp(const MyApp());
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(),
    ),
  );
}

// class TutorialHome extends StatelessWidget {
//   const TutorialHome({Key? key}) :super(key: key)

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         leading: const IconButton(
//           onPressed: null,
//           icon: Icon(Icons.menu),
//           tooltip: 'Navigation menu',
//           ),
//           title: const Text('Example title'),
//           actions: const[
//             IconButton(
//               onPressed: null,
//               icon: Icon(Icons.search),
//               tooltip: 'Search',
//             ),
//           ],
//       ),
//       body: const Center(
//         child: Text('Hello, world!'),
//       ),
//       floatingActionButton: const FloatingActionButton(
//         onPressed: null,
//         tooltip: 'Add', // used by assistive technologies
//         child: Icon(Icons.add),
//         ),
//     );
//   }
// }

class TutorialHome extends StatelessWidget {
  const TutorialHome({Key? key}) : super(key: key);
/**
 * @override只是指出该函数也是在祖先类中定义的,但是被重新定义为在当前类中执行其他操作.
 * 它还用于注释抽象方法的实现.它是可选的,但建议使用,因为它提高了可读性.
 * 注释@override将实例成员标记为覆盖具有相同名称的超类成员.
 * JavaScript也支持@override作为注释,但它必须在注释中.http://usejsdoc.org/tags-override.html.
 * */
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for 脚手架是一种建筑布局
    // the major Material Components.主要材料成分。
    /**
     * 现在我们已经从 MyAppBar 和 MyScaffold 切换到了 material.dart 中的 AppBar 和 Scaffold widget，我们的应用更“Material”了一些。
     * 例如，标题栏有了阴影，标题文本会自动继承正确的样式，此外还添加了一个浮动操作按钮。
     * */
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen. 主体是屏幕的主体。
      body: const Center(
        child: Text('Hello, world!'),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies 由辅助技术使用
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

/**
 * 注意，widget 作为参数传递给了另外的 widget。 Scaffold widget 将许多不同的 widget 作为命名参数，每个 widget 都放在了 Scofford 布局中的合适位置。
 * 同样的，AppBar widget 允许我们给 leading、title widget 的 actions 传递 widget。这种模式在整个框架会中重复出现，在设计自己的 widget 时可以考虑这种模式。
 * */ 

/**
 * Material 是 Flutter 中两个自带的设计之一，如果想要以 iOS 为主的设计，可以参考 Cupertino components，
 * 它有自己版本的 CupertinoApp 和 CupertinoNavigationBar。
 * 
 * */  