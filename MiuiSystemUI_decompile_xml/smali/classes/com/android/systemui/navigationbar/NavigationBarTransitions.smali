.class public final Lcom/android/systemui/navigationbar/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# instance fields
.field public final mAllowAutoDimWallpaperNotVisible:Z

.field public mAutoDim:Z

.field public final mDarkIntensityListeners:Ljava/util/List;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field public mLightsOut:Z

.field public final mListeners:Ljava/util/List;

.field public mNavBarMode:I

.field public mNavButtons:Landroid/view/View;

.field public final mView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public mWallpaperVisible:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarView;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 1

    .line 1
    const v0, 0x7f081694    # @drawable/nav_background 'res/drawable-hdpi/nav_background.9.png'

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(ILandroid/view/View;)V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mListeners:Ljava/util/List;

    .line 13
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarMode:I

    .line 16
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 18
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$Factory;->create(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;)Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 20
    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 24
    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 26
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p2

    .line 35
    const p3, 0x7f05003e    # @bool/config_navigation_bar_enable_auto_dim_no_visible_wallpaper 'true'

    .line 36
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 39
    move-result p2

    .line 42
    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    .line 43
    new-instance p2, Ljava/util/ArrayList;

    .line 45
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    .line 50
    new-instance p2, Lcom/android/systemui/navigationbar/NavigationBarTransitions$$ExternalSyntheticLambda0;

    .line 52
    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarTransitions;)V

    .line 54
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->getCurrentView()Landroid/view/View;

    .line 60
    move-result-object p1

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const p2, 0x7f0a0675    # @id/nav_buttons

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object p1

    .line 72
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    .line 73
    :cond_0
    return-void
    .line 75
.end method


# virtual methods
.method public final applyDarkIntensity(F)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 8
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    sub-int/2addr v2, v3

    .line 13
    :goto_0
    if-ltz v2, :cond_0

    .line 14
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    move-result-object v4

    .line 19
    check-cast v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 20
    invoke-virtual {v4, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setDarkIntensity(F)V

    .line 22
    add-int/lit8 v2, v2, -0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/shared/rotation/RotationButtonController;

    .line 28
    move-result-object v0

    .line 31
    iget-object v0, v0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mRotationButton:Lcom/android/systemui/shared/rotation/RotationButton;

    .line 32
    invoke-interface {v0, p1}, Lcom/android/systemui/shared/rotation/RotationButton;->setDarkIntensity(F)V

    .line 34
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDarkIntensityListeners:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v0

    .line 42
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;

    .line 53
    invoke-interface {v1, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;->onDarkIntensity(F)V

    .line 55
    goto :goto_1

    .line 58
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    .line 59
    if-eqz p1, :cond_2

    .line 61
    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 64
    :cond_2
    return-void
    .line 67
.end method

.method public final applyLightsOut(ZZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 2
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    const/4 v1, 0x6

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    move v1, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move v1, v3

    .line 15
    :goto_1
    if-nez v1, :cond_2

    .line 16
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAllowAutoDimWallpaperNotVisible:Z

    .line 18
    if-eqz v1, :cond_3

    .line 20
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    .line 22
    if-eqz v1, :cond_3

    .line 24
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mWallpaperVisible:Z

    .line 26
    if-nez v1, :cond_3

    .line 28
    const/4 v1, 0x5

    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    :cond_2
    move v2, v3

    .line 33
    :cond_3
    if-nez p2, :cond_4

    .line 34
    iget-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOut:Z

    .line 36
    if-ne v2, p2, :cond_4

    .line 38
    goto :goto_4

    .line 40
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightsOut:Z

    .line 41
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    .line 43
    if-nez p2, :cond_5

    .line 45
    goto :goto_4

    .line 47
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 48
    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 52
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 55
    iget p2, p2, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 57
    const/high16 v0, 0x41200000    # 10.0f

    .line 59
    div-float/2addr p2, v0

    .line 61
    if-eqz v2, :cond_6

    .line 62
    const v0, 0x3f19999a    # 0.6f

    .line 64
    add-float/2addr p2, v0

    .line 67
    goto :goto_2

    .line 68
    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 69
    :goto_2
    if-nez p1, :cond_7

    .line 71
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    .line 73
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 75
    goto :goto_4

    .line 78
    :cond_7
    if-eqz v2, :cond_8

    .line 79
    const/16 p1, 0x5dc

    .line 81
    goto :goto_3

    .line 83
    :cond_8
    const/16 p1, 0xfa

    .line 84
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavButtons:Landroid/view/View;

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 88
    move-result-object p0

    .line 91
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 92
    move-result-object p0

    .line 95
    int-to-long p1, p1

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 97
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 101
    :goto_4
    return-void
    .line 104
.end method

.method public final getTintAnimationDuration()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 8
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarMode:I

    .line 10
    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    const/16 p0, 0x190

    .line 18
    const/16 v0, 0x12c

    .line 20
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/16 p0, 0x78

    .line 27
    return p0
    .line 29
.end method

.method public final onTransition(IIZ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IZ)V

    .line 2
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mListeners:Ljava/util/List;

    .line 9
    check-cast p0, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result p3

    .line 20
    if-eqz p3, :cond_1

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object p3

    .line 26
    check-cast p3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda6;

    .line 27
    iget-object p3, p3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 29
    iget-object v0, p3, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    .line 31
    const/4 v1, 0x4

    .line 33
    if-ne p2, v1, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->stop()V

    .line 36
    iget-object p3, p3, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 39
    iget-object p3, p3, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 41
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    iget-object p3, p3, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    .line 48
    invoke-virtual {v0, p3}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_1
    return-void
    .line 54
.end method

.method public final setAutoDim(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 10
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mNavBarMode:I

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    .line 21
    if-ne v0, p1, :cond_1

    .line 23
    return-void

    .line 25
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mAutoDim:Z

    .line 26
    const/4 p1, 0x1

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->applyLightsOut(ZZ)V

    .line 30
    return-void
    .line 33
.end method
