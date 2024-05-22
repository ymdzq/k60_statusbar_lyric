.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onScreenTurnedOff()V
    .locals 2

    .line 1
    const-string v0, "CentralSurfaces#onScreenTurnedOff"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 9
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 11
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    .line 14
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 19
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 21
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCloseQsBeforeScreenOff:Z

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsController;->closeQs()V

    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCloseQsBeforeScreenOff:Z

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    .line 34
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 37
    return-void
    .line 40
.end method

.method public final onScreenTurnedOn()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const-string v0, "ScrimController"

    .line 23
    const-string v1, "Shorter blanking because screen turned on. All good."

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    .line 30
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda0;->run()V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final onScreenTurningOn()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;->this$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 4
    check-cast v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;

    .line 6
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    .line 14
    check-cast p0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 18
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    .line 20
    return-void
    .line 23
.end method
