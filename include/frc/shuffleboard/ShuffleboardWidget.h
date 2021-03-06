// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

#pragma once

#include <string_view>

#include "frc/shuffleboard/BuiltInWidgets.h"
#include "frc/shuffleboard/ShuffleboardComponent.h"
#include "frc/shuffleboard/WidgetType.h"

namespace frc {

class ShuffleboardContainer;

namespace detail {
const char* GetStringForWidgetType(BuiltInWidgets type);
}  // namespace detail

/**
 * Abstract superclass for widgets.
 *
 * <p>This class is package-private to minimize API surface area.
 *
 * @tparam Derived the self type
 */
template <typename Derived>
class ShuffleboardWidget : public ShuffleboardComponent<Derived> {
 public:
  ShuffleboardWidget(ShuffleboardContainer& parent, std::string_view title)
      : ShuffleboardValue(title),
        ShuffleboardComponent<Derived>(parent, title) {}

  /**
   * Sets the type of widget used to display the data. If not set, the default
   * widget type will be used.
   *
   * @param widgetType the type of the widget used to display the data
   * @return this widget object
   * @see BuiltInWidgets
   */
  Derived& WithWidget(BuiltInWidgets widgetType) {
    return WithWidget(detail::GetStringForWidgetType(widgetType));
  }

  /**
   * Sets the type of widget used to display the data. If not set, the default
   * widget type will be used.
   *
   * @param widgetType the type of the widget used to display the data
   * @return this widget object
   */
  Derived& WithWidget(const WidgetType& widgetType) {
    return WithWidget(widgetType.GetWidgetName());
  }

  /**
   * Sets the type of widget used to display the data. If not set, the default
   * widget type will be used. This method should only be used to use a widget
   * that does not come built into Shuffleboard (i.e. one that comes with a
   * custom or third-party plugin). To use a widget that is built into
   * Shuffleboard, use WithWidget(WidgetType) and BuiltInWidgets.
   *
   * @param widgetType the type of the widget used to display the data
   * @return this widget object
   */
  Derived& WithWidget(std::string_view widgetType) {
    this->SetType(widgetType);
    return *static_cast<Derived*>(this);
  }
};

}  // namespace frc
