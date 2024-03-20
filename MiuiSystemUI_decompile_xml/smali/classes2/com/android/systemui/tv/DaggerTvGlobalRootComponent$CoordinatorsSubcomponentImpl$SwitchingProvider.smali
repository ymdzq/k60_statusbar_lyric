.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

.field public final id:I

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 9
    iput p4, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->id:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->id:I

    .line 4
    packed-switch v1, :pswitch_data_0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    .line 9
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->id:I

    .line 11
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 13
    throw v1

    .line 16
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 17
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 19
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;-><init>()V

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->injectMiuiTimeoutCoordinator(Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;)Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 24
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_1
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;

    .line 31
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->injectAodFocusController(Lcom/android/systemui/statusbar/notification/focus/AodFocusController;)Lcom/android/systemui/statusbar/notification/focus/AodFocusController;

    .line 36
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :pswitch_2
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;

    .line 41
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 43
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 50
    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 51
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 53
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->screenLifecycleProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 61
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 63
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeControllerImplProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 67
    move-result-object v4

    .line 70
    check-cast v4, Lcom/android/systemui/shade/ShadeController;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 73
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 75
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 81
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    .line 83
    return-object v1

    .line 86
    :pswitch_3
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 87
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 89
    iget-object v6, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 91
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 93
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationSettingsManagerProvider:Ljavax/inject/Provider;

    .line 95
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 97
    move-result-object v2

    .line 100
    move-object v7, v2

    .line 101
    check-cast v7, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 102
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 104
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 106
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 111
    move-object v8, v2

    .line 112
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 113
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 115
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationVisibilityProviderImplProvider:Ljavax/inject/Provider;

    .line 117
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 119
    move-result-object v2

    .line 122
    move-object v9, v2

    .line 123
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 124
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 126
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationListenerProvider:Ljavax/inject/Provider;

    .line 128
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 130
    move-result-object v2

    .line 133
    move-object v10, v2

    .line 134
    check-cast v10, Lcom/android/systemui/statusbar/NotificationListener;

    .line 135
    new-instance v11, Landroid/os/Handler;

    .line 137
    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    .line 139
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 142
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardNotificationControllerProvider:Ljavax/inject/Provider;

    .line 144
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 146
    move-result-object v2

    .line 149
    move-object v12, v2

    .line 150
    check-cast v12, Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;

    .line 151
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 153
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ljavax/inject/Provider;

    .line 155
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 157
    move-result-object v2

    .line 160
    move-object v13, v2

    .line 161
    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 162
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 164
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    .line 166
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 168
    move-result-object v2

    .line 171
    move-object v14, v2

    .line 172
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 173
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 175
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->superSaveModeControllerProvider:Ljavax/inject/Provider;

    .line 177
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 182
    move-object v15, v2

    .line 183
    check-cast v15, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 184
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 186
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 188
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 193
    move-object/from16 v16, v2

    .line 194
    check-cast v16, Lcom/android/systemui/dump/DumpManager;

    .line 196
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 198
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->hideDeletedFocusControllerProvider:Ljavax/inject/Provider;

    .line 200
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 202
    move-result-object v0

    .line 205
    move-object/from16 v17, v0

    .line 206
    check-cast v17, Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;

    .line 208
    move-object v5, v1

    .line 210
    invoke-direct/range {v5 .. v17}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;Lcom/android/systemui/statusbar/NotificationListener;Landroid/os/Handler;Lcom/android/systemui/statusbar/notification/policy/KeyguardNotificationController;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;Lcom/miui/systemui/controller/SuperSaveModeController;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/focus/HideDeletedFocusController;)V

    .line 211
    return-object v1

    .line 214
    :pswitch_4
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 215
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 217
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 219
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 221
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foldNotifManagerProvider:Ljavax/inject/Provider;

    .line 223
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 225
    move-result-object v3

    .line 228
    move-object/from16 v20, v3

    .line 229
    check-cast v20, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 231
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 233
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeExpansionStateManagerProvider:Ljavax/inject/Provider;

    .line 235
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 237
    move-result-object v3

    .line 240
    move-object/from16 v21, v3

    .line 241
    check-cast v21, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 243
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 245
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->unimportantNotifLoggerProvider:Ljavax/inject/Provider;

    .line 247
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 249
    move-result-object v3

    .line 252
    move-object/from16 v22, v3

    .line 253
    check-cast v22, Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 255
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 257
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionHeaderVisibilityProvider:Ljavax/inject/Provider;

    .line 259
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 261
    move-result-object v3

    .line 264
    move-object/from16 v23, v3

    .line 265
    check-cast v23, Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    .line 267
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 269
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foldNotifControllerProvider:Ljavax/inject/Provider;

    .line 271
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 273
    move-result-object v3

    .line 276
    move-object/from16 v24, v3

    .line 277
    check-cast v24, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;

    .line 279
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 281
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 283
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 285
    move-result-object v3

    .line 288
    move-object/from16 v25, v3

    .line 289
    check-cast v25, Lcom/android/systemui/settings/UserTracker;

    .line 291
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 293
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->settingsManagerProvider:Ljavax/inject/Provider;

    .line 295
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 297
    move-result-object v3

    .line 300
    move-object/from16 v26, v3

    .line 301
    check-cast v26, Lcom/miui/systemui/SettingsManager;

    .line 303
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 305
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 307
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 309
    move-result-object v0

    .line 312
    move-object/from16 v27, v0

    .line 313
    check-cast v27, Landroid/os/Handler;

    .line 315
    move-object/from16 v18, v1

    .line 317
    move-object/from16 v19, v2

    .line 319
    invoke-direct/range {v18 .. v27}, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/log/UnimportantNotifLogger;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifController;Lcom/android/systemui/settings/UserTracker;Lcom/miui/systemui/SettingsManager;Landroid/os/Handler;)V

    .line 321
    return-object v1

    .line 324
    :pswitch_5
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 325
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 327
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->miuiAlertManagerProvider:Ljavax/inject/Provider;

    .line 329
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 331
    move-result-object v0

    .line 334
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;

    .line 335
    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;-><init>(Ldagger/Lazy;)V

    .line 337
    invoke-virtual {v1, v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->injectAlertCoordinator(Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;

    .line 340
    move-result-object v0

    .line 343
    return-object v0

    .line 344
    :pswitch_6
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 345
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 347
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 349
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 351
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 353
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 355
    move-result-object v3

    .line 358
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 359
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 361
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationVisibilityProviderImplProvider:Ljavax/inject/Provider;

    .line 363
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 365
    move-result-object v0

    .line 368
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;

    .line 369
    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;

    .line 371
    invoke-direct {v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/collection/render/NotificationVisibilityProvider;)V

    .line 373
    invoke-virtual {v1, v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->injectCountLimitCoordinator(Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;

    .line 376
    move-result-object v0

    .line 379
    return-object v0

    .line 380
    :pswitch_7
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 381
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 383
    iget-object v4, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 385
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 387
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    .line 389
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 391
    move-result-object v2

    .line 394
    move-object v5, v2

    .line 395
    check-cast v5, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 396
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 398
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBgHandlerProvider:Ljavax/inject/Provider;

    .line 400
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 402
    move-result-object v2

    .line 405
    check-cast v2, Landroid/os/Handler;

    .line 406
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 408
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ljavax/inject/Provider;

    .line 410
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 412
    move-result-object v2

    .line 415
    move-object v6, v2

    .line 416
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 417
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 419
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideUserTrackerProvider:Ljavax/inject/Provider;

    .line 421
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 423
    move-result-object v2

    .line 426
    move-object v7, v2

    .line 427
    check-cast v7, Lcom/android/systemui/settings/UserTracker;

    .line 428
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 430
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->miuiBadgeManagerProvider:Ljavax/inject/Provider;

    .line 432
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 434
    move-result-object v0

    .line 437
    move-object v8, v0

    .line 438
    check-cast v8, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 439
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;

    .line 441
    move-object v3, v0

    .line 443
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;)V

    .line 444
    invoke-virtual {v1, v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->injectBadgeCoordinator(Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;)Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;

    .line 447
    move-result-object v0

    .line 450
    return-object v0

    .line 451
    :pswitch_8
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 452
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 454
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 456
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;-><init>(Landroid/content/Context;)V

    .line 458
    return-object v1

    .line 461
    :pswitch_9
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    .line 462
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 464
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 466
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 468
    move-result-object v2

    .line 471
    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 472
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 474
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationDismissibilityProviderImplProvider:Ljavax/inject/Provider;

    .line 476
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 478
    move-result-object v0

    .line 481
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;

    .line 482
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/collection/provider/NotificationDismissibilityProviderImpl;)V

    .line 484
    return-object v1

    .line 487
    :pswitch_a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 488
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 490
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 492
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appLockHelperProvider:Ljavax/inject/Provider;

    .line 494
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 496
    move-result-object v1

    .line 499
    move-object v4, v1

    .line 500
    check-cast v4, Lcom/miui/systemui/statusbar/phone/AppLockHelper;

    .line 501
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 503
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->dynamicPrivacyControllerProvider:Ljavax/inject/Provider;

    .line 505
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 507
    move-result-object v1

    .line 510
    move-object v5, v1

    .line 511
    check-cast v5, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 512
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 514
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 516
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 518
    move-result-object v1

    .line 521
    move-object v6, v1

    .line 522
    check-cast v6, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 523
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 525
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 527
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 529
    move-result-object v1

    .line 532
    move-object v7, v1

    .line 533
    check-cast v7, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 534
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 536
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 538
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 540
    move-result-object v1

    .line 543
    move-object v8, v1

    .line 544
    check-cast v8, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 545
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 547
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardStateControllerImplProvider:Ljavax/inject/Provider;

    .line 549
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 551
    move-result-object v0

    .line 554
    move-object v9, v0

    .line 555
    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 556
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    .line 558
    move-object v2, v0

    .line 560
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;-><init>(Landroid/content/Context;Lcom/miui/systemui/statusbar/phone/AppLockHelper;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    .line 561
    return-object v0

    .line 564
    :pswitch_b
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    .line 565
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 567
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->configurationControllerImplProvider:Ljavax/inject/Provider;

    .line 569
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 571
    move-result-object v2

    .line 574
    check-cast v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 575
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 577
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 579
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 581
    move-result-object v3

    .line 584
    check-cast v3, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 585
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 587
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 589
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 591
    move-result-object v4

    .line 594
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 595
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 597
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 599
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 601
    move-result-object v0

    .line 604
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 605
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 607
    return-object v1

    .line 610
    :pswitch_c
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    .line 611
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 613
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 615
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 617
    move-result-object v2

    .line 620
    move-object v6, v2

    .line 621
    check-cast v6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 622
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 624
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->lockscreenSmartspaceControllerProvider:Ljavax/inject/Provider;

    .line 626
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 628
    move-result-object v2

    .line 631
    move-object v7, v2

    .line 632
    check-cast v7, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 633
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 635
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    .line 637
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 639
    move-result-object v2

    .line 642
    move-object v8, v2

    .line 643
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 644
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 646
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 648
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 650
    move-result-object v2

    .line 653
    move-object v9, v2

    .line 654
    check-cast v9, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 655
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 657
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 659
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 661
    move-result-object v0

    .line 664
    move-object v10, v0

    .line 665
    check-cast v10, Lcom/android/systemui/util/time/SystemClock;

    .line 666
    move-object v5, v1

    .line 668
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;-><init>(Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V

    .line 669
    return-object v1

    .line 672
    :pswitch_d
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;

    .line 673
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 675
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->groupExpansionManagerImplProvider:Ljavax/inject/Provider;

    .line 677
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 679
    move-result-object v2

    .line 682
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;

    .line 683
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 685
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationIconAreaControllerProvider:Ljavax/inject/Provider;

    .line 687
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 689
    move-result-object v0

    .line 692
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 693
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManagerImpl;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;)V

    .line 695
    return-object v1

    .line 698
    :pswitch_e
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    .line 699
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 701
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 703
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 705
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->assistantFeedbackControllerProvider:Ljavax/inject/Provider;

    .line 707
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 709
    move-result-object v3

    .line 712
    check-cast v3, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 713
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 715
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionStyleProvider:Ljavax/inject/Provider;

    .line 717
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 719
    move-result-object v0

    .line 722
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    .line 723
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;)V

    .line 725
    return-object v1

    .line 728
    :pswitch_f
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    .line 729
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 731
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 733
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 735
    move-result-object v2

    .line 738
    move-object v5, v2

    .line 739
    check-cast v5, Lcom/android/systemui/dump/DumpManager;

    .line 740
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 742
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->remoteInputNotificationRebuilderProvider:Ljavax/inject/Provider;

    .line 744
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 746
    move-result-object v2

    .line 749
    move-object v6, v2

    .line 750
    check-cast v6, Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;

    .line 751
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 753
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 755
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 757
    move-result-object v2

    .line 760
    move-object v7, v2

    .line 761
    check-cast v7, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 762
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 764
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainHandlerProvider:Ljavax/inject/Provider;

    .line 766
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 768
    move-result-object v2

    .line 771
    move-object v8, v2

    .line 772
    check-cast v8, Landroid/os/Handler;

    .line 773
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 775
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideSmartReplyControllerProvider:Ljavax/inject/Provider;

    .line 777
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 779
    move-result-object v0

    .line 782
    move-object v9, v0

    .line 783
    check-cast v9, Lcom/android/systemui/statusbar/SmartReplyController;

    .line 784
    move-object v4, v1

    .line 786
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;-><init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/RemoteInputNotificationRebuilder;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/SmartReplyController;)V

    .line 787
    return-object v1

    .line 790
    :pswitch_10
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 791
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 793
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->preparationCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;

    .line 795
    move-result-object v11

    .line 798
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 799
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflaterImplProvider:Ljavax/inject/Provider;

    .line 801
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 803
    move-result-object v2

    .line 806
    move-object v12, v2

    .line 807
    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;

    .line 808
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 810
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifInflationErrorManagerProvider:Ljavax/inject/Provider;

    .line 812
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 814
    move-result-object v2

    .line 817
    move-object v13, v2

    .line 818
    check-cast v13, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 819
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 821
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifViewBarnProvider:Ljavax/inject/Provider;

    .line 823
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 825
    move-result-object v2

    .line 828
    move-object v14, v2

    .line 829
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    .line 830
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 832
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifUiAdjustmentProvider:Ljavax/inject/Provider;

    .line 834
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 836
    move-result-object v2

    .line 839
    move-object v15, v2

    .line 840
    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;

    .line 841
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 843
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 845
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 847
    move-result-object v2

    .line 850
    move-object/from16 v16, v2

    .line 851
    check-cast v16, Lcom/android/internal/statusbar/IStatusBarService;

    .line 853
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 855
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindEventManagerImplProvider:Ljavax/inject/Provider;

    .line 857
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 859
    move-result-object v0

    .line 862
    move-object/from16 v17, v0

    .line 863
    check-cast v17, Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 865
    move-object v10, v1

    .line 867
    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinatorLogger;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifInflater;Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/inflation/NotifUiAdjustmentProvider;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;)V

    .line 868
    return-object v1

    .line 871
    :pswitch_11
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    .line 872
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 874
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->mediaFeatureFlag()Lcom/android/systemui/media/controls/util/MediaFeatureFlag;

    .line 876
    move-result-object v2

    .line 879
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 880
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIStatusBarServiceProvider:Ljavax/inject/Provider;

    .line 882
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 884
    move-result-object v3

    .line 887
    check-cast v3, Lcom/android/internal/statusbar/IStatusBarService;

    .line 888
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 890
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->iconManager()Lcom/android/systemui/statusbar/notification/icon/IconManager;

    .line 892
    move-result-object v0

    .line 895
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;-><init>(Lcom/android/systemui/media/controls/util/MediaFeatureFlag;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/notification/icon/IconManager;)V

    .line 896
    return-object v1

    .line 899
    :pswitch_12
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    .line 900
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 902
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 904
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 906
    move-result-object v2

    .line 909
    check-cast v2, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 910
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 912
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 914
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 916
    move-result-object v0

    .line 919
    check-cast v0, Lcom/android/systemui/util/time/SystemClock;

    .line 920
    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V

    .line 922
    return-object v1

    .line 925
    :pswitch_13
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;

    .line 926
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;-><init>()V

    .line 928
    return-object v0

    .line 931
    :pswitch_14
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    .line 932
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 934
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->debugModeFilterProvider:Ljavax/inject/Provider;

    .line 936
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 938
    move-result-object v0

    .line 941
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    .line 942
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;)V

    .line 944
    return-object v1

    .line 947
    :pswitch_15
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 948
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 950
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleNotificationIdentifierImplProvider:Ljavax/inject/Provider;

    .line 952
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 954
    move-result-object v2

    .line 957
    check-cast v2, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    .line 958
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 960
    invoke-virtual {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->iconManager()Lcom/android/systemui/statusbar/notification/icon/IconManager;

    .line 962
    move-result-object v3

    .line 965
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 966
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    .line 968
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 970
    move-result-object v4

    .line 973
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 974
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 976
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->peopleHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 978
    move-result-object v0

    .line 981
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;Lcom/android/systemui/statusbar/notification/icon/IconManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 982
    return-object v1

    .line 985
    :pswitch_16
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    .line 986
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 988
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationGutsManagerProvider:Ljavax/inject/Provider;

    .line 990
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 992
    move-result-object v2

    .line 995
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;

    .line 996
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 998
    invoke-virtual {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->gutsCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    .line 1000
    move-result-object v3

    .line 1003
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1004
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1006
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1008
    move-result-object v0

    .line 1011
    check-cast v0, Lcom/android/systemui/dump/DumpManager;

    .line 1012
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NotifGutsViewManager;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;Lcom/android/systemui/dump/DumpManager;)V

    .line 1014
    return-object v1

    .line 1017
    :pswitch_17
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 1018
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1020
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->headsUpCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    .line 1022
    move-result-object v5

    .line 1025
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1026
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bindSystemClockProvider:Ljavax/inject/Provider;

    .line 1028
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1030
    move-result-object v2

    .line 1033
    move-object v6, v2

    .line 1034
    check-cast v6, Lcom/android/systemui/util/time/SystemClock;

    .line 1035
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1037
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 1039
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1041
    move-result-object v2

    .line 1044
    move-object v7, v2

    .line 1045
    check-cast v7, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1046
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1048
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->headsUpViewBinderProvider:Ljavax/inject/Provider;

    .line 1050
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1052
    move-result-object v2

    .line 1055
    move-object v8, v2

    .line 1056
    check-cast v8, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 1057
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1059
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideVisualInterruptionDecisionProvider:Ljavax/inject/Provider;

    .line 1061
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1063
    move-result-object v2

    .line 1066
    move-object v9, v2

    .line 1067
    check-cast v9, Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;

    .line 1068
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1070
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideNotificationRemoteInputManagerProvider:Ljavax/inject/Provider;

    .line 1072
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1074
    move-result-object v2

    .line 1077
    move-object v10, v2

    .line 1078
    check-cast v10, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 1079
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1081
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->launchFullScreenIntentProvider:Ljavax/inject/Provider;

    .line 1083
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1085
    move-result-object v2

    .line 1088
    move-object v11, v2

    .line 1089
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;

    .line 1090
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1092
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineFlags()Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    .line 1094
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1097
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->incomingHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 1099
    move-result-object v12

    .line 1102
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1103
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->focusedNotifPromptControllerProvider:Ljavax/inject/Provider;

    .line 1105
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1107
    move-result-object v2

    .line 1110
    move-object v13, v2

    .line 1111
    check-cast v13, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 1112
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1114
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 1116
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1118
    move-result-object v0

    .line 1121
    move-object v14, v0

    .line 1122
    check-cast v14, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 1123
    move-object v4, v1

    .line 1125
    invoke-direct/range {v4 .. v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/VisualInterruptionDecisionProvider;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/provider/LaunchFullScreenIntentProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 1126
    return-object v1

    .line 1129
    :pswitch_18
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiBubbleCoordinator;

    .line 1130
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1132
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideMiuiBubbleManagerProvider:Ljavax/inject/Provider;

    .line 1134
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1136
    move-result-object v2

    .line 1139
    check-cast v2, Ljava/util/Optional;

    .line 1140
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1142
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 1144
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1146
    move-result-object v0

    .line 1149
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 1150
    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiBubbleCoordinator;-><init>()V

    .line 1152
    return-object v1

    .line 1155
    :pswitch_19
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    .line 1156
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1158
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideBubblesManagerProvider:Ljavax/inject/Provider;

    .line 1160
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1162
    move-result-object v2

    .line 1165
    check-cast v2, Ljava/util/Optional;

    .line 1166
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1168
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->setBubbles:Ljava/util/Optional;

    .line 1170
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifCollectionProvider:Ljavax/inject/Provider;

    .line 1172
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1174
    move-result-object v0

    .line 1177
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 1178
    invoke-direct {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;-><init>(Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;)V

    .line 1180
    return-object v1

    .line 1183
    :pswitch_1a
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    .line 1184
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1186
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->providesDeviceProvisionedControllerProvider:Ljavax/inject/Provider;

    .line 1188
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1190
    move-result-object v2

    .line 1193
    check-cast v2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 1194
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1196
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIPackageManagerProvider:Ljavax/inject/Provider;

    .line 1198
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1200
    move-result-object v0

    .line 1203
    check-cast v0, Landroid/content/pm/IPackageManager;

    .line 1204
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    .line 1206
    return-object v1

    .line 1209
    :pswitch_1b
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    .line 1210
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1212
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->foregroundServiceControllerProvider:Ljavax/inject/Provider;

    .line 1214
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1216
    move-result-object v2

    .line 1219
    check-cast v2, Lcom/android/systemui/ForegroundServiceController;

    .line 1220
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1222
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->appOpsControllerImplProvider:Ljavax/inject/Provider;

    .line 1224
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1226
    move-result-object v3

    .line 1229
    check-cast v3, Lcom/android/systemui/appops/AppOpsController;

    .line 1230
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1232
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideMainDelayableExecutorProvider:Ljavax/inject/Provider;

    .line 1234
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1236
    move-result-object v0

    .line 1239
    check-cast v0, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 1240
    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;-><init>(Lcom/android/systemui/ForegroundServiceController;)V

    .line 1242
    return-object v1

    .line 1245
    :pswitch_1c
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    .line 1246
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1248
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1250
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1252
    move-result-object v2

    .line 1255
    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1256
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1258
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->highPriorityProvider:Ljavax/inject/Provider;

    .line 1260
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1262
    move-result-object v3

    .line 1265
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    .line 1266
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1268
    invoke-virtual {v3}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->alertingHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 1270
    move-result-object v3

    .line 1273
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1274
    invoke-virtual {v4}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->silentHeaderSectionHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 1276
    move-result-object v4

    .line 1279
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1280
    invoke-virtual {v0}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->silentHeaderNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    .line 1282
    move-result-object v0

    .line 1285
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;-><init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    .line 1286
    return-object v1

    .line 1289
    :pswitch_1d
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 1290
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1292
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->bgDispatcherProvider:Ljavax/inject/Provider;

    .line 1294
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1296
    move-result-object v2

    .line 1299
    move-object v6, v2

    .line 1300
    check-cast v6, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 1301
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1303
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 1305
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1307
    move-result-object v2

    .line 1310
    move-object v7, v2

    .line 1311
    check-cast v7, Lcom/android/systemui/dump/DumpManager;

    .line 1312
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1314
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideHeadsUpManagerPhoneProvider:Ljavax/inject/Provider;

    .line 1316
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1318
    move-result-object v2

    .line 1321
    move-object v8, v2

    .line 1322
    check-cast v8, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 1323
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1325
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardNotificationVisibilityProviderImplProvider:Ljavax/inject/Provider;

    .line 1327
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1329
    move-result-object v2

    .line 1332
    move-object v9, v2

    .line 1333
    check-cast v9, Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;

    .line 1334
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1336
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardRepositoryImplProvider:Ljavax/inject/Provider;

    .line 1338
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1340
    move-result-object v2

    .line 1343
    move-object v10, v2

    .line 1344
    check-cast v10, Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    .line 1345
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1347
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->keyguardTransitionRepositoryImplProvider:Ljavax/inject/Provider;

    .line 1349
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1351
    move-result-object v2

    .line 1354
    move-object v11, v2

    .line 1355
    check-cast v11, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 1356
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1358
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->keyguardCoordinatorLogger()Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;

    .line 1360
    move-result-object v12

    .line 1363
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1364
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineFlags()Lcom/android/systemui/statusbar/notification/NotifPipelineFlags;

    .line 1366
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1369
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->applicationScopeProvider:Ljavax/inject/Provider;

    .line 1371
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1373
    move-result-object v2

    .line 1376
    move-object v13, v2

    .line 1377
    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    .line 1378
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1380
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionHeaderVisibilityProvider:Ljavax/inject/Provider;

    .line 1382
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1384
    move-result-object v2

    .line 1387
    move-object v14, v2

    .line 1388
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    .line 1389
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1391
    invoke-virtual {v2}, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->secureSettingsImpl()Ljava/lang/Object;

    .line 1393
    move-result-object v2

    .line 1396
    move-object v15, v2

    .line 1397
    check-cast v15, Lcom/android/systemui/util/settings/SecureSettings;

    .line 1398
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1400
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->seenNotificationsProviderImplProvider:Ljavax/inject/Provider;

    .line 1402
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1404
    move-result-object v2

    .line 1407
    move-object/from16 v16, v2

    .line 1408
    check-cast v16, Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;

    .line 1410
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1412
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->statusBarStateControllerImplProvider:Ljavax/inject/Provider;

    .line 1414
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1416
    move-result-object v2

    .line 1419
    move-object/from16 v17, v2

    .line 1420
    check-cast v17, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1422
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1424
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifPipelineProvider:Ljavax/inject/Provider;

    .line 1426
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1428
    move-result-object v2

    .line 1431
    move-object/from16 v18, v2

    .line 1432
    check-cast v18, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 1434
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1436
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->provideGroupMembershipManagerProvider:Ljavax/inject/Provider;

    .line 1438
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1440
    move-result-object v0

    .line 1443
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;

    .line 1444
    move-object v5, v1

    .line 1446
    invoke-direct/range {v5 .. v18}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/interruption/KeyguardNotificationVisibilityProviderImpl;Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinatorLogger;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/notification/collection/provider/SeenNotificationsProviderImpl;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V

    .line 1447
    return-object v1

    .line 1450
    :pswitch_1e
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;

    .line 1451
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1453
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notificationLockscreenUserManagerImplProvider:Ljavax/inject/Provider;

    .line 1455
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1457
    move-result-object v0

    .line 1460
    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 1461
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;-><init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V

    .line 1463
    return-object v1

    .line 1466
    :pswitch_1f
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;

    .line 1467
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;-><init>()V

    .line 1469
    return-object v0

    .line 1472
    :pswitch_20
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    .line 1473
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1475
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->notifLiveDataStoreImplProvider:Ljavax/inject/Provider;

    .line 1477
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1479
    move-result-object v0

    .line 1482
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;

    .line 1483
    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotifLiveDataStoreImpl;)V

    .line 1485
    return-object v1

    .line 1488
    :pswitch_21
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;

    .line 1489
    move-object v2, v1

    .line 1491
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1492
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->sectionStyleProvider:Ljavax/inject/Provider;

    .line 1494
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1496
    move-result-object v3

    .line 1499
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;

    .line 1500
    iget-object v4, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1502
    iget-object v4, v4, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->dataStoreCoordinatorProvider:Ljavax/inject/Provider;

    .line 1504
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1506
    move-result-object v4

    .line 1509
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;

    .line 1510
    iget-object v5, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1512
    iget-object v5, v5, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideLocallyDismissedNotifsCoordinatorProvider:Ljavax/inject/Provider;

    .line 1514
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1516
    move-result-object v5

    .line 1519
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;

    .line 1520
    iget-object v6, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1522
    iget-object v6, v6, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->hideNotifsForOtherUsersCoordinatorProvider:Ljavax/inject/Provider;

    .line 1524
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1526
    move-result-object v6

    .line 1529
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;

    .line 1530
    iget-object v7, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1532
    iget-object v7, v7, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->keyguardCoordinatorProvider:Ljavax/inject/Provider;

    .line 1534
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1536
    move-result-object v7

    .line 1539
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;

    .line 1540
    iget-object v8, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1542
    iget-object v8, v8, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->rankingCoordinatorProvider:Ljavax/inject/Provider;

    .line 1544
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1546
    move-result-object v8

    .line 1549
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;

    .line 1550
    iget-object v9, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1552
    iget-object v9, v9, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->appOpsCoordinatorProvider:Ljavax/inject/Provider;

    .line 1554
    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1556
    move-result-object v9

    .line 1559
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;

    .line 1560
    iget-object v10, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1562
    iget-object v10, v10, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->deviceProvisionedCoordinatorProvider:Ljavax/inject/Provider;

    .line 1564
    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1566
    move-result-object v10

    .line 1569
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;

    .line 1570
    iget-object v11, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1572
    iget-object v11, v11, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->bubbleCoordinatorProvider:Ljavax/inject/Provider;

    .line 1574
    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1576
    move-result-object v11

    .line 1579
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;

    .line 1580
    iget-object v12, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1582
    iget-object v12, v12, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->miuiBubbleCoordinatorProvider:Ljavax/inject/Provider;

    .line 1584
    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1586
    move-result-object v12

    .line 1589
    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiBubbleCoordinator;

    .line 1590
    iget-object v13, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1592
    iget-object v13, v13, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->headsUpCoordinatorProvider:Ljavax/inject/Provider;

    .line 1594
    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1596
    move-result-object v13

    .line 1599
    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 1600
    iget-object v14, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1602
    iget-object v14, v14, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->gutsCoordinatorProvider:Ljavax/inject/Provider;

    .line 1604
    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1606
    move-result-object v14

    .line 1609
    check-cast v14, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    .line 1610
    iget-object v15, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1612
    iget-object v15, v15, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->conversationCoordinatorProvider:Ljavax/inject/Provider;

    .line 1614
    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1616
    move-result-object v15

    .line 1619
    check-cast v15, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;

    .line 1620
    move-object/from16 v40, v1

    .line 1622
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1624
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->debugModeCoordinatorProvider:Ljavax/inject/Provider;

    .line 1626
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1628
    move-result-object v1

    .line 1631
    move-object/from16 v16, v1

    .line 1632
    check-cast v16, Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;

    .line 1634
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1636
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupCountCoordinatorProvider:Ljavax/inject/Provider;

    .line 1638
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1640
    move-result-object v1

    .line 1643
    move-object/from16 v17, v1

    .line 1644
    check-cast v17, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;

    .line 1646
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1648
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->groupWhenCoordinatorProvider:Ljavax/inject/Provider;

    .line 1650
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1652
    move-result-object v1

    .line 1655
    move-object/from16 v18, v1

    .line 1656
    check-cast v18, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    .line 1658
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1660
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->mediaCoordinatorProvider:Ljavax/inject/Provider;

    .line 1662
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1664
    move-result-object v1

    .line 1667
    move-object/from16 v19, v1

    .line 1668
    check-cast v19, Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;

    .line 1670
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1672
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->preparationCoordinatorProvider:Ljavax/inject/Provider;

    .line 1674
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1676
    move-result-object v1

    .line 1679
    move-object/from16 v20, v1

    .line 1680
    check-cast v20, Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;

    .line 1682
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1684
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->remoteInputCoordinatorProvider:Ljavax/inject/Provider;

    .line 1686
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1688
    move-result-object v1

    .line 1691
    move-object/from16 v21, v1

    .line 1692
    check-cast v21, Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;

    .line 1694
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1696
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->rowAppearanceCoordinatorProvider:Ljavax/inject/Provider;

    .line 1698
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1700
    move-result-object v1

    .line 1703
    move-object/from16 v22, v1

    .line 1704
    check-cast v22, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;

    .line 1706
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1708
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->stackCoordinatorProvider:Ljavax/inject/Provider;

    .line 1710
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1712
    move-result-object v1

    .line 1715
    move-object/from16 v23, v1

    .line 1716
    check-cast v23, Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;

    .line 1718
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1720
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->shadeEventCoordinatorProvider:Ljavax/inject/Provider;

    .line 1722
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1724
    move-result-object v1

    .line 1727
    move-object/from16 v24, v1

    .line 1728
    check-cast v24, Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;

    .line 1730
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1732
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->smartspaceDedupingCoordinatorProvider:Ljavax/inject/Provider;

    .line 1734
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1736
    move-result-object v1

    .line 1739
    move-object/from16 v25, v1

    .line 1740
    check-cast v25, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;

    .line 1742
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1744
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->viewConfigCoordinatorProvider:Ljavax/inject/Provider;

    .line 1746
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1748
    move-result-object v1

    .line 1751
    move-object/from16 v26, v1

    .line 1752
    check-cast v26, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;

    .line 1754
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1756
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->visualStabilityCoordinatorProvider:Ljavax/inject/Provider;

    .line 1758
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1760
    move-result-object v1

    .line 1763
    move-object/from16 v27, v1

    .line 1764
    check-cast v27, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    .line 1766
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1768
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->sensitiveContentCoordinatorImplProvider:Ljavax/inject/Provider;

    .line 1770
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1772
    move-result-object v1

    .line 1775
    move-object/from16 v28, v1

    .line 1776
    check-cast v28, Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;

    .line 1778
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1780
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->dismissibilityCoordinatorProvider:Ljavax/inject/Provider;

    .line 1782
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1784
    move-result-object v1

    .line 1787
    move-object/from16 v29, v1

    .line 1788
    check-cast v29, Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;

    .line 1790
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1792
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->usbNotificationCoordinatorProvider:Ljavax/inject/Provider;

    .line 1794
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1796
    move-result-object v1

    .line 1799
    move-object/from16 v30, v1

    .line 1800
    check-cast v30, Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;

    .line 1802
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1804
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->badgeCoordinatorProvider:Ljavax/inject/Provider;

    .line 1806
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1808
    move-result-object v1

    .line 1811
    move-object/from16 v31, v1

    .line 1812
    check-cast v31, Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;

    .line 1814
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1816
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->countLimitCoordinatorProvider:Ljavax/inject/Provider;

    .line 1818
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1820
    move-result-object v1

    .line 1823
    move-object/from16 v32, v1

    .line 1824
    check-cast v32, Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;

    .line 1826
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1828
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->alertCoordinatorProvider:Ljavax/inject/Provider;

    .line 1830
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1832
    move-result-object v1

    .line 1835
    move-object/from16 v33, v1

    .line 1836
    check-cast v33, Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;

    .line 1838
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1840
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->foldCoordinatorProvider:Ljavax/inject/Provider;

    .line 1842
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1844
    move-result-object v1

    .line 1847
    move-object/from16 v34, v1

    .line 1848
    check-cast v34, Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;

    .line 1850
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1852
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->miuiNotifCoordinatorProvider:Ljavax/inject/Provider;

    .line 1854
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1856
    move-result-object v1

    .line 1859
    move-object/from16 v35, v1

    .line 1860
    check-cast v35, Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;

    .line 1862
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1864
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->dynamicFpsCoordinatorProvider:Ljavax/inject/Provider;

    .line 1866
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1868
    move-result-object v1

    .line 1871
    move-object/from16 v36, v1

    .line 1872
    check-cast v36, Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;

    .line 1874
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->tvSysUIComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;

    .line 1876
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvSysUIComponentImpl;->focusCoordinatorProvider:Ljavax/inject/Provider;

    .line 1878
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1880
    move-result-object v1

    .line 1883
    move-object/from16 v37, v1

    .line 1884
    check-cast v37, Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;

    .line 1886
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1888
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->aodFocusControllerProvider:Ljavax/inject/Provider;

    .line 1890
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1892
    move-result-object v1

    .line 1895
    move-object/from16 v38, v1

    .line 1896
    check-cast v38, Lcom/android/systemui/statusbar/notification/focus/AodFocusController;

    .line 1898
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl$SwitchingProvider;->coordinatorsSubcomponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;

    .line 1900
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$CoordinatorsSubcomponentImpl;->miuiTimeoutCoordinatorProvider:Ljavax/inject/Provider;

    .line 1902
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1904
    move-result-object v0

    .line 1907
    move-object/from16 v39, v0

    .line 1908
    check-cast v39, Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;

    .line 1910
    invoke-direct/range {v2 .. v39}, Lcom/android/systemui/statusbar/notification/collection/coordinator/NotifCoordinatorsImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/provider/SectionStyleProvider;Lcom/android/systemui/statusbar/notification/collection/coordinator/DataStoreCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HideLocallyDismissedNotifsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HideNotifsForOtherUsersCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RankingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/AppOpsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DeviceProvisionedCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/BubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiBubbleCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DebugModeCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupCountCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/MediaCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/PreparationCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RemoteInputCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/StackCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ShadeEventCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/SensitiveContentCoordinatorImpl;Lcom/android/systemui/statusbar/notification/collection/coordinator/DismissibilityCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/UsbNotificationCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/BadgeCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/CountLimitCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/AlertCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/FoldCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/MiuiNotifCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/DynamicFpsCoordinator;Lcom/android/systemui/statusbar/notification/focus/FocusCoordinator;Lcom/android/systemui/statusbar/notification/focus/AodFocusController;Lcom/android/systemui/statusbar/notification/focus/MiuiTimeoutCoordinator;)V

    .line 1912
    return-object v40

    .line 1915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 1916
.end method
