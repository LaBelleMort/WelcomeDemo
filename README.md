## JazzHands 的简单使用

Jazz Hand是一个简单的基于keyframe的UIKit动画框架。动画可以通过手势，scrollviews，KVO或者ReactiveCocoa控制，它经常用于 APP 的欢迎启动页面

### 支持的动画类型
- IFTTTAlphaAnimation 透明度,内部修改 alpha属性
- IFTTTRotationAnimation 旋转角度,内部修改 view.transform 属性
- IFTTTBackgroundColorAnimation 背景色
- IFTTTCornerRadiusAnimation 圆角大小
- IFTTTHideAnimation 显示隐藏,内部调用 view.hidden=YES
- IFTTTScaleAnimation 内部修改 view.transform属性
- IFTTTTranslationAnimation 内部修改 view.transform属性
- IFTTTTransform3DAnimation 内部修改 layer.transform 属性
- IFTTTTextColorAnimation 修改 Label 的 textColor
- IFTTTFillColorAnimation CAShaperLayer 的 fillColor 属性
- IFTTTStrokeStartAnimation 修改 CAShapeLayer 的 strokeStart
- IFTTTStrokeEndAnimation 修改 CAShapeLayer 的 strokeEnd ,不能同时设置strokeEnd和 strokeStart动画
- IFTTTPathPositionAnimation 修改 UIView 的 Position 属性

**AutoLayout 特有**

- IFTTTConstraintConstantAnimation 修改 AutoLayout Constraint的 constant 属性
- IFTTTConstraintMultiplierAnimation 修改
AutoLayout Multiplier 属性
- IFTTTScrollViewPageConstraintAnimation 用 AutoLayout 修改 ScrollView 和 View 的位置关系

