.class public final Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$H;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$H;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    const/4 v3, 0x1

    .line 8
    if-eq v2, v3, :cond_1

    .line 9
    const/4 v3, 0x2

    .line 11
    if-eq v2, v3, :cond_0

    .line 12
    goto/16 :goto_0

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$H;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 16
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    check-cast v1, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;

    .line 20
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->listeners:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v1

    .line 30
    if-nez v1, :cond_5

    .line 31
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->mUserChangedCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$mUserChangedCallback$1;

    .line 33
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 35
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 37
    invoke-virtual {v2, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 39
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->settingsObserver:Lcom/miui/interfaces/SettingsObserver;

    .line 42
    invoke-virtual {v1, v0}, Lcom/miui/interfaces/SettingsObserver;->removeCallback(Lcom/miui/interfaces/SettingsObserver$Callback;)V

    .line 44
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 47
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->remoteOperationReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    .line 49
    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->screenOffReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardStateController:Ldagger/Lazy;

    .line 59
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 64
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 65
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 67
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 69
    goto/16 :goto_0

    .line 72
    :cond_1
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$H;->this$0:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 74
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    check-cast v1, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;

    .line 78
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->listeners:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 88
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;->onUseControlCenterChange(Z)V

    .line 90
    goto/16 :goto_0

    .line 93
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 98
    move-result v2

    .line 101
    if-ne v2, v3, :cond_4

    .line 102
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->mUserChangedCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$mUserChangedCallback$1;

    .line 104
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->context:Landroid/content/Context;

    .line 106
    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 108
    move-result-object v3

    .line 111
    iget-object v4, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 112
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 114
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 116
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitchController:Ldagger/Lazy;

    .line 119
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 124
    check-cast v2, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    .line 125
    iget-object v2, v2, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->listeners:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 129
    move-result v3

    .line 132
    if-nez v3, :cond_3

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_3
    const-string/jumbo v2, "use_control_panel"

    .line 138
    filled-new-array {v2}, [Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 144
    iget-object v3, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->settingsObserver:Lcom/miui/interfaces/SettingsObserver;

    .line 145
    invoke-virtual {v3, v0, v2}, Lcom/miui/interfaces/SettingsObserver;->addCallbackForUser(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;[Ljava/lang/String;)V

    .line 147
    const-string v2, "expandable_under_lock_screen"

    .line 150
    filled-new-array {v2}, [Ljava/lang/String;

    .line 152
    move-result-object v2

    .line 155
    invoke-virtual {v3, v0, v2}, Lcom/miui/interfaces/SettingsObserver;->addCallbackForUser(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;[Ljava/lang/String;)V

    .line 156
    new-instance v6, Landroid/content/IntentFilter;

    .line 159
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    const-string v2, "action_panels_operation"

    .line 164
    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v4, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 169
    iget-object v5, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->remoteOperationReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    .line 171
    const/4 v7, 0x0

    .line 173
    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 174
    const/4 v9, 0x0

    .line 176
    const/4 v10, 0x0

    .line 177
    const/16 v11, 0x30

    .line 178
    invoke-static/range {v4 .. v11}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 180
    new-instance v14, Landroid/content/IntentFilter;

    .line 183
    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 188
    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 193
    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v12, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 198
    iget-object v13, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->screenOffReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    .line 200
    const/4 v15, 0x0

    .line 202
    sget-object v16, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 203
    const/16 v17, 0x0

    .line 205
    const/16 v18, 0x0

    .line 207
    const/16 v19, 0x30

    .line 209
    invoke-static/range {v12 .. v19}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 211
    iget-object v2, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardStateController:Ldagger/Lazy;

    .line 214
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 216
    move-result-object v2

    .line 219
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 220
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 222
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 224
    :cond_4
    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 227
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;->onUseControlCenterChange(Z)V

    .line 229
    :cond_5
    :goto_0
    return-void
    .line 232
.end method
