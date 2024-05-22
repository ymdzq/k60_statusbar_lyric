.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/shape/Shapeable;


# static fields
.field public static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I


# instance fields
.field public broadcasting:Z

.field public checked:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconGravity:I

.field public iconLeft:I

.field public iconPadding:I

.field public iconSize:I

.field public iconTint:Landroid/content/res/ColorStateList;

.field public iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field public iconTop:I

.field public final materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

.field public final onCheckedChangeListeners:Ljava/util/LinkedHashSet;

.field public onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x101009f    # @android:attr/state_checkable

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 8
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    .line 9
    const v0, 0x10100a0    # @android:attr/state_checked

    .line 11
    filled-new-array {v0}, [I

    .line 14
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    .line 18
    return-void
    .line 20
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0404b5    # @attr/materialButtonStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const v0, 0x7f1407d9    # @style/Widget.MaterialComponents.Button

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 8
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialButton:[I

    const v5, 0x7f1407d9    # @style/Widget.MaterialComponents.Button

    new-array v6, p1, [I

    move-object v1, v7

    move-object v2, p2

    move v4, p3

    .line 9
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0xc

    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    const/16 v2, 0xf

    const/4 v3, -0x1

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 12
    invoke-static {v2, v4}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 13
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xe

    .line 14
    invoke-static {v2, v1, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 15
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0xa

    invoke-static {v2, v1, v4}, Lcom/google/android/material/resources/MaterialResources;->getDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xb

    const/4 v4, 0x1

    .line 16
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    const/16 v2, 0xd

    .line 17
    invoke-virtual {v1, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 18
    invoke-static {v7, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 19
    new-instance p3, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p3, p2}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    .line 20
    new-instance p2, Lcom/google/android/material/button/MaterialButtonHelper;

    invoke-direct {p2, p0, p3}, Lcom/google/android/material/button/MaterialButtonHelper;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object p2, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 21
    invoke-virtual {v1, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    const/4 p3, 0x2

    .line 22
    invoke-virtual {v1, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    const/4 p3, 0x3

    .line 23
    invoke-virtual {v1, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    const/4 p3, 0x4

    .line 24
    invoke-virtual {v1, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    const/16 p3, 0x8

    .line 25
    invoke-virtual {v1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v1, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 27
    iget-object v0, p2, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float p3, p3

    invoke-virtual {v0, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 28
    iput-boolean v4, p2, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    :cond_0
    const/16 p3, 0x14

    .line 29
    invoke-virtual {v1, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    const/4 p3, 0x7

    .line 30
    invoke-virtual {v1, p3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 31
    invoke-static {p3, v0}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 32
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x6

    .line 33
    invoke-static {p3, v1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 34
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0x13

    .line 35
    invoke-static {p3, v1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 36
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0x10

    .line 37
    invoke-static {p3, v1, v0}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    const/4 p3, 0x5

    .line 38
    invoke-virtual {v1, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    const/16 p3, 0x9

    .line 39
    invoke-virtual {v1, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->elevation:I

    const/16 p3, 0x15

    .line 40
    invoke-virtual {v1, p3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p2, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    .line 41
    sget-object p3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 42
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    move-result p3

    .line 43
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    .line 44
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    move-result v2

    .line 45
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v3

    .line 46
    invoke-virtual {v1, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    iput-boolean v4, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 48
    iget-object v5, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    iget-object v5, p2, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v5}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    .line 51
    :goto_0
    iget v5, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    add-int/2addr p3, v5

    iget v5, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    add-int/2addr v0, v5

    iget v5, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    add-int/2addr v2, v5

    iget p2, p2, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    add-int/2addr v3, p2

    .line 52
    invoke-static {p0, p3, v0, v2, v3}, Landroidx/core/view/ViewCompat$Api17Impl;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 53
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 55
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    move p1, v4

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    return-void
.end method

.method private getA11yClassName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    if-eqz p0, :cond_1

    .line 13
    const-class p0, Landroid/widget/CompoundButton;

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    const-class p0, Landroid/widget/Button;

    .line 18
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    return-object p0
    .line 24
.end method

.method private getActualTextAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getTextAlignment()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_2

    .line 7
    const/4 p0, 0x6

    .line 9
    if-eq v0, p0, :cond_1

    .line 10
    const/4 p0, 0x3

    .line 12
    if-eq v0, p0, :cond_1

    .line 13
    const/4 p0, 0x4

    .line 15
    if-eq v0, p0, :cond_0

    .line 16
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 18
    return-object p0

    .line 20
    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 21
    return-object p0

    .line 23
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 24
    return-object p0

    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getGravityTextAlignment()Landroid/text/Layout$Alignment;

    .line 27
    move-result-object p0

    .line 30
    return-object p0
    .line 31
.end method

.method private getGravityTextAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getGravity()I

    .line 2
    move-result p0

    .line 5
    const v0, 0x800007

    .line 6
    and-int/2addr p0, v0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    const/4 v0, 0x5

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    const v0, 0x800005

    .line 16
    if-eq p0, v0, :cond_0

    .line 19
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 21
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 24
    return-object p0

    .line 26
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 27
    return-object p0
    .line 29
.end method

.method private getTextHeight()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getLineCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    .line 13
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 22
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 30
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 36
    move-result-object v2

    .line 39
    invoke-interface {v2, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 40
    move-result-object v1

    .line 43
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    .line 48
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 53
    move-result v3

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 58
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v0

    .line 64
    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    .line 69
    move-result p0

    .line 72
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 73
    move-result p0

    .line 76
    return p0
    .line 77
.end method

.method private getTextLayoutWidth()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getLineCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 10
    move-result-object v3

    .line 13
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineStart(I)I

    .line 14
    move-result v3

    .line 17
    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 18
    move-result-object v4

    .line 21
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 22
    move-result v4

    .line 25
    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    .line 26
    move-result-object v5

    .line 29
    invoke-interface {v5, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 30
    move-result-object v3

    .line 33
    invoke-virtual {p0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    .line 34
    move-result-object v4

    .line 37
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 41
    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 42
    move-result-object v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/widget/Button;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 48
    move-result-object v5

    .line 51
    invoke-interface {v5, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    .line 52
    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 59
    :cond_0
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 60
    move-result v3

    .line 63
    float-to-int v3, v3

    .line 64
    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 65
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/text/Layout;->getEllipsizedWidth()I

    .line 69
    move-result v4

    .line 72
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 73
    move-result v3

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 77
    move-result v2

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    return v2
    .line 84
.end method

.method private updateIcon(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 11
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 13
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 24
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 27
    if-eqz v0, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 34
    move-result v0

    .line 37
    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 38
    if-eqz v2, :cond_2

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 45
    move-result v2

    .line 48
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 49
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 51
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 53
    add-int/2addr v0, v4

    .line 55
    add-int/2addr v2, v5

    .line 56
    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 57
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 62
    :cond_3
    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    .line 67
    return-void

    .line 70
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object p1

    .line 74
    const/4 v0, 0x0

    .line 75
    aget-object v2, p1, v0

    .line 76
    aget-object v3, p1, v1

    .line 78
    const/4 v4, 0x2

    .line 80
    aget-object p1, p1, v4

    .line 81
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 83
    if-eq v5, v1, :cond_6

    .line 85
    if-ne v5, v4, :cond_5

    .line 87
    goto :goto_2

    .line 89
    :cond_5
    move v4, v0

    .line 90
    goto :goto_3

    .line 91
    :cond_6
    :goto_2
    move v4, v1

    .line 92
    :goto_3
    if-eqz v4, :cond_7

    .line 93
    iget-object v4, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 95
    if-ne v2, v4, :cond_e

    .line 97
    :cond_7
    const/4 v2, 0x3

    .line 99
    if-eq v5, v2, :cond_9

    .line 100
    const/4 v2, 0x4

    .line 102
    if-ne v5, v2, :cond_8

    .line 103
    goto :goto_4

    .line 105
    :cond_8
    move v2, v0

    .line 106
    goto :goto_5

    .line 107
    :cond_9
    :goto_4
    move v2, v1

    .line 108
    :goto_5
    if-eqz v2, :cond_a

    .line 109
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 111
    if-ne p1, v2, :cond_e

    .line 113
    :cond_a
    const/16 p1, 0x10

    .line 115
    if-eq v5, p1, :cond_c

    .line 117
    const/16 p1, 0x20

    .line 119
    if-ne v5, p1, :cond_b

    .line 121
    goto :goto_6

    .line 123
    :cond_b
    move p1, v0

    .line 124
    goto :goto_7

    .line 125
    :cond_c
    :goto_6
    move p1, v1

    .line 126
    :goto_7
    if-eqz p1, :cond_d

    .line 127
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 129
    if-eq v3, p1, :cond_d

    .line 131
    goto :goto_8

    .line 133
    :cond_d
    move v1, v0

    .line 134
    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    .line 135
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->resetIconDrawable()V

    .line 137
    :cond_f
    return-void
    .line 140
.end method


# virtual methods
.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIconGravity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 2
    return p0
    .line 4
.end method

.method public getIconPadding()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 2
    return p0
    .line 4
.end method

.method public getIconSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 2
    return p0
    .line 4
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    return-object p0
    .line 4
.end method

.method public getInsetBottom()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 4
    return p0
    .line 6
.end method

.method public getInsetTop()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 4
    return p0
    .line 6
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 10
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    const-string v0, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
    .line 20
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public getStrokeWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 10
    return-object p0

    .line 12
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 10
    return-object p0

    .line 12
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method

.method public final isChecked()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 2
    return p0
    .line 4
.end method

.method public final isUsingOriginalBackground()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {p0, v0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    .line 4
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-boolean v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->CHECKABLE_STATE_SET:[I

    .line 21
    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    sget-object p0, Lcom/google/android/material/button/MaterialButton;->CHECKED_STATE_SET:[I

    .line 32
    invoke-static {p1, p0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    .line 34
    :cond_2
    return-object p1
    .line 37
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    .line 12
    move-result p0

    .line 15
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 16
    return-void
    .line 19
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-boolean v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    .line 26
    move-result v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/Button;->isClickable()Z

    .line 33
    move-result p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 37
    return-void
    .line 40
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 9
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 13
    return-void
    .line 16
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    return-void

    .line 9
    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 10
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;

    .line 12
    invoke-super {p0, v0}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 19
    return-void
    .line 22
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    move-result-object v0

    .line 5
    new-instance v1, Lcom/google/android/material/button/MaterialButton$SavedState;

    .line 6
    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 8
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 11
    iput-boolean p0, v1, Lcom/google/android/material/button/MaterialButton$SavedState;->checked:Z

    .line 13
    return-object v1
    .line 15
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 9
    move-result p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 13
    return-void
    .line 16
.end method

.method public final performClick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 8
    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public final refreshDrawableState()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/Button;->refreshDrawableState()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/Button;->getDrawableState()[I

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final resetIconDrawable()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_1

    .line 6
    const/4 v3, 0x2

    .line 8
    if-ne v0, v3, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    move v3, v2

    .line 14
    :goto_1
    const/4 v4, 0x0

    .line 15
    if-eqz v3, :cond_2

    .line 16
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 18
    invoke-virtual {p0, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 20
    goto :goto_4

    .line 23
    :cond_2
    const/4 v3, 0x3

    .line 24
    if-eq v0, v3, :cond_4

    .line 25
    const/4 v3, 0x4

    .line 27
    if-ne v0, v3, :cond_3

    .line 28
    goto :goto_2

    .line 30
    :cond_3
    move v3, v1

    .line 31
    goto :goto_3

    .line 32
    :cond_4
    :goto_2
    move v3, v2

    .line 33
    :goto_3
    if-eqz v3, :cond_5

    .line 34
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {p0, v4, v4, v0, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 38
    goto :goto_4

    .line 41
    :cond_5
    const/16 v3, 0x10

    .line 42
    if-eq v0, v3, :cond_6

    .line 44
    const/16 v3, 0x20

    .line 46
    if-ne v0, v3, :cond_7

    .line 48
    :cond_6
    move v1, v2

    .line 50
    :cond_7
    if-eqz v1, :cond_8

    .line 51
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 53
    invoke-virtual {p0, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_8
    :goto_4
    return-void
    .line 58
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    return-void
    .line 5
.end method

.method public setBackgroundColor(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 11
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 25
    :cond_1
    :goto_0
    return-void
    .line 28
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    const-string v0, "MaterialButton"

    .line 14
    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 21
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 24
    iget-object v1, v0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 26
    iget-object v2, v0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 28
    invoke-virtual {v2, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 30
    iget-object v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 33
    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 46
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :goto_0
    return-void
    .line 57
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    return-void
    .line 17
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2
    return-void
    .line 5
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2
    return-void
    .line 5
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 10
    :cond_0
    return-void
    .line 12
.end method

.method public setChecked(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-boolean v0, v0, Lcom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 23
    if-eq v0, p1, :cond_5

    .line 25
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 27
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    .line 29
    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    .line 32
    move-result-object p1

    .line 35
    instance-of p1, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 36
    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 44
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 46
    iget-boolean v3, p1, Lcom/google/android/material/button/MaterialButtonToggleGroup;->skipCheckedStateTracker:Z

    .line 48
    if-eqz v3, :cond_1

    .line 50
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Button;->getId()I

    .line 53
    move-result v3

    .line 56
    invoke-virtual {p1, v3, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->checkInternal(IZ)V

    .line 57
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 60
    if-eqz p1, :cond_3

    .line 62
    return-void

    .line 64
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 65
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->onCheckedChangeListeners:Ljava/util/LinkedHashSet;

    .line 67
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 76
    if-nez v0, :cond_4

    .line 77
    iput-boolean v2, p0, Lcom/google/android/material/button/MaterialButton;->broadcasting:Z

    .line 79
    goto :goto_2

    .line 81
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object p0

    .line 85
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 86
    const/4 p0, 0x0

    .line 89
    throw p0

    .line 90
    :cond_5
    :goto_2
    return-void
    .line 91
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 14
    if-eq v0, p1, :cond_1

    .line 16
    :cond_0
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 18
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 21
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 23
    int-to-float p1, p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public setCornerRadiusResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setElevation(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setElevation(F)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 6
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 16
    move-result v0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public setIconGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 8
    move-result p1

    .line 11
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setIconPadding(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setIconResource(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 14
    return-void
    .line 17
.end method

.method public setIconSize(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 8
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 11
    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    const-string p1, "iconSize cannot be less than 0"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0
    .line 22
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTint:Landroid/content/res/ColorStateList;

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 6
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public setIconTintResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    .line 10
    return-void
    .line 13
.end method

.method public setInsetBottom(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    .line 6
    return-void
    .line 9
.end method

.method public setInsetTop(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    .line 6
    return-void
    .line 9
.end method

.method public final setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    return-void
    .line 5
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->onPressedChangeListenerInternal:Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$PressedStateTracker;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setPressed(Z)V

    .line 11
    return-void
    .line 14
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 10
    if-eq v0, p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->rippleColor:Landroid/content/res/ColorStateList;

    .line 14
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->materialButton:Lcom/google/android/material/button/MaterialButton;

    .line 16
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 21
    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 30
    invoke-static {p1}, Lcom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 36
    :cond_0
    return-void
    .line 39
.end method

.method public setRippleColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 10
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    const-string p1, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0
    .line 21
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 10
    if-eq v0, p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeColor:Landroid/content/res/ColorStateList;

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setStrokeColorResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->getColorStateList(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 10
    if-eq v0, p1, :cond_0

    .line 12
    iput p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 14
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setStrokeWidthResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 10
    if-eq v0, p1, :cond_1

    .line 12
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 17
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 23
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 27
    invoke-virtual {p1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 33
    :cond_1
    :goto_0
    return-void
    .line 36
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isUsingOriginalBackground()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 8
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 10
    if-eq v0, p1, :cond_1

    .line 12
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 17
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 27
    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_1
    :goto_0
    return-void
    .line 40
.end method

.method public setTextAlignment(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextAlignment(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredWidth()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->updateIconPosition(II)V

    .line 13
    return-void
    .line 16
.end method

.method public setToggleCheckedStateOnClick(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->materialButtonHelper:Lcom/google/android/material/button/MaterialButtonHelper;

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButtonHelper;->toggleCheckedStateOnClick:Z

    .line 4
    return-void
    .line 6
.end method

.method public final toggle()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->checked:Z

    .line 2
    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final updateIconPosition(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_14

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getLayout()Landroid/text/Layout;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto/16 :goto_a

    .line 12
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 14
    const/4 v1, 0x2

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    if-ne v0, v1, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    move v4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    :goto_0
    move v4, v3

    .line 26
    :goto_1
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x3

    .line 28
    if-nez v4, :cond_a

    .line 29
    if-eq v0, v6, :cond_4

    .line 31
    if-ne v0, v5, :cond_3

    .line 33
    goto :goto_2

    .line 35
    :cond_3
    move v4, v2

    .line 36
    goto :goto_3

    .line 37
    :cond_4
    :goto_2
    move v4, v3

    .line 38
    :goto_3
    if-eqz v4, :cond_5

    .line 39
    goto :goto_5

    .line 41
    :cond_5
    const/16 p1, 0x10

    .line 42
    if-eq v0, p1, :cond_7

    .line 44
    const/16 v4, 0x20

    .line 46
    if-ne v0, v4, :cond_6

    .line 48
    goto :goto_4

    .line 50
    :cond_6
    move v3, v2

    .line 51
    :cond_7
    :goto_4
    if-eqz v3, :cond_12

    .line 52
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 54
    if-ne v0, p1, :cond_8

    .line 56
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 58
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 60
    return-void

    .line 63
    :cond_8
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 64
    if-nez p1, :cond_9

    .line 66
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 70
    move-result p1

    .line 73
    :cond_9
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextHeight()I

    .line 74
    move-result v0

    .line 77
    sub-int/2addr p2, v0

    .line 78
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    .line 79
    move-result v0

    .line 82
    sub-int/2addr p2, v0

    .line 83
    sub-int/2addr p2, p1

    .line 84
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 85
    sub-int/2addr p2, p1

    .line 87
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    .line 88
    move-result p1

    .line 91
    sub-int/2addr p2, p1

    .line 92
    div-int/2addr p2, v1

    .line 93
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    .line 94
    move-result p1

    .line 97
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 98
    if-eq p2, p1, :cond_12

    .line 100
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 102
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 104
    goto :goto_8

    .line 107
    :cond_a
    :goto_5
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconTop:I

    .line 108
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getActualTextAlignment()Landroid/text/Layout$Alignment;

    .line 110
    move-result-object p2

    .line 113
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 114
    if-eq v0, v3, :cond_13

    .line 116
    if-eq v0, v6, :cond_13

    .line 118
    if-ne v0, v1, :cond_b

    .line 120
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 122
    if-eq p2, v1, :cond_13

    .line 124
    :cond_b
    if-ne v0, v5, :cond_c

    .line 126
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 128
    if-ne p2, v0, :cond_c

    .line 130
    goto :goto_9

    .line 132
    :cond_c
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconSize:I

    .line 133
    if-nez v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->icon:Landroid/graphics/drawable/Drawable;

    .line 137
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 139
    move-result v0

    .line 142
    :cond_d
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getTextLayoutWidth()I

    .line 143
    move-result v1

    .line 146
    sub-int/2addr p1, v1

    .line 147
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 148
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingEnd(Landroid/view/View;)I

    .line 150
    move-result v1

    .line 153
    sub-int/2addr p1, v1

    .line 154
    sub-int/2addr p1, v0

    .line 155
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconPadding:I

    .line 156
    sub-int/2addr p1, v0

    .line 158
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getPaddingStart(Landroid/view/View;)I

    .line 159
    move-result v0

    .line 162
    sub-int/2addr p1, v0

    .line 163
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 164
    if-ne p2, v0, :cond_e

    .line 166
    div-int/lit8 p1, p1, 0x2

    .line 168
    :cond_e
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 170
    move-result p2

    .line 173
    if-ne p2, v3, :cond_f

    .line 174
    move p2, v3

    .line 176
    goto :goto_6

    .line 177
    :cond_f
    move p2, v2

    .line 178
    :goto_6
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->iconGravity:I

    .line 179
    if-ne v0, v5, :cond_10

    .line 181
    goto :goto_7

    .line 183
    :cond_10
    move v3, v2

    .line 184
    :goto_7
    if-eq p2, v3, :cond_11

    .line 185
    neg-int p1, p1

    .line 187
    :cond_11
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 188
    if-eq p2, p1, :cond_12

    .line 190
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 192
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 194
    :cond_12
    :goto_8
    return-void

    .line 197
    :cond_13
    :goto_9
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->iconLeft:I

    .line 198
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->updateIcon(Z)V

    .line 200
    :cond_14
    :goto_a
    return-void
    .line 203
.end method
