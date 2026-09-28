class Menu {
  final String name;
  final String tooltip;
  final Function? handler;
  final bool separator;

  Menu(this.name,
      [this.handler, this.tooltip = '', this.separator = false]);
}
