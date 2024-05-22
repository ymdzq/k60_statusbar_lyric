.class public Lcom/android/systemui/assist/ui/InvocationLightsView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;


# instance fields
.field public final mAssistInvocationLights:Ljava/util/ArrayList;

.field public final mDarkColor:I

.field public final mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field public final mLightColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mRegistered:Z

.field public final mScreenLocation:[I

.field public mUseNavBarColor:Z

.field public final mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    .line 7
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    const/4 p3, 0x2

    new-array p4, p3, [I

    .line 8
    iput-object p4, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    const/4 p4, 0x0

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 12
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 14
    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v3, v1

    .line 15
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 18
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    .line 20
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 22
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    if-eqz p2, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget p2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_1
    move v7, p2

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    .line 26
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 27
    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 28
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, p3, :cond_2

    goto :goto_2

    .line 29
    :cond_2
    iget p2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_3

    .line 30
    :cond_3
    :goto_2
    iget p2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_3
    move v8, p2

    .line 31
    new-instance p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    .line 32
    new-instance v5, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;

    invoke-direct {v5, p1}, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;-><init>(Landroid/content/Context;)V

    .line 33
    div-int/lit8 v6, v1, 0x2

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;-><init>(Landroid/content/Context;Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;III)V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    .line 34
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusBottom(Landroid/content/Context;)I

    move-result p2

    .line 35
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusTop(Landroid/content/Context;)I

    move-result p3

    .line 36
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 38
    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    invoke-virtual {p1, p3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    iget p1, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 41
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mViewHeight:I

    .line 42
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x7f04021a    # @attr/darkIconTheme

    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result p1

    .line 43
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p3, 0x7f04046c    # @attr/lightIconTheme

    invoke-static {p3, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result p2

    .line 44
    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0406c2    # @attr/singleToneColor

    .line 46
    invoke-static {p3, p1, p4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p3

    .line 47
    iput p3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mLightColor:I

    .line 48
    invoke-static {p2, p1, p4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    .line 49
    iput p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mDarkColor:I

    :goto_4
    const/4 p1, 0x4

    if-ge p4, p1, :cond_4

    .line 50
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-direct {p2}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method


# virtual methods
.method public final attemptRegisterNavBarListener()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    .line 17
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 24
    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    .line 26
    check-cast v1, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 33
    iget v0, v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->updateDarkness(F)V

    .line 37
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    .line 41
    :cond_2
    return-void
    .line 43
.end method

.method public final attemptUnregisterNavBarListener()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 6
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    .line 17
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    return-void

    .line 23
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 24
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 30
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    .line 34
    :cond_2
    return-void
    .line 36
.end method

.method public final onDarkIntensity(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->updateDarkness(F)V

    .line 2
    return-void
    .line 5
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    .line 7
    const/4 v1, 0x0

    .line 9
    aget v2, v0, v1

    .line 10
    neg-int v2, v2

    .line 12
    int-to-float v2, v2

    .line 13
    const/4 v3, 0x1

    .line 14
    aget v0, v0, v3

    .line 15
    neg-int v0, v0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object v0

    .line 31
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 42
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    .line 48
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 50
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 66
    const/4 v1, 0x3

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    .line 78
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 80
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 96
    const/4 v1, 0x2

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    .line 105
    :cond_1
    return-void
    .line 108
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mViewHeight:I

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 10
    return-void
    .line 13
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 13
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    .line 17
    iget p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    .line 19
    if-eq p1, p2, :cond_1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    const/4 p2, 0x1

    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    const/4 p2, 0x2

    .line 28
    if-eq p1, p2, :cond_0

    .line 29
    const/4 p2, 0x3

    .line 31
    if-eq p1, p2, :cond_0

    .line 32
    const-string p0, "Invalid rotation provided: "

    .line 34
    const-string p2, "PerimeterPathGuide"

    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->computeRegions()V

    .line 44
    :cond_1
    :goto_0
    return-void
    .line 47
.end method

.method public final renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v2, v0, v1

    .line 5
    if-lez v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    .line 9
    iget-object v3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    .line 11
    iget v4, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    .line 13
    add-float/2addr v0, v4

    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 19
    const/high16 v5, 0x3f800000    # 1.0f

    .line 22
    rem-float/2addr v4, v5

    .line 24
    add-float/2addr v4, v5

    .line 25
    rem-float/2addr v4, v5

    .line 26
    rem-float/2addr v0, v5

    .line 27
    add-float/2addr v0, v5

    .line 28
    rem-float/2addr v0, v5

    .line 29
    cmpl-float v6, v4, v0

    .line 30
    if-lez v6, :cond_0

    .line 32
    const/4 v6, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v6, 0x0

    .line 36
    :goto_0
    if-eqz v6, :cond_1

    .line 37
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    .line 39
    goto :goto_1

    .line 42
    :cond_1
    move v1, v4

    .line 43
    :goto_1
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget p1, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 49
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    .line 56
    invoke-virtual {p2, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    :cond_2
    return-void
    .line 61
.end method

.method public setColors(IIII)V
    .locals 2

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptUnregisterNavBarListener()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 8
    iget v1, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 9
    iput p1, v0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 10
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 11
    iget v0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 12
    iput p2, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 13
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 14
    iget p2, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 15
    iput p3, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 16
    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 17
    iget p1, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 18
    iput p4, p0, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    return-void
.end method

.method public setColors(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    .line 2
    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/InvocationLightsView;->attemptRegisterNavBarListener()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->setColors(IIII)V

    :goto_0
    return-void
.end method

.method public final setLight(FFI)V
    .locals 2

    .line 1
    if-ltz p3, :cond_0

    .line 2
    const/4 v0, 0x4

    .line 4
    if-lt p3, v0, :cond_1

    .line 5
    :cond_0
    const-string v0, "invalid invocation light index: "

    .line 7
    const-string v1, "InvocationLightsView"

    .line 9
    invoke-static {v0, p3, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    .line 22
    return-void
    .line 25
.end method

.method public final updateDarkness(F)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 6
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mLightColor:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mDarkColor:I

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result p1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v0

    .line 37
    const/4 v1, 0x1

    .line 38
    move v2, v1

    .line 39
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/systemui/assist/ui/EdgeLight;

    .line 50
    iget v4, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 52
    if-eq v4, p1, :cond_0

    .line 54
    move v4, v1

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v4, 0x0

    .line 58
    :goto_1
    iput p1, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    .line 59
    and-int/2addr v2, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 65
    :cond_2
    return-void
    .line 68
.end method
