.class public Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "AccessibilityMenuService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;


# static fields
.field public static isReceiveA11yMenuInitBrodcast:Z


# instance fields
.field public a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

.field private accessibilityButtonCallback:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

.field private accessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

.field public audioManager:Landroid/media/AudioManager;

.field private isVisibleFlag:Z

.field private lastOrientation:I

.field public lastTimeTouchedOutside:J

.field private screenMonitor:Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;


# direct methods
.method static bridge synthetic -$$Nest$fputisVisibleFlag(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isVisibleFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->lastTimeTouchedOutside:J

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 49
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged: tempOrientation --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityMenuService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->lastOrientation:I

    if-ne p1, v0, :cond_1

    .line 52
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    iget-object v0, p1, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->windowManager:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    :cond_0
    new-instance p1, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    .line 59
    iget-boolean p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isVisibleFlag:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->addMainFrame(Z)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    if-nez v0, :cond_2

    return-void

    .line 64
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->updateMenuLayout()V

    .line 65
    iput p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->lastOrientation:I

    :goto_0
    return-void
.end method

.method public onInterrupt()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->hideMenu()Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onServiceConnected()V
    .locals 4

    const-string/jumbo v0, "window"

    .line 89
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->lastOrientation:I

    .line 91
    new-instance v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    .line 92
    iget-boolean v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isVisibleFlag:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->addMainFrame(Z)V

    .line 93
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getAccessibilityButtonController()Landroid/accessibilityservice/AccessibilityButtonController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->accessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

    .line 94
    new-instance v0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->accessibilityButtonCallback:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 107
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->accessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/AccessibilityButtonController;->registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    .line 108
    new-instance v0, Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->screenMonitor:Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;

    .line 109
    sget-object v1, Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;->STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/accessibilityservice/AccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 111
    sget-boolean v0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isReceiveA11yMenuInitBrodcast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 112
    sput-boolean v0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isReceiveA11yMenuInitBrodcast:Z

    .line 113
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->hideMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->lastTimeTouchedOutside:J

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->screenMonitor:Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->accessibilityButtonController:Landroid/accessibilityservice/AccessibilityButtonController;

    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->accessibilityButtonCallback:Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityButtonController;->unregisterAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    if-eqz v0, :cond_2

    .line 136
    :try_start_0
    iget-object v1, v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->windowManager:Landroid/view/WindowManager;

    iget-object v0, v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityMenuService"

    const-string/jumbo v2, "onUnbind --> removeView: "

    .line 138
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 141
    sput-boolean v0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isReceiveA11yMenuInitBrodcast:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isVisibleFlag:Z

    .line 143
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public screenShot()V
    .locals 1

    const/16 v0, 0x9

    .line 163
    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    return-void
.end method

.method public final screenTurnedOff()V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    if-nez p0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->hideMenu()Z

    return-void
.end method

.method public setMenuLayoutVisible()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isVisibleFlag:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibleFlag(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->isVisibleFlag:Z

    return-void
.end method

.method public final startActivityIfIntentIsSafe(Landroid/content/Intent;I)V
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
