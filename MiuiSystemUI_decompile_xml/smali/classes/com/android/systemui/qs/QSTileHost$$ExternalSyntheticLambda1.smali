.class public final synthetic Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/QSTileHost;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSTileHost;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto/16 :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSTileHost;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Ljava/util/Collection;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v1, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;

    .line 19
    const/4 v2, 0x2

    .line 21
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    .line 25
    return-void

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSTileHost;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 31
    check-cast p0, Ljavax/inject/Provider;

    .line 33
    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mHostExt:Lcom/android/systemui/qs/QSTileHostExt;

    .line 35
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 37
    const-string v4, "QSTileHostExt"

    .line 39
    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 41
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->pluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 44
    const-class v4, Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;

    .line 46
    invoke-interface {v3, v2, v4, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 48
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 51
    iget-boolean v3, v3, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 53
    iput-boolean v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->superSaveMode:Z

    .line 55
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 57
    invoke-virtual {v3, v2}, Lcom/miui/systemui/controller/SuperSaveModeController;->addCallback(Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;)V

    .line 59
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 62
    invoke-virtual {v3, v2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;)V

    .line 64
    iget-object v3, v2, Lcom/android/systemui/qs/QSTileHostExt;->bgHandler:Landroid/os/Handler;

    .line 67
    new-instance v4, Lcom/android/systemui/qs/QSTileHostExt$init$1;

    .line 69
    const/4 v5, 0x0

    .line 71
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/qs/QSTileHostExt$init$1;-><init>(Lcom/android/systemui/qs/QSTileHostExt;I)V

    .line 72
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    new-instance v3, Lcom/android/systemui/qs/QSTileHostExt$init$1;

    .line 78
    invoke-direct {v3, v2, v1}, Lcom/android/systemui/qs/QSTileHostExt$init$1;-><init>(Lcom/android/systemui/qs/QSTileHostExt;I)V

    .line 80
    iget-object v1, v2, Lcom/android/systemui/qs/QSTileHostExt;->bgHandler:Landroid/os/Handler;

    .line 83
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    iget-object v1, v2, Lcom/android/systemui/qs/QSTileHostExt;->googleTilesController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 88
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->miuiOperatorCustomizedPolicy:Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 90
    iget-object v3, v3, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrierListeners:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v3, "persist.sys.cota.carrier"

    .line 97
    const-string v4, ""

    .line 99
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 104
    iput-object v3, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->cotaCarrier:Ljava/lang/String;

    .line 105
    const-string/jumbo v3, "ro.miui.customized.region"

    .line 107
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v3

    .line 113
    iput-object v3, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->region:Ljava/lang/String;

    .line 114
    const-string v3, "persist.sys.carrier.name"

    .line 116
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 121
    iput-object v3, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->carrierName:Ljava/lang/String;

    .line 122
    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->getCarrierSupported()Z

    .line 124
    move-result v3

    .line 127
    invoke-virtual {v1, v3}, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->setListening(Z)V

    .line 128
    iget-object v3, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->updateRunnable:Lcom/android/systemui/controlcenter/policy/GoogleTilesController$updateRunnable$1;

    .line 131
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/GoogleTilesController;->bgHandler:Landroid/os/Handler;

    .line 133
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    iget-object v1, v2, Lcom/android/systemui/qs/QSTileHostExt;->voWifiTilesController:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 138
    iget-object v6, v1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 140
    iget-object v7, v1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->receiver:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;

    .line 142
    new-instance v8, Landroid/content/IntentFilter;

    .line 144
    const-string v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 146
    invoke-direct {v8, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v9, v1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 151
    const/4 v10, 0x0

    .line 153
    const/4 v11, 0x0

    .line 154
    const/4 v12, 0x0

    .line 155
    const/16 v13, 0x38

    .line 156
    invoke-static/range {v6 .. v13}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 158
    new-instance v3, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;

    .line 161
    invoke-direct {v3, v1, v5}, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;-><init>(Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;I)V

    .line 163
    iget-object v1, v1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->bgExecutor:Ljava/util/concurrent/Executor;

    .line 166
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 168
    iget-object v1, v2, Lcom/android/systemui/qs/QSTileHostExt;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 171
    const-string/jumbo v3, "sysui_qs_tiles"

    .line 173
    filled-new-array {v3}, [Ljava/lang/String;

    .line 176
    move-result-object v3

    .line 179
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 180
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 183
    move-result-object p0

    .line 186
    check-cast p0, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 187
    iput-object p0, v0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 189
    return-void

    .line 191
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSTileHost;

    .line 192
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 194
    check-cast p0, Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    new-instance v2, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;

    .line 201
    invoke-direct {v2, v1, p0}, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 203
    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    .line 206
    return-void

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSTileHost;

    .line 210
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 212
    check-cast p0, Landroid/content/ComponentName;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    .line 219
    iget-object v2, v0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 221
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 223
    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 226
    move-result-object p0

    .line 229
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 230
    move-result p0

    .line 233
    if-eqz p0, :cond_0

    .line 234
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/qs/QSTileHost;->changeTilesByUser(Ljava/util/List;Ljava/util/List;)V

    .line 236
    :cond_0
    return-void

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 240
.end method
