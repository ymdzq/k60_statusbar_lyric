.class public final Lcom/android/systemui/navigationbar/NavigationBar$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;
.implements Lcom/android/systemui/statusbar/AutoHideUiElement;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOrientedHandleSamplingRegion:Landroid/graphics/Rect;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mSamplingBounds:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    .line 18
    move-result-object v1

    .line 21
    iget-object v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mCurrentView:Landroid/view/View;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [I

    .line 27
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 29
    new-instance v3, Landroid/graphics/Point;

    .line 32
    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 34
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 41
    move-result-object v4

    .line 44
    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 45
    new-instance v4, Landroid/graphics/Rect;

    .line 48
    const/4 v5, 0x0

    .line 50
    aget v6, v2, v5

    .line 51
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavColorSampleMargin:I

    .line 53
    sub-int/2addr v6, p0

    .line 55
    iget v7, v3, Landroid/graphics/Point;->y:I

    .line 56
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getNavBarHeight()I

    .line 58
    move-result v0

    .line 61
    sub-int/2addr v7, v0

    .line 62
    aget v0, v2, v5

    .line 63
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 65
    move-result v1

    .line 68
    add-int/2addr v1, v0

    .line 69
    add-int/2addr v1, p0

    .line 70
    iget p0, v3, Landroid/graphics/Point;->y:I

    .line 71
    invoke-direct {v4, v6, v7, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 76
    :cond_1
    return-object p1
    .line 79
.end method

.method public final hide()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 4
    if-eqz v0, :cond_2

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShownFromGestureOnSystemBar:Z

    .line 11
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 13
    iput-boolean v0, v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    .line 15
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAppearance:I

    .line 17
    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/NavBarHelper;->transitionMode(IZ)I

    .line 19
    move-result v1

    .line 22
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    .line 23
    if-eq v2, v1, :cond_1

    .line 25
    iput v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransitionMode:I

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    .line 29
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 36
    :cond_0
    const/4 v0, 0x1

    .line 39
    :cond_1
    if-eqz v0, :cond_2

    .line 40
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 42
    if-eqz p0, :cond_2

    .line 44
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 46
    const/16 v2, 0x10

    .line 48
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    .line 50
    move-result v0

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 54
    :cond_2
    return-void
    .line 56
.end method

.method public final isSamplingEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 8
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarMode:I

    .line 10
    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/Utils;->isGesturalModeOnDefaultDisplay(Landroid/content/Context;Lcom/android/systemui/settings/DisplayTracker;I)Z

    .line 12
    move-result p0

    .line 15
    return p0
    .line 16
.end method

.method public final isVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mTransientShown:Z

    .line 4
    return p0
    .line 6
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->mLightTransitionsController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 6
    const/4 v0, 0x1

    .line 8
    xor-int/2addr p1, v0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 10
    return-void
    .line 13
.end method

.method public final shouldHideOnTouch()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isRemoteInputActive()Z

    .line 6
    move-result p0

    .line 9
    xor-int/lit8 p0, p0, 0x1

    .line 10
    return p0
    .line 12
.end method

.method public final synchronizeState()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$1;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    .line 4
    return-void
    .line 7
.end method
