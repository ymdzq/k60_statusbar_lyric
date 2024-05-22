.class public Lcom/android/systemui/navigationbar/gestural/NavigationHandle;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ButtonInterface;


# instance fields
.field public final mBottom:F

.field public final mDarkColor:I

.field public final mLightColor:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRadius:F

.field public mRequiresInvalidate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d54    # @dimen/navigation_handle_radius '1.85dp'

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    const v1, 0x7f070d52    # @dimen/navigation_handle_bottom '6.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    const v0, 0x7f04021a    # @attr/darkIconTheme

    .line 7
    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v0

    const v1, 0x7f04046c    # @attr/lightIconTheme

    .line 8
    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result v1

    .line 9
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 10
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f04039a    # @attr/homeHandleColor

    const/4 v0, 0x0

    .line 11
    invoke-static {v2, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v2

    .line 12
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 13
    invoke-static {v1, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v2

    .line 14
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    .line 15
    const-class v2, Lcom/miui/systemui/SettingsManager;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/SettingsManager;

    .line 16
    iget-boolean v2, v2, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    if-eqz v2, :cond_0

    .line 17
    invoke-static {v1, p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x67000000

    .line 18
    :goto_0
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final abortCurrentGesture()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 5
    move-result v0

    .line 8
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    .line 9
    const/high16 v2, 0x40000000    # 2.0f

    .line 11
    mul-float/2addr v1, v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 14
    move-result v2

    .line 17
    int-to-float v0, v0

    .line 18
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mBottom:F

    .line 19
    sub-float/2addr v0, v3

    .line 21
    sub-float v5, v0, v1

    .line 22
    const/4 v4, 0x0

    .line 24
    int-to-float v6, v2

    .line 25
    add-float v7, v5, v1

    .line 26
    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRadius:F

    .line 28
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 30
    move-object v3, p1

    .line 32
    move v8, v9

    .line 33
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 34
    return-void
    .line 37
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    const/4 v0, 0x0

    .line 5
    cmpl-float p1, p1, v0

    .line 6
    if-lez p1, :cond_0

    .line 8
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 10
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 17
    :cond_0
    return-void
    .line 20
.end method

.method public setDarkIntensity(F)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    .line 2
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mLightColor:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mDarkColor:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Integer;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 28
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 30
    move-result v0

    .line 33
    if-eq v0, p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 41
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    .line 47
    move-result p1

    .line 50
    const/4 v0, 0x0

    .line 51
    cmpl-float p1, p1, v0

    .line 52
    if-lez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mRequiresInvalidate:Z

    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultColor(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setDelayTouchFeedback(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setVertical(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
