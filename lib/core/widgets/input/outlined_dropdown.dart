import 'package:atwoz_app/core/theme/app_colors.dart';
import 'package:atwoz_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';

typedef ValueBuilder<T> = String Function(T item);
typedef ItemBuilder<T> = Widget Function(
    BuildContext context, T item, bool isSelected);

class OutlinedDropdown<T> extends StatefulWidget {
  final List<T> items;
  final T? selectedItem;
  final ValueChanged<T> onItemSelected;
  final ValueBuilder<T> valueBuilder;
  final ItemBuilder<T>? itemBuilder;
  final Color activeBorderColor;
  final Color inactiveBorderColor;
  final Color hintTextColor;
  final Color selectedItemHighlightColor;
  final String? placeholder;

  const OutlinedDropdown({
    super.key,
    required this.items,
    this.selectedItem,
    required this.onItemSelected,
    required this.valueBuilder,
    this.itemBuilder,
    this.activeBorderColor = AppColors.colorGrey800,
    this.inactiveBorderColor = AppColors.colorGrey100,
    this.hintTextColor = AppColors.colorGrey500,
    this.selectedItemHighlightColor = AppColors.colorGrey100,
    this.placeholder,
  });

  @override
  OutlinedDropdownState<T> createState() => OutlinedDropdownState<T>();
}

class OutlinedDropdownState<T> extends State<OutlinedDropdown<T>> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  final FocusNode _focusNode = FocusNode();
  bool _isDropdownOpened = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus && !_isDropdownOpened) {
      _openDropdown();
    }
  }

  void _toggleDropdown() {
    setState(() {
      if (_isDropdownOpened) {
        _closeDropdown();
      } else {
        _openDropdown();
      }
    });
  }

  void _openDropdown() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
      setState(() {
        _isDropdownOpened = true;
      });
    }
  }

  void _closeDropdown() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
      setState(() {
        _isDropdownOpened = false;
      });
    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: _closeDropdown,
          child: Stack(
            children: [
              Positioned(
                width: size.width,
                child: CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset: Offset(0, size.height + 5),
                  child: Material(
                    elevation: 4,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: _isDropdownOpened
                              ? widget.activeBorderColor
                              : widget.inactiveBorderColor,
                          width: 2.0, // items 리스트 border
                        ),
                      ),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height * 0.3,
                        ),
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: widget.items.length,
                          separatorBuilder: (context, index) => Divider(
                            color: AppColors.colorGrey100,
                            height: 2,
                          ),
                          itemBuilder: (context, index) {
                            T item = widget.items[index];
                            bool isSelected = item == widget.selectedItem;
                            return InkWell(
                              onTap: () {
                                widget.onItemSelected(item);
                                _closeDropdown();
                                _focusNode.unfocus();
                              },
                              child: Container(
                                color: isSelected
                                    ? widget.selectedItemHighlightColor
                                    : null,
                                padding: const EdgeInsets.all(10),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    widget.valueBuilder(item),
                                    style: AppStyles.body02Regular(
                                        AppColors.colorGrey800),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleDropdown,
      child: CompositedTransformTarget(
        link: _layerLink,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          child: TextFormField(
            textAlign: TextAlign.left,
            focusNode: _focusNode,
            decoration: InputDecoration(
              hintText: widget.selectedItem != null
                  ? null
                  : widget.placeholder ?? '옵션을 선택해주세요',
              hintStyle: AppStyles.body02Regular(AppColors.colorGrey500),
              suffixIcon: IconButton(
                icon: Icon(
                  _isDropdownOpened
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                onPressed: _toggleDropdown,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: _isDropdownOpened
                      ? widget.activeBorderColor
                      : widget.inactiveBorderColor,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: _isDropdownOpened
                      ? widget.activeBorderColor
                      : widget.inactiveBorderColor,
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: _isDropdownOpened
                      ? widget.activeBorderColor
                      : widget.inactiveBorderColor,
                  width: 2.0,
                ),
              ),
            ),
            controller: TextEditingController(
              text: widget.selectedItem != null
                  ? widget.valueBuilder(widget.selectedItem!)
                  : '',
            ),
            readOnly: true,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }
}
