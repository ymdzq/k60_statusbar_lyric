.class public Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
.super Landroid/graphics/drawable/AnimatedStateListDrawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

.field public mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

.field public mContentAlpha:F

.field public mIsEnabled:Z

.field public mPreChecked:Z

.field public mPrePressed:Z

.field public mScale:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->TAG:Ljava/lang/String;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    .line 2
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 4
    iput v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 6
    iput-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;)V
    .locals 11

    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    if-eqz p3, :cond_3

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 9
    iget-object p2, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 12
    :cond_2
    iget-object p1, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    check-cast p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->onStateChange([I)Z

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->jumpToCurrentState()V

    .line 15
    iget-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    iget p2, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iput p2, p1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 16
    iget p2, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iput p2, p1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    .line 17
    iget p2, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iput p2, p1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 18
    iget-boolean p2, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    iput-boolean p2, p1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    goto :goto_1

    .line 19
    :cond_3
    sget-object p1, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->TAG:Ljava/lang/String;

    const-string p2, "checkWidgetConstantState is null ,but it can\'t be null"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 21
    iput p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 23
    iput-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 24
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 25
    instance-of v2, p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;

    .line 26
    iget v3, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    iget v4, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    iget v5, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    iget v6, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    iget v7, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    iget v8, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    iget v9, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    iget v10, p3, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    return-void
.end method

.method public static safeGetColor(Landroid/content/res/TypedArray;I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 3
    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "MiuixCheckbox"

    .line 9
    const-string v1, "try catch UnsupportedOperationException insafeGetColor"

    .line 11
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    return v0
    .line 16
.end method

.method public static safeGetInt(Landroid/content/res/TypedArray;I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 3
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return p0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string p1, "MiuixCheckbox"

    .line 9
    const-string v1, "try catch Exception insafeGetInt"

    .line 11
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    return v0
    .line 16
.end method


# virtual methods
.method public final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getCheckWidgetDrawableStyle()I

    .line 5
    move-result v0

    .line 8
    sget-object v1, Lmiuix/appcompat/R$styleable;->CheckWidgetDrawable:[I

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p1

    .line 14
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 15
    const/4 v1, 0x5

    .line 17
    invoke-static {p1, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;I)I

    .line 18
    move-result v1

    .line 21
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 22
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 24
    const/4 v1, 0x2

    .line 26
    invoke-static {p1, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;I)I

    .line 27
    move-result v1

    .line 30
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    .line 31
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 33
    const/4 v1, 0x3

    .line 35
    invoke-static {p1, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;I)I

    .line 36
    move-result v1

    .line 39
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 40
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 42
    const/4 v1, 0x6

    .line 44
    invoke-static {p1, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetColor(Landroid/content/res/TypedArray;I)I

    .line 45
    move-result v1

    .line 48
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    .line 49
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 51
    const/4 v1, 0x1

    .line 53
    invoke-static {p1, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;I)I

    .line 54
    move-result v1

    .line 57
    iput v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    .line 58
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 60
    const/4 v1, 0x0

    .line 62
    invoke-static {p1, v1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;I)I

    .line 63
    move-result v2

    .line 66
    iput v2, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    .line 67
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 69
    const/16 v2, 0x8

    .line 71
    invoke-static {p1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;I)I

    .line 73
    move-result v2

    .line 76
    iput v2, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    .line 77
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 79
    const/4 v2, 0x7

    .line 81
    invoke-static {p1, v2}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->safeGetInt(Landroid/content/res/TypedArray;I)I

    .line 82
    move-result v2

    .line 85
    iput v2, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    .line 86
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 88
    const/16 v2, 0x9

    .line 90
    :try_start_0
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 92
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 97
    const-string v3, "MiuixCheckbox"

    .line 98
    const-string v4, "try catch Exception insafeGetBoolean"

    .line 100
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    :goto_0
    iput-boolean v1, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    new-instance p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 110
    instance-of v4, p0, Lmiuix/internal/view/RadioButtonAnimatedStateListDrawable;

    .line 112
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 114
    iget v5, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->grayColor:I

    .line 116
    iget v6, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->blackColor:I

    .line 118
    iget v7, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backGroundColor:I

    .line 120
    iget v8, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundNormalAlpha:I

    .line 122
    iget v9, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->backgroundDisableAlpha:I

    .line 124
    iget v10, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeColor:I

    .line 126
    iget v11, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeNormalAlpha:I

    .line 128
    iget v12, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->strokeDisableAlpha:I

    .line 130
    move-object v2, p1

    .line 132
    move-object v3, p0

    .line 133
    invoke-direct/range {v2 .. v12}, Lmiuix/internal/view/CheckWidgetDrawableAnims;-><init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V

    .line 134
    iput-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 137
    return-void
    .line 139
.end method

.method public final bridge synthetic canApplyTheme()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->canApplyTheme$miuix$internal$view$CheckWidgetAnimatedStateListDrawable()Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final canApplyTheme$miuix$internal$view$CheckWidgetAnimatedStateListDrawable()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 16
    iget-boolean v0, v0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 18
    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 26
    invoke-virtual {v1, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    iget-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 31
    invoke-virtual {v1, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    iget-object v0, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 36
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 38
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    return-void

    .line 44
    :cond_2
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    .line 45
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x2

    .line 48
    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 52
    iget-boolean v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 55
    if-eqz v0, :cond_4

    .line 57
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 59
    if-eqz v0, :cond_3

    .line 61
    iget-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 63
    invoke-virtual {v1, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v1, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 68
    invoke-virtual {v1, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 73
    invoke-virtual {v0, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    :cond_3
    const/high16 v0, 0x437f0000    # 255.0f

    .line 78
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mContentAlpha:F

    .line 80
    mul-float/2addr v1, v0

    .line 82
    float-to-int v0, v1

    .line 83
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAlpha(I)V

    .line 84
    goto :goto_0

    .line 87
    :cond_4
    const/16 v0, 0x4c

    .line 88
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setAlpha(I)V

    .line 90
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 93
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getBounds()Landroid/graphics/Rect;

    .line 96
    move-result-object v0

    .line 99
    iget v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mScale:F

    .line 100
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 102
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 104
    add-int/2addr v3, v4

    .line 106
    div-int/2addr v3, v2

    .line 107
    int-to-float v3, v3

    .line 108
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 109
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 111
    add-int/2addr v4, v0

    .line 113
    div-int/2addr v4, v2

    .line 114
    int-to-float v0, v4

    .line 115
    invoke-virtual {p1, v1, v1, v3, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 116
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    return-void
    .line 125
.end method

.method public getCheckWidgetDrawableStyle()I
    .locals 0

    .line 1
    const p0, 0x7f140163    # @style/CheckWidgetDrawable.CheckBox

    .line 2
    return p0
    .line 5
.end method

.method public final bridge synthetic getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->getConstantState$miuix$internal$view$CheckWidgetAnimatedStateListDrawable()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getConstantState$miuix$internal$view$CheckWidgetAnimatedStateListDrawable()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 2
    return-object p0
    .line 4
.end method

.method public newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;
    .locals 0

    .line 1
    new-instance p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;

    .line 2
    invoke-direct {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable$CheckBoxConstantState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final onStateChange([I)Z
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 6
    if-nez v1, :cond_0

    .line 8
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    instance-of v1, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->onStateChange([I)Z

    .line 21
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 27
    array-length v2, p1

    .line 29
    move v3, v1

    .line 30
    move v4, v3

    .line 31
    move v5, v4

    .line 32
    :goto_0
    if-ge v3, v2, :cond_5

    .line 33
    aget v6, p1, v3

    .line 35
    const v7, 0x10100a7    # @android:attr/state_pressed

    .line 37
    const/4 v8, 0x1

    .line 40
    if-ne v6, v7, :cond_2

    .line 41
    move v4, v8

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const v7, 0x10100a0    # @android:attr/state_checked

    .line 45
    if-ne v6, v7, :cond_3

    .line 48
    move v5, v8

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const v7, 0x101009e    # @android:attr/state_enabled

    .line 52
    if-ne v6, v7, :cond_4

    .line 55
    iput-boolean v8, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 57
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_5
    if-eqz v4, :cond_10

    .line 62
    iget-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 64
    if-eqz p1, :cond_10

    .line 66
    iget-object v2, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 68
    iget-boolean v2, v2, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 70
    if-eqz v2, :cond_10

    .line 72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 74
    move-result-object v2

    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 78
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 82
    move-result-object v3

    .line 85
    if-eq v2, v3, :cond_6

    .line 86
    goto/16 :goto_2

    .line 88
    :cond_6
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 90
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 92
    move-result v2

    .line 95
    if-nez v2, :cond_7

    .line 96
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 98
    invoke-virtual {v2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 100
    :cond_7
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 103
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 105
    move-result v2

    .line 108
    if-nez v2, :cond_8

    .line 109
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 111
    invoke-virtual {v2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 113
    :cond_8
    if-nez v5, :cond_9

    .line 116
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 118
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 120
    move-result v2

    .line 123
    if-nez v2, :cond_9

    .line 124
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 126
    invoke-virtual {v2}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 128
    :cond_9
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 131
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 133
    move-result v2

    .line 136
    if-eqz v2, :cond_a

    .line 137
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 139
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 141
    :cond_a
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 144
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 146
    move-result v2

    .line 149
    if-eqz v2, :cond_b

    .line 150
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 152
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 154
    :cond_b
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 157
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 159
    move-result v2

    .line 162
    if-eqz v2, :cond_c

    .line 163
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 165
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 167
    :cond_c
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 170
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 172
    move-result v2

    .line 175
    if-eqz v2, :cond_d

    .line 176
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 178
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 180
    :cond_d
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 183
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 185
    move-result v2

    .line 188
    if-eqz v2, :cond_e

    .line 189
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 191
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 193
    :cond_e
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 196
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 198
    move-result v2

    .line 201
    if-eqz v2, :cond_f

    .line 202
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 204
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 206
    :cond_f
    iget-object v2, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 209
    invoke-virtual {v2}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 211
    move-result v2

    .line 214
    if-eqz v2, :cond_10

    .line 215
    iget-object p1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 217
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 219
    :cond_10
    :goto_2
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 222
    if-nez p1, :cond_13

    .line 224
    if-nez v4, :cond_13

    .line 226
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mIsEnabled:Z

    .line 228
    iget-object v2, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 230
    if-eqz v2, :cond_13

    .line 232
    iget-object v3, v2, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 234
    iget-object v6, v2, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 236
    iget-object v7, v2, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 238
    if-eqz p1, :cond_12

    .line 240
    if-eqz v5, :cond_11

    .line 242
    const/16 p1, 0xff

    .line 244
    invoke-virtual {v7, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 246
    const/16 p1, 0x19

    .line 249
    invoke-virtual {v6, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 251
    goto :goto_3

    .line 254
    :cond_11
    invoke-virtual {v7, v1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 255
    invoke-virtual {v6, v1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 258
    :goto_3
    iget p1, v2, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundNormalAlpha:I

    .line 261
    invoke-virtual {v3, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 263
    goto :goto_4

    .line 266
    :cond_12
    invoke-virtual {v7, v1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 267
    invoke-virtual {v6, v1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 270
    iget p1, v2, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBackgroundDisableAlpha:I

    .line 273
    invoke-virtual {v3, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 275
    :goto_4
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;->invalidateSelf()V

    .line 278
    :cond_13
    if-nez v4, :cond_23

    .line 281
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 283
    if-nez p1, :cond_14

    .line 285
    iget-boolean p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 287
    if-eq v5, p1, :cond_23

    .line 289
    :cond_14
    iget-object p1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 291
    if-eqz p1, :cond_23

    .line 293
    iget-object v1, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 295
    iget-boolean v1, v1, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->touchAnimEnable:Z

    .line 297
    if-eqz v1, :cond_21

    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 301
    move-result-object v1

    .line 304
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 305
    move-result-object v2

    .line 308
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 309
    move-result-object v2

    .line 312
    if-eq v1, v2, :cond_15

    .line 313
    goto/16 :goto_6

    .line 315
    :cond_15
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 317
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 319
    move-result v1

    .line 322
    if-eqz v1, :cond_16

    .line 323
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 325
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 327
    :cond_16
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 330
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 332
    move-result v1

    .line 335
    if-eqz v1, :cond_17

    .line 336
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentPressAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 338
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 340
    :cond_17
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 343
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 345
    move-result v1

    .line 348
    if-eqz v1, :cond_18

    .line 349
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 351
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 353
    :cond_18
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 356
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 358
    move-result v1

    .line 361
    if-nez v1, :cond_19

    .line 362
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlackAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 364
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 366
    :cond_19
    if-eqz v5, :cond_1d

    .line 369
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 371
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 373
    move-result v1

    .line 376
    if-eqz v1, :cond_1a

    .line 377
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 379
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 381
    :cond_1a
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 384
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 386
    move-result v1

    .line 389
    if-nez v1, :cond_1b

    .line 390
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 392
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 394
    :cond_1b
    new-instance v1, Landroid/os/Handler;

    .line 397
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 399
    new-instance v2, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;

    .line 402
    invoke-direct {v2, p1}, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;-><init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V

    .line 404
    const-wide/16 v6, 0x32

    .line 407
    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    iget-boolean v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mIsSingleSelection:Z

    .line 412
    if-eqz v1, :cond_1c

    .line 414
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 416
    const/high16 v2, 0x41200000    # 10.0f

    .line 418
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 420
    goto :goto_5

    .line 423
    :cond_1c
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 424
    const/high16 v2, 0x40a00000    # 5.0f

    .line 426
    invoke-virtual {v1, v2}, Lmiuix/animation/physics/DynamicAnimation;->setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 428
    goto :goto_5

    .line 431
    :cond_1d
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 432
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 434
    move-result v1

    .line 437
    if-eqz v1, :cond_1e

    .line 438
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 440
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 442
    :cond_1e
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 445
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 447
    move-result v1

    .line 450
    if-nez v1, :cond_1f

    .line 451
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 453
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 455
    :cond_1f
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 458
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 460
    move-result v1

    .line 463
    if-nez v1, :cond_20

    .line 464
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 466
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 468
    :cond_20
    :goto_5
    iget-object p1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->unPressedScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 471
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 473
    goto :goto_7

    .line 476
    :cond_21
    :goto_6
    iget-object v1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 477
    const/high16 v2, 0x437f0000    # 255.0f

    .line 479
    if-eqz v5, :cond_22

    .line 481
    iget-object p1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 483
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 485
    move-result-object p1

    .line 488
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 489
    move-result p1

    .line 492
    mul-float/2addr p1, v2

    .line 493
    float-to-int p1, p1

    .line 494
    invoke-virtual {v1, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 495
    goto :goto_7

    .line 498
    :cond_22
    iget-object p1, p1, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mUnPressedBlueHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 499
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 501
    move-result-object p1

    .line 504
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringForce;->getFinalPosition()F

    .line 505
    move-result p1

    .line 508
    mul-float/2addr p1, v2

    .line 509
    float-to-int p1, p1

    .line 510
    invoke-virtual {v1, p1}, Lmiuix/internal/view/CheckWidgetCircleDrawable;->setAlpha(I)V

    .line 511
    :cond_23
    :goto_7
    iput-boolean v4, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPrePressed:Z

    .line 514
    iput-boolean v5, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mPreChecked:Z

    .line 516
    return v0
    .line 518
.end method

.method public final setBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(IIII)V

    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCheckWidgetDrawableBounds(IIII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz p0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setCheckWidgetDrawableBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 6
    iget-object p0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetDrawableAnims:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    if-eqz p0, :cond_0

    .line 7
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mGrayDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlackDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mBlueDrawable:Lmiuix/internal/view/CheckWidgetCircleDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->setConstantState$miuix$internal$view$CheckWidgetAnimatedStateListDrawable(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 2
    return-void
    .line 5
.end method

.method public final setConstantState$miuix$internal$view$CheckWidgetAnimatedStateListDrawable(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 2
    iget-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->newCheckWidgetConstantState()Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 13
    :cond_0
    iget-object p0, p0, Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;->mCheckWidgetConstantState:Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;

    .line 15
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetAnimatedStateListDrawable$CheckWidgetConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 17
    return-void
    .line 19
.end method
