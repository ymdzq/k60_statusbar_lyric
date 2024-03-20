.class public final Lcom/miui/systemui/controller/GestureObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBouncerShowing:Z

.field public final mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mCCListener:Lcom/miui/systemui/controller/GestureObserver$3;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mControlCenterExpand:Z

.field public volatile mFullscreenGesture:Z

.field public volatile mGestureLineEnable:Z

.field public final mHeadsUpChangedListener:Lcom/miui/systemui/controller/GestureObserver$2;

.field public mInPinnedMode:Z

.field public final mKeyguardCallback:Lcom/miui/systemui/controller/GestureObserver$1;

.field public mKeyguardDisable:Z

.field public mKeyguardOccluded:Z

.field public mKeyguardShowing:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNPEListener:Lcom/miui/systemui/controller/GestureObserver$4;

.field public mNotificationPanelExpand:Z

.field public mStatusBarExpand:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/miui/systemui/controller/GestureObserver$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/systemui/controller/GestureObserver$1;-><init>(Lcom/miui/systemui/controller/GestureObserver;)V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardCallback:Lcom/miui/systemui/controller/GestureObserver$1;

    .line 17
    new-instance v1, Lcom/miui/systemui/controller/GestureObserver$2;

    .line 19
    invoke-direct {v1, p0}, Lcom/miui/systemui/controller/GestureObserver$2;-><init>(Lcom/miui/systemui/controller/GestureObserver;)V

    .line 21
    iput-object v1, p0, Lcom/miui/systemui/controller/GestureObserver;->mHeadsUpChangedListener:Lcom/miui/systemui/controller/GestureObserver$2;

    .line 24
    new-instance v2, Lcom/miui/systemui/controller/GestureObserver$3;

    .line 26
    invoke-direct {v2, p0}, Lcom/miui/systemui/controller/GestureObserver$3;-><init>(Lcom/miui/systemui/controller/GestureObserver;)V

    .line 28
    iput-object v2, p0, Lcom/miui/systemui/controller/GestureObserver;->mCCListener:Lcom/miui/systemui/controller/GestureObserver$3;

    .line 31
    new-instance v3, Lcom/miui/systemui/controller/GestureObserver$4;

    .line 33
    invoke-direct {v3, p0}, Lcom/miui/systemui/controller/GestureObserver$4;-><init>(Lcom/miui/systemui/controller/GestureObserver;)V

    .line 35
    iput-object v3, p0, Lcom/miui/systemui/controller/GestureObserver;->mNPEListener:Lcom/miui/systemui/controller/GestureObserver$4;

    .line 38
    iput-object p1, p0, Lcom/miui/systemui/controller/GestureObserver;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/miui/systemui/controller/GestureObserver;->mMainHandler:Landroid/os/Handler;

    .line 42
    iput-object p5, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 44
    iput-object p4, p0, Lcom/miui/systemui/controller/GestureObserver;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 46
    new-instance p2, Lcom/miui/systemui/controller/GestureObserver$5;

    .line 48
    invoke-direct {p2, p0, p3}, Lcom/miui/systemui/controller/GestureObserver$5;-><init>(Lcom/miui/systemui/controller/GestureObserver;Landroid/os/Handler;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 53
    move-result-object p4

    .line 56
    const-string v4, "force_fsg_nav_bar"

    .line 57
    invoke-static {p4, v4}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 59
    move-result p4

    .line 62
    iput-boolean p4, p0, Lcom/miui/systemui/controller/GestureObserver;->mFullscreenGesture:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    move-result-object p4

    .line 68
    const-string v5, "hide_gesture_line"

    .line 69
    invoke-static {p4, v5}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 71
    move-result p4

    .line 74
    xor-int/lit8 p4, p4, 0x1

    .line 75
    iput-boolean p4, p0, Lcom/miui/systemui/controller/GestureObserver;->mGestureLineEnable:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 83
    move-result-object p4

    .line 86
    const/4 v4, 0x0

    .line 87
    const/4 v6, -0x1

    .line 88
    invoke-virtual {p0, p4, v4, p2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    move-result-object p0

    .line 95
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 96
    move-result-object p1

    .line 99
    invoke-virtual {p0, p1, v4, p2, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 100
    new-instance p0, Lcom/miui/systemui/controller/GestureObserver$6;

    .line 103
    invoke-direct {p0, p2}, Lcom/miui/systemui/controller/GestureObserver$6;-><init>(Lcom/miui/systemui/controller/GestureObserver$5;)V

    .line 105
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    check-cast p5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 111
    invoke-virtual {p5, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 113
    const-class p0, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 116
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 118
    move-result-object p0

    .line 121
    check-cast p0, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 122
    invoke-virtual {p0, v3}, Lcom/miui/systemui/functions/PanelExpansionObserver;->addCallback(Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;)V

    .line 124
    iget-object p0, p7, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    .line 127
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p6, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 132
    return-void
    .line 135
.end method


# virtual methods
.method public final sendFullscreenDisableBroadcast(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    const-string v1, "com.android.systemui.fsgesture"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    const-string/jumbo v1, "typeFrom"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    const-string p1, "isEnter"

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    const/high16 p1, 0x4000000

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    const/high16 p1, 0x10000000

    .line 28
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 33
    iget-object p0, p0, Lcom/miui/systemui/controller/GestureObserver;->mBroadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 37
    return-void
    .line 40
.end method

.method public final updateFullscreenDisableState()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mNotificationPanelExpand:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mControlCenterExpand:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mInPinnedMode:Z

    .line 10
    if-nez v0, :cond_1

    .line 12
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardShowing:Z

    .line 14
    if-nez v0, :cond_1

    .line 16
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    iget-boolean v1, p0, Lcom/miui/systemui/controller/GestureObserver;->mStatusBarExpand:Z

    .line 21
    if-eq v1, v0, :cond_2

    .line 23
    iput-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mStatusBarExpand:Z

    .line 25
    const-string/jumbo v1, "typefrom_status_bar_expansion"

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/miui/systemui/controller/GestureObserver;->sendFullscreenDisableBroadcast(Ljava/lang/String;Z)V

    .line 30
    :cond_2
    return-void
    .line 33
.end method

.method public final updateKeyguardFullscreenDisableState(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardShowing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardOccluded:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mBouncerShowing:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-boolean v1, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardDisable:Z

    .line 17
    if-ne v1, v0, :cond_1

    .line 19
    if-eqz p1, :cond_2

    .line 21
    :cond_1
    iput-boolean v0, p0, Lcom/miui/systemui/controller/GestureObserver;->mKeyguardDisable:Z

    .line 23
    const-string/jumbo p1, "typefrom_keyguard"

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/miui/systemui/controller/GestureObserver;->sendFullscreenDisableBroadcast(Ljava/lang/String;Z)V

    .line 28
    :cond_2
    return-void
    .line 31
.end method
