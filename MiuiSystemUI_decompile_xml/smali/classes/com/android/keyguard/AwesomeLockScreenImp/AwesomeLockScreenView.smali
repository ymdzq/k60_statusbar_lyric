.class public Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;
.super Lcom/miui/maml/component/MamlView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mAccessibilityListener:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;

.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mAccessibilityServiceEnabled:Z

.field public mAccessibleNodeAdded:Z

.field public final mAddAccessibleNodeRunnable:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;

.field public mHasNavigationBar:Z

.field public mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public mPaused:Z

.field public mVirtualRoot:Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/AwesomeLockScreenImp/LockScreenRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityServiceEnabled:Z

    .line 8
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibleNodeAdded:Z

    .line 10
    new-instance p1, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;-><init>(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)V

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAddAccessibleNodeRunnable:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;

    .line 17
    new-instance p1, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;-><init>(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)V

    .line 21
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityListener:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;

    .line 24
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 26
    const-string p2, "accessibility"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 33
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    const-string/jumbo p1, "window"

    .line 38
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 41
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 45
    move-result-object p1

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    .line 53
    move-result p2

    .line 56
    :try_start_0
    invoke-interface {p1, p2}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    .line 57
    move-result p1

    .line 60
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    iget-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 65
    return-void
    .line 68
.end method

.method public static synthetic access$000(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public final finishRoot()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAddAccessibleNodeRunnable:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mVirtualRoot:Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-boolean v1, v0, Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;->mInited:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->finish()V

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mVirtualRoot:Lcom/android/keyguard/AwesomeLockScreenImp/AccessibleElementRoot;

    .line 22
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->finish()V

    .line 30
    return-void
    .line 33
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mPaused:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityListener:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 16
    return-void
    .line 19
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/component/MamlView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityListener:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$2;

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 6
    iget-boolean v0, v0, Lcom/android/systemui/shade/QuickSettingsController;->mExpanded:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x3

    .line 18
    const/4 v2, 0x1

    .line 19
    if-le v0, v2, :cond_1

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 22
    const-string v0, "AwesomeLockScreenView"

    .line 25
    const-string/jumbo v1, "touch point count > 1, set to ACTION_CANCEL"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mHasNavigationBar:Z

    .line 34
    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 38
    move-result v0

    .line 41
    if-eq v0, v1, :cond_2

    .line 42
    const/4 v1, 0x4

    .line 44
    if-ne v0, v1, :cond_3

    .line 45
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 47
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/maml/component/MamlView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 50
    move-result p0

    .line 53
    return p0
    .line 54
.end method

.method public setPanelView(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    return-void
    .line 4
.end method

.method public final updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 3
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    move-result p1

    .line 12
    if-lez p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityServiceEnabled:Z

    .line 18
    if-eq v0, p1, :cond_1

    .line 20
    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibilityServiceEnabled:Z

    .line 22
    if-eqz p1, :cond_1

    .line 24
    iget-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAccessibleNodeAdded:Z

    .line 26
    if-nez p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 30
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->isSupportAccessibilityService()Z

    .line 32
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 38
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAddAccessibleNodeRunnable:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 44
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 50
    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView;->mAddAccessibleNodeRunnable:Lcom/android/keyguard/AwesomeLockScreenImp/AwesomeLockScreenView$1;

    .line 54
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    :cond_1
    return-void
    .line 59
.end method
