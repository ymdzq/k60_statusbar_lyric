.class public Lmiuix/androidbasewidget/widget/StateEditText;
.super Lmiuix/androidbasewidget/widget/EditText;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;


# instance fields
.field public mExtraDrawables:[Landroid/graphics/drawable/Drawable;

.field public mLabel:Ljava/lang/String;

.field public mLabelLayout:Landroid/text/StaticLayout;

.field public mLabelLength:I

.field public mLabelMaxWidth:I

.field public mPressed:Z

.field public mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

.field public mWidgetPadding:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    const-class v1, Landroid/util/AttributeSet;

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 10
    return-void
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040523    # @attr/miuixAppcompatStateEditTextStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lmiuix/androidbasewidget/widget/StateEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/androidbasewidget/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 5
    sget-object v3, Lmiuix/androidbasewidget/R$styleable;->miuixAppcompatStateEditText:[I

    const v4, 0x7f140878    # @style/Widget.StateEditText.DayNight

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v3, 0x2

    .line 6
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 8
    invoke-virtual {p3, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    const/4 v4, 0x3

    .line 9
    invoke-virtual {p3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 10
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    const-string p3, "Could not instantiate the WidgetManager: "

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 14
    sget-object v5, Lmiuix/androidbasewidget/widget/StateEditText;->WIDGET_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 16
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error creating WidgetManager "

    .line 20
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 21
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 22
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t find WidgetManager: "

    .line 23
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 24
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 25
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t access non-public constructor "

    .line 26
    invoke-static {p2, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 28
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    invoke-static {p3, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    .line 31
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    invoke-static {p3, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    move-object p1, v0

    .line 34
    :goto_1
    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V

    .line 35
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 38
    :cond_2
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmiuix/androidbasewidget/widget/StateEditText;->setLabel(Ljava/lang/String;)V

    .line 39
    filled-new-array {p0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->hover()Lmiuix/animation/IHoverStyle;

    move-result-object p1

    sget-object p2, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    invoke-interface {p1, p2}, Lmiuix/animation/IHoverStyle;->setEffect(Lmiuix/animation/IHoverStyle$HoverEffect;)Lmiuix/animation/IHoverStyle;

    move-result-object p1

    new-array p2, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/IHoverStyle;->handleHoverOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private getLabelLength()I
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget p0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 8
    :goto_0
    add-int/2addr v0, p0

    .line 10
    return v0
    .line 11
.end method

.method private getWidgetLength()I
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    array-length v2, v0

    .line 7
    move v3, v1

    .line 8
    :goto_0
    if-ge v1, v2, :cond_0

    .line 9
    aget-object v4, v0, v1

    .line 11
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 13
    move-result v4

    .line 16
    add-int/2addr v4, v3

    .line 17
    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 18
    add-int/2addr v3, v4

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move v1, v3

    .line 24
    :cond_1
    return v1
    .line 25
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 8
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Landroid/widget/EditText;->getScrollX()I

    .line 12
    move-result v0

    .line 15
    move v3, v1

    .line 16
    :goto_0
    iget-object v4, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 17
    array-length v5, v4

    .line 19
    if-ge v3, v5, :cond_5

    .line 20
    aget-object v4, v4, v3

    .line 22
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 24
    move-result-object v4

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 28
    move-result v5

    .line 31
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 32
    sub-int/2addr v6, v0

    .line 34
    int-to-float v6, v6

    .line 35
    cmpg-float v5, v5, v6

    .line 36
    if-gez v5, :cond_4

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 40
    move-result v5

    .line 43
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 44
    sub-int/2addr v4, v0

    .line 46
    int-to-float v4, v4

    .line 47
    cmpl-float v4, v5, v4

    .line 48
    if-lez v4, :cond_4

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    if-eq v0, v2, :cond_1

    .line 58
    const/4 v3, 0x3

    .line 60
    if-eq v0, v3, :cond_0

    .line 61
    goto :goto_1

    .line 63
    :cond_0
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 64
    if-eqz v0, :cond_3

    .line 66
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 68
    goto :goto_1

    .line 70
    :cond_1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 71
    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 75
    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v0, v3}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onWidgetClick(I)V

    .line 79
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 82
    move v0, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iput-boolean v2, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 86
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 88
    goto :goto_2

    .line 90
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mPressed:Z

    .line 94
    :cond_6
    move v0, v1

    .line 96
    :goto_2
    if-nez v0, :cond_7

    .line 97
    invoke-super {p0, p1}, Lmiuix/androidbasewidget/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    move-result p0

    .line 102
    if-eqz p0, :cond_8

    .line 103
    :cond_7
    move v1, v2

    .line 105
    :cond_8
    return v1
    .line 106
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-eqz v2, :cond_1

    .line 15
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    .line 17
    move-result p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    .line 22
    move-result p0

    .line 25
    :goto_1
    add-int/2addr v0, p0

    .line 26
    return v0
    .line 27
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-eqz v2, :cond_1

    .line 15
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getLabelLength()I

    .line 17
    move-result p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/StateEditText;->getWidgetLength()I

    .line 22
    move-result p0

    .line 25
    :goto_1
    add-int/2addr v0, p0

    .line 26
    return v0
    .line 27
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v2, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 9
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v2, :cond_3

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    .line 15
    move-result v2

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getHeight()I

    .line 19
    move-result v5

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getScrollX()I

    .line 23
    move-result v6

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingEnd()I

    .line 27
    move-result v7

    .line 30
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v8

    .line 34
    const/4 v9, 0x2

    .line 35
    aget-object v8, v8, v9

    .line 36
    if-nez v8, :cond_0

    .line 38
    move v8, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 42
    move-result v8

    .line 45
    iget v10, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 46
    add-int/2addr v8, v10

    .line 48
    :goto_0
    div-int/2addr v5, v9

    .line 49
    move v9, v3

    .line 50
    move v10, v9

    .line 51
    :goto_1
    iget-object v11, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 52
    array-length v12, v11

    .line 54
    if-ge v9, v12, :cond_3

    .line 55
    aget-object v11, v11, v9

    .line 57
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 59
    move-result v11

    .line 62
    iget-object v12, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 63
    aget-object v12, v12, v9

    .line 65
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 67
    move-result v12

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 71
    move-result v13

    .line 74
    if-ne v13, v4, :cond_1

    .line 75
    move v13, v4

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    move v13, v3

    .line 79
    :goto_2
    if-eqz v13, :cond_2

    .line 80
    iget-object v13, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 82
    aget-object v13, v13, v9

    .line 84
    add-int v14, v6, v7

    .line 86
    add-int/2addr v14, v8

    .line 88
    add-int v15, v14, v10

    .line 89
    div-int/lit8 v12, v12, 0x2

    .line 91
    sub-int v4, v5, v12

    .line 93
    add-int/2addr v14, v11

    .line 95
    add-int/2addr v14, v10

    .line 96
    add-int/2addr v12, v5

    .line 97
    invoke-virtual {v13, v15, v4, v14, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    goto :goto_3

    .line 101
    :cond_2
    iget-object v4, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 102
    aget-object v4, v4, v9

    .line 104
    add-int v13, v6, v2

    .line 106
    sub-int/2addr v13, v7

    .line 108
    sub-int/2addr v13, v8

    .line 109
    sub-int v14, v13, v11

    .line 110
    sub-int/2addr v14, v10

    .line 112
    div-int/lit8 v12, v12, 0x2

    .line 113
    sub-int v15, v5, v12

    .line 115
    sub-int/2addr v13, v10

    .line 117
    add-int/2addr v12, v5

    .line 118
    invoke-virtual {v4, v14, v15, v13, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    :goto_3
    iget v4, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 122
    add-int v10, v4, v11

    .line 124
    iget-object v4, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 126
    aget-object v4, v4, v9

    .line 128
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 133
    const/4 v4, 0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_3
    iget-object v2, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v2

    .line 142
    if-nez v2, :cond_7

    .line 143
    iget-object v2, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 145
    if-eqz v2, :cond_7

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    .line 149
    move-result-object v2

    .line 152
    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    .line 153
    move-result v2

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    .line 157
    move-result-object v4

    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getCurrentTextColor()I

    .line 161
    move-result v5

    .line 164
    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaddingStart()I

    .line 168
    move-result v4

    .line 171
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 172
    move-result-object v5

    .line 175
    aget-object v5, v5, v3

    .line 176
    if-nez v5, :cond_4

    .line 178
    move v5, v3

    .line 180
    goto :goto_4

    .line 181
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 182
    move-result v5

    .line 185
    iget v6, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetPadding:I

    .line 186
    add-int/2addr v5, v6

    .line 188
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    .line 189
    move-result v6

    .line 192
    iget-object v7, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 193
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    .line 195
    move-result v7

    .line 198
    sub-int/2addr v6, v7

    .line 199
    int-to-float v6, v6

    .line 200
    const/high16 v7, 0x40000000    # 2.0f

    .line 201
    div-float/2addr v6, v7

    .line 203
    const/4 v7, 0x0

    .line 204
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    .line 205
    move-result v6

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 212
    move-result v7

    .line 215
    const/4 v8, 0x1

    .line 216
    if-ne v7, v8, :cond_5

    .line 217
    move v3, v8

    .line 219
    :cond_5
    if-eqz v3, :cond_6

    .line 220
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getScrollX()I

    .line 222
    move-result v3

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getWidth()I

    .line 226
    move-result v7

    .line 229
    add-int/2addr v7, v3

    .line 230
    sub-int/2addr v7, v5

    .line 231
    iget v3, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 232
    sub-int/2addr v7, v3

    .line 234
    sub-int/2addr v7, v4

    .line 235
    int-to-float v3, v7

    .line 236
    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 237
    goto :goto_5

    .line 240
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getScrollX()I

    .line 241
    move-result v3

    .line 244
    add-int/2addr v3, v4

    .line 245
    add-int/2addr v3, v5

    .line 246
    int-to-float v3, v3

    .line 247
    invoke-virtual {v1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    :goto_5
    iget-object v3, v0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 251
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    .line 259
    move-result-object v0

    .line 262
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 263
    :cond_7
    return-void
    .line 266
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lmiuix/androidbasewidget/widget/EditText;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result p1

    .line 10
    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 17
    if-nez p1, :cond_0

    .line 19
    iget p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    .line 23
    move-result p2

    .line 26
    div-int/lit8 p2, p2, 0x2

    .line 27
    if-le p1, p2, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    .line 31
    move-result p1

    .line 34
    div-int/lit8 p1, p1, 0x2

    .line 35
    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 37
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    move-result p2

    .line 44
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    .line 45
    move-result-object v0

    .line 48
    iget v1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 49
    const/4 v2, 0x0

    .line 51
    invoke-static {p1, v2, p2, v0, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 52
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 56
    move-result-object p1

    .line 59
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 60
    :cond_0
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 62
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    .line 64
    move-result p1

    .line 67
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    .line 68
    move-result p2

    .line 71
    add-int/2addr p2, p1

    .line 72
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    .line 73
    move-result p1

    .line 76
    add-int/2addr p1, p2

    .line 77
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredHeight()I

    .line 78
    move-result p2

    .line 81
    if-le p1, p2, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/widget/EditText;->getMeasuredWidth()I

    .line 84
    move-result p2

    .line 87
    invoke-virtual {p0, p2, p1}, Landroid/widget/EditText;->setMeasuredDimension(II)V

    .line 88
    :cond_1
    return-void
    .line 91
.end method

.method public setInputType(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    .line 2
    move-result-object v0

    .line 5
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    return-void
    .line 12
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 2
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 4
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    move p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    .line 17
    move-result-object p1

    .line 20
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 23
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    iget v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelMaxWidth:I

    .line 28
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p1

    .line 33
    :goto_0
    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 34
    goto :goto_2

    .line 36
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    move p1, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    .line 45
    move-result-object p1

    .line 48
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 49
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 51
    move-result p1

    .line 54
    float-to-int p1, p1

    .line 55
    :goto_1
    iput p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 56
    :goto_2
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabel:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 68
    move-result v0

    .line 71
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaint()Landroid/text/TextPaint;

    .line 72
    move-result-object v2

    .line 75
    iget v3, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLength:I

    .line 76
    invoke-static {p1, v1, v0, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 78
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 82
    move-result-object p1

    .line 85
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mLabelLayout:Landroid/text/StaticLayout;

    .line 86
    :cond_3
    invoke-virtual {p0}, Landroid/widget/EditText;->invalidate()V

    .line 88
    return-void
    .line 91
.end method

.method public setWidgetManager(Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onDetached()V

    .line 6
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 10
    :cond_0
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 12
    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->getWidgetDrawables()[Landroid/graphics/drawable/Drawable;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mExtraDrawables:[Landroid/graphics/drawable/Drawable;

    .line 20
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/StateEditText;->mWidgetManager:Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;

    .line 22
    invoke-virtual {p1, p0}, Lmiuix/androidbasewidget/widget/StateEditText$WidgetManager;->onAttached(Lmiuix/androidbasewidget/widget/StateEditText;)V

    .line 24
    :cond_1
    return-void
    .line 27
.end method
