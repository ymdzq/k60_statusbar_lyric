.class public final Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$PulseCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

.field public final synthetic val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field public final synthetic val$passiveAuthInterrupt:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeServiceHost;Lcom/android/systemui/doze/DozeUi$1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->val$passiveAuthInterrupt:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onPulseFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    .line 5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 7
    invoke-interface {v2}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 9
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 12
    check-cast v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    .line 16
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 19
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWakeLockScreenSensorActive(Z)V

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->setPulsing(Z)V

    .line 24
    return-void
    .line 27
.end method

.method public final onPulseStarted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->val$callback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 2
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 7
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateNotificationPanelTouchState()V

    .line 13
    const/4 v0, 0x1

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->setPulsing(Z)V

    .line 17
    return-void
    .line 20
.end method

.method public final setPulsing(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    .line 6
    if-eq v1, p1, :cond_0

    .line 8
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPulsing:Z

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationPanel:Lcom/android/systemui/shade/ShadeViewController;

    .line 17
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 19
    iput-boolean p1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    .line 21
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 25
    move-result v2

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    if-nez v2, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    .line 33
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    move v1, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v1, v3

    .line 41
    :goto_0
    if-eqz v1, :cond_2

    .line 42
    iput-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 44
    :cond_2
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    .line 46
    if-nez v2, :cond_3

    .line 48
    iget-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    .line 50
    if-nez v2, :cond_3

    .line 52
    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 54
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 56
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 58
    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulsing(ZZ)V

    .line 60
    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateKeyguardStatusViewAlignment(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 66
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 68
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 70
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mPulsing:Z

    .line 72
    if-eq v1, p1, :cond_5

    .line 74
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mPulsing:Z

    .line 76
    iget-object v1, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 78
    monitor-enter v1

    .line 80
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 81
    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mListeners:Ljava/util/ArrayList;

    .line 83
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    move-result-object v0

    .line 91
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    move-result v2

    .line 95
    if-eqz v2, :cond_4

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    move-result-object v2

    .line 101
    check-cast v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;

    .line 102
    iget-object v2, v2, Lcom/android/systemui/statusbar/SysuiStatusBarStateController$RankedListener;->mListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 104
    invoke-interface {v2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onPulsingChanged(Z)V

    .line 106
    goto :goto_1

    .line 109
    :cond_4
    monitor-exit v1

    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0

    .line 114
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 115
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    .line 117
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 119
    if-eqz v0, :cond_7

    .line 121
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->val$passiveAuthInterrupt:Z

    .line 123
    if-eqz v1, :cond_7

    .line 125
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    .line 127
    invoke-virtual {v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logAuthInterruptDetected(Z)V

    .line 129
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    .line 132
    if-ne v1, p1, :cond_6

    .line 134
    goto :goto_3

    .line 136
    :cond_6
    iput-boolean p1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    .line 137
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ON_REACH_GESTURE_ON_AOD:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 139
    const/4 v2, 0x2

    .line 141
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 142
    sget-object v1, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->WAKE:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    .line 145
    const-string v2, "onReach"

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    .line 149
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 152
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 154
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 156
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost$8;->this$0:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 163
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPulsing:Z

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 167
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    .line 169
    if-eqz p1, :cond_8

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    .line 173
    move-result p1

    .line 176
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    .line 177
    :cond_8
    return-void
    .line 180
.end method
