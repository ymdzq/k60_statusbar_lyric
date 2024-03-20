.class public final Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final id:I

.field public final tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

.field public final tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 7
    iput p3, p0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->id:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->id:I

    .line 4
    const/16 v2, 0xa

    .line 6
    const/4 v3, 0x0

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    new-instance v1, Ljava/lang/AssertionError;

    .line 12
    iget v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->id:I

    .line 14
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    .line 16
    throw v1

    .line 19
    :pswitch_0
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideMiuiFreeformControllerProvider:Ljavax/inject/Provider;

    .line 22
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Optional;

    .line 28
    const/4 v1, 0x6

    .line 30
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 31
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    :pswitch_1
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    .line 36
    invoke-direct {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;-><init>()V

    .line 38
    return-object v0

    .line 41
    :pswitch_2
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    .line 42
    invoke-direct {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;-><init>()V

    .line 44
    return-object v0

    .line 47
    :pswitch_3
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 48
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowDecorRectControllerProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 56
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;->asWindowDecorRectDispatcher()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectDispatcher;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 62
    move-result-object v0

    .line 65
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 66
    return-object v0

    .line 69
    :pswitch_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 70
    move-result-object v0

    .line 73
    sget-boolean v1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 74
    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    .line 78
    invoke-direct {v1, v3}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 83
    move-result-object v0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 88
    move-result-object v0

    .line 91
    :goto_0
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 92
    return-object v0

    .line 95
    :pswitch_5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 96
    move-result-object v0

    .line 99
    sget-boolean v1, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_SUPPORTED:Z

    .line 100
    if-eqz v1, :cond_1

    .line 102
    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    .line 104
    const/4 v2, 0x1

    .line 106
    invoke-direct {v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 110
    move-result-object v0

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 115
    move-result-object v0

    .line 118
    :goto_1
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 119
    return-object v0

    .line 122
    :pswitch_6
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 123
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDesktopModeControllerProvider:Ljavax/inject/Provider;

    .line 125
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 130
    check-cast v1, Ljava/util/Optional;

    .line 131
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 133
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesDesktopTasksControllerProvider:Ljavax/inject/Provider;

    .line 135
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 137
    move-result-object v0

    .line 140
    check-cast v0, Ljava/util/Optional;

    .line 141
    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDesktopModeFactory;->provideDesktopMode(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;

    .line 143
    move-result-object v0

    .line 146
    return-object v0

    .line 147
    :pswitch_7
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 148
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 150
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 152
    move-result-object v0

    .line 155
    check-cast v0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 156
    new-instance v1, Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 158
    invoke-direct {v1, v0}, Lcom/android/wm/shell/back/BackAnimationBackground;-><init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    .line 160
    return-object v1

    .line 163
    :pswitch_8
    new-instance v0, Landroid/os/HandlerThread;

    .line 164
    const-string/jumbo v1, "wmshell.background"

    .line 166
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 172
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 175
    move-result-object v0

    .line 178
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 179
    return-object v0

    .line 182
    :pswitch_9
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 183
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 185
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 187
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 189
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 191
    move-result-object v1

    .line 194
    move-object v7, v1

    .line 195
    check-cast v7, Lcom/android/wm/shell/sysui/ShellInit;

    .line 196
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 198
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 200
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 202
    move-result-object v1

    .line 205
    move-object v6, v1

    .line 206
    check-cast v6, Lcom/android/wm/shell/sysui/ShellController;

    .line 207
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 209
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 211
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 213
    move-result-object v1

    .line 216
    move-object v5, v1

    .line 217
    check-cast v5, Lcom/android/wm/shell/common/ShellExecutor;

    .line 218
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 220
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSharedBackgroundHandlerProvider:Ljavax/inject/Provider;

    .line 222
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 224
    move-result-object v1

    .line 227
    move-object v3, v1

    .line 228
    check-cast v3, Landroid/os/Handler;

    .line 229
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 231
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBackAnimationBackgroundProvider:Ljavax/inject/Provider;

    .line 233
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 235
    move-result-object v0

    .line 238
    move-object v4, v0

    .line 239
    check-cast v4, Lcom/android/wm/shell/back/BackAnimationBackground;

    .line 240
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationControllerFactory;->provideBackAnimationController(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellInit;)Ljava/util/Optional;

    .line 242
    move-result-object v0

    .line 245
    return-object v0

    .line 246
    :pswitch_a
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 247
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideBackAnimationControllerProvider:Ljavax/inject/Provider;

    .line 249
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 251
    move-result-object v0

    .line 254
    check-cast v0, Ljava/util/Optional;

    .line 255
    invoke-static {v2, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 257
    move-result-object v0

    .line 260
    return-object v0

    .line 261
    :pswitch_b
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 262
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 264
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 266
    move-result-object v0

    .line 269
    check-cast v0, Ljava/util/Optional;

    .line 270
    const/4 v1, 0x2

    .line 272
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 273
    move-result-object v0

    .line 276
    return-object v0

    .line 277
    :pswitch_c
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 278
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 280
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 282
    move-result-object v0

    .line 285
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 286
    new-instance v1, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 288
    invoke-direct {v1, v0}, Lcom/android/wm/shell/RootDisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 290
    return-object v1

    .line 293
    :pswitch_d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 294
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 296
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 298
    move-result-object v1

    .line 301
    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    .line 302
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 304
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 306
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 308
    move-result-object v0

    .line 311
    check-cast v0, Lcom/android/wm/shell/RootDisplayAreaOrganizer;

    .line 312
    new-instance v2, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;

    .line 314
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/displayareahelper/DisplayAreaHelperController;-><init>(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/RootDisplayAreaOrganizer;)V

    .line 316
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 319
    move-result-object v0

    .line 322
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 323
    return-object v0

    .line 326
    :pswitch_e
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 327
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    .line 329
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 331
    move-result-object v0

    .line 334
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 335
    iget-object v0, v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;->mImpl:Lcom/android/wm/shell/startingsurface/StartingWindowController$StartingSurfaceImpl;

    .line 337
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 339
    move-result-object v0

    .line 342
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 343
    return-object v0

    .line 346
    :pswitch_f
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 347
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 349
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 351
    move-result-object v1

    .line 354
    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 355
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 357
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 359
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 361
    move-result-object v2

    .line 364
    check-cast v2, Lcom/android/wm/shell/transition/Transitions;

    .line 365
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 367
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 369
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 371
    move-result-object v3

    .line 374
    check-cast v3, Landroid/os/Handler;

    .line 375
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 377
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 379
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 381
    move-result-object v0

    .line 384
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 385
    new-instance v3, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 387
    invoke-direct {v3, v1, v2, v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 389
    return-object v3

    .line 392
    :pswitch_10
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 393
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideKeyguardTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 395
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 397
    move-result-object v0

    .line 400
    check-cast v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    .line 401
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    new-instance v1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;

    .line 406
    invoke-direct {v1, v0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$KeyguardTransitionsImpl;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    .line 408
    return-object v1

    .line 411
    :pswitch_11
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 412
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 414
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 416
    move-result-object v0

    .line 419
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 420
    iget-object v0, v0, Lcom/android/wm/shell/transition/Transitions;->mImpl:Lcom/android/wm/shell/transition/Transitions$ShellTransitionImpl;

    .line 422
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 424
    return-object v0

    .line 427
    :pswitch_12
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 428
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 430
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 432
    move-result-object v0

    .line 435
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 436
    new-instance v1, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 438
    invoke-direct {v1, v0}, Lcom/android/wm/shell/taskview/TaskViewTransitions;-><init>(Lcom/android/wm/shell/transition/Transitions;)V

    .line 440
    return-object v1

    .line 443
    :pswitch_13
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 444
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 446
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 448
    move-result-object v1

    .line 451
    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 452
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 454
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 456
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 458
    move-result-object v2

    .line 461
    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    .line 462
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 464
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 466
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 468
    move-result-object v3

    .line 471
    check-cast v3, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 472
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 474
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewTransitionsProvider:Ljavax/inject/Provider;

    .line 476
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 478
    move-result-object v0

    .line 481
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewTransitions;

    .line 482
    new-instance v4, Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 484
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/taskview/TaskViewFactoryController;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/taskview/TaskViewTransitions;)V

    .line 486
    return-object v4

    .line 489
    :pswitch_14
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 490
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTaskViewFactoryControllerProvider:Ljavax/inject/Provider;

    .line 492
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 494
    move-result-object v0

    .line 497
    check-cast v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;

    .line 498
    iget-object v0, v0, Lcom/android/wm/shell/taskview/TaskViewFactoryController;->mImpl:Lcom/android/wm/shell/taskview/TaskViewFactoryController$TaskViewFactoryImpl;

    .line 500
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 502
    move-result-object v0

    .line 505
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 506
    return-object v0

    .line 509
    :pswitch_15
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 510
    move-result-object v0

    .line 513
    const/4 v1, 0x5

    .line 514
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 515
    move-result-object v0

    .line 518
    return-object v0

    .line 519
    :pswitch_16
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 520
    move-result-object v0

    .line 523
    const/16 v1, 0x9

    .line 524
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 526
    move-result-object v0

    .line 529
    return-object v0

    .line 530
    :pswitch_17
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 531
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 533
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 535
    move-result-object v0

    .line 538
    check-cast v0, Ljava/util/Optional;

    .line 539
    const/4 v1, 0x3

    .line 541
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 542
    move-result-object v0

    .line 545
    return-object v0

    .line 546
    :pswitch_18
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 547
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    .line 549
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 551
    move-result-object v0

    .line 554
    check-cast v0, Ljava/util/Optional;

    .line 555
    const/16 v1, 0xb

    .line 557
    invoke-static {v1, v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WMComponentImpl$SwitchingProvider$$ExternalSyntheticOutline0;->m(ILjava/util/Optional;)Ljava/util/Optional;

    .line 559
    move-result-object v0

    .line 562
    return-object v0

    .line 563
    :pswitch_19
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 564
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 566
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 568
    move-result-object v1

    .line 571
    check-cast v1, Lcom/android/wm/shell/sysui/ShellInit;

    .line 572
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 574
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 576
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 578
    move-result-object v0

    .line 581
    check-cast v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 582
    new-instance v2, Lcom/android/wm/shell/ProtoLogController;

    .line 584
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/ProtoLogController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    .line 586
    return-object v2

    .line 589
    :pswitch_1a
    new-instance v0, Lcom/android/wm/shell/startingsurface/tv/TvStartingWindowTypeAlgorithm;

    .line 590
    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/tv/TvStartingWindowTypeAlgorithm;-><init>()V

    .line 592
    return-object v0

    .line 595
    :pswitch_1b
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 596
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowTypeAlgorithmProvider:Ljavax/inject/Provider;

    .line 598
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 600
    move-result-object v0

    .line 603
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 604
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 606
    move-result-object v0

    .line 609
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    .line 610
    move-result v1

    .line 613
    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 616
    move-result-object v0

    .line 619
    check-cast v0, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 620
    goto :goto_2

    .line 622
    :cond_2
    new-instance v0, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;

    .line 623
    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;-><init>()V

    .line 625
    :goto_2
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 628
    return-object v0

    .line 631
    :pswitch_1c
    new-instance v0, Landroid/os/HandlerThread;

    .line 632
    const-string/jumbo v1, "wmshell.splashscreen"

    .line 634
    const/16 v2, -0xa

    .line 637
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 639
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 642
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 645
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 647
    move-result-object v0

    .line 650
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 651
    return-object v1

    .line 654
    :pswitch_1d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 655
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 657
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 659
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 661
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 663
    move-result-object v1

    .line 666
    move-object v4, v1

    .line 667
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 668
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 670
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 672
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 674
    move-result-object v1

    .line 677
    move-object v5, v1

    .line 678
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 679
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 681
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 683
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 685
    move-result-object v1

    .line 688
    move-object v6, v1

    .line 689
    check-cast v6, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 690
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 692
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplashScreenExecutorProvider:Ljavax/inject/Provider;

    .line 694
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 696
    move-result-object v1

    .line 699
    move-object v7, v1

    .line 700
    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    .line 701
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 703
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowTypeAlgorithmProvider2:Ljavax/inject/Provider;

    .line 705
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 707
    move-result-object v1

    .line 710
    move-object v8, v1

    .line 711
    check-cast v8, Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;

    .line 712
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 714
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 716
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 718
    move-result-object v1

    .line 721
    move-object v9, v1

    .line 722
    check-cast v9, Lcom/android/launcher3/icons/IconProvider;

    .line 723
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 725
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 727
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 729
    move-result-object v0

    .line 732
    move-object v10, v0

    .line 733
    check-cast v10, Lcom/android/wm/shell/common/TransactionPool;

    .line 734
    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 736
    move-object v2, v0

    .line 738
    invoke-direct/range {v2 .. v10}, Lcom/android/wm/shell/startingsurface/StartingWindowController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V

    .line 739
    return-object v0

    .line 742
    :pswitch_1e
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 743
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 745
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 747
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 749
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 751
    move-result-object v2

    .line 754
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 755
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 757
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 759
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 761
    move-result-object v0

    .line 764
    check-cast v0, Lcom/android/wm/shell/transition/Transitions;

    .line 765
    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    .line 767
    if-eqz v3, :cond_3

    .line 769
    new-instance v3, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;

    .line 771
    invoke-direct {v3, v1, v2, v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/transition/Transitions;)V

    .line 773
    goto :goto_3

    .line 776
    :cond_3
    const/4 v3, 0x0

    .line 777
    :goto_3
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 778
    move-result-object v0

    .line 781
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 782
    return-object v0

    .line 785
    :pswitch_1f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 786
    move-result-object v0

    .line 789
    const-string v1, "ro.support_one_handed_mode"

    .line 790
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 792
    move-result v1

    .line 795
    if-eqz v1, :cond_4

    .line 796
    goto :goto_4

    .line 798
    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 799
    move-result-object v0

    .line 802
    :goto_4
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 803
    return-object v0

    .line 806
    :pswitch_20
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 807
    move-result-object v0

    .line 810
    sget-boolean v1, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->IS_SUPPORTED:Z

    .line 811
    if-eqz v1, :cond_5

    .line 813
    goto :goto_5

    .line 815
    :cond_5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 816
    move-result-object v0

    .line 819
    :goto_5
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 820
    return-object v0

    .line 823
    :pswitch_21
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 824
    move-result-object v0

    .line 827
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 828
    move-result v1

    .line 831
    if-eqz v1, :cond_6

    .line 832
    goto :goto_6

    .line 834
    :cond_6
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 835
    move-result-object v0

    .line 838
    :goto_6
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 839
    return-object v0

    .line 842
    :pswitch_22
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 843
    move-result-object v0

    .line 846
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeStatus;->isEnabled()Z

    .line 847
    move-result v1

    .line 850
    if-eqz v1, :cond_7

    .line 851
    goto :goto_7

    .line 853
    :cond_7
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 854
    move-result-object v0

    .line 857
    :goto_7
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 858
    return-object v0

    .line 861
    :pswitch_23
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 862
    move-result-object v1

    .line 865
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 866
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 868
    invoke-static {v1}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 870
    return-object v1

    .line 873
    :pswitch_24
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 874
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    .line 876
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 878
    move-result-object v1

    .line 881
    check-cast v1, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    .line 882
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 884
    move-result-object v1

    .line 887
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 888
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 890
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 892
    move-result-object v0

    .line 895
    invoke-static {v0, v1}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldTransitionHandlerFactory;->provideUnfoldTransitionHandler(Ldagger/Lazy;Ljava/util/Optional;)Ljava/util/Optional;

    .line 896
    move-result-object v0

    .line 899
    return-object v0

    .line 900
    :pswitch_25
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 901
    invoke-direct {v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;-><init>()V

    .line 903
    return-object v0

    .line 906
    :pswitch_26
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 907
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 909
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 911
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 913
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 915
    move-result-object v1

    .line 918
    move-object v3, v1

    .line 919
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 920
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 922
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 924
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 926
    move-result-object v1

    .line 929
    move-object v4, v1

    .line 930
    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 931
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 933
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 935
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 937
    move-result-object v1

    .line 940
    move-object v5, v1

    .line 941
    check-cast v5, Lcom/android/wm/shell/sysui/ShellController;

    .line 942
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 944
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 946
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 948
    move-result-object v1

    .line 951
    move-object v6, v1

    .line 952
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 953
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 955
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 957
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 959
    move-result-object v0

    .line 962
    move-object v7, v0

    .line 963
    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    .line 964
    invoke-static/range {v2 .. v7}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideHideDisplayCutoutControllerFactory;->provideHideDisplayCutoutController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    .line 966
    move-result-object v0

    .line 969
    return-object v0

    .line 970
    :pswitch_27
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 971
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 973
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 975
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 977
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 979
    move-result-object v2

    .line 982
    check-cast v2, Lcom/android/wm/shell/common/ShellExecutor;

    .line 983
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 985
    move-result-object v3

    .line 988
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 989
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    .line 991
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 993
    move-result-object v0

    .line 996
    check-cast v0, Ljava/util/Optional;

    .line 997
    new-instance v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 999
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Ljava/util/Optional;)V

    .line 1001
    return-object v4

    .line 1004
    :pswitch_28
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1005
    move-result-object v5

    .line 1008
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1009
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1011
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1013
    move-result-object v1

    .line 1016
    move-object v6, v1

    .line 1017
    check-cast v6, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1018
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1020
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1022
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1024
    move-result-object v1

    .line 1027
    move-object v7, v1

    .line 1028
    check-cast v7, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1029
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1031
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 1033
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1035
    move-result-object v1

    .line 1038
    move-object v8, v1

    .line 1039
    check-cast v8, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1040
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1042
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 1044
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1046
    move-result-object v1

    .line 1049
    move-object v9, v1

    .line 1050
    check-cast v9, Ljava/util/Optional;

    .line 1051
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1053
    move-result-object v10

    .line 1056
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1057
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowDecorRectControllerProvider:Ljavax/inject/Provider;

    .line 1059
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1061
    move-result-object v1

    .line 1064
    move-object v11, v1

    .line 1065
    check-cast v11, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;

    .line 1066
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1068
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullScreenTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 1070
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1072
    move-result-object v0

    .line 1075
    move-object v12, v0

    .line 1076
    check-cast v12, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;

    .line 1077
    invoke-static/range {v5 .. v12}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFullscreenTaskListenerFactory;->provideFullscreenTaskListener(Ljava/util/Optional;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/WindowDecorRectController;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiFullScreenTaskRepository;)Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 1079
    move-result-object v0

    .line 1082
    return-object v0

    .line 1083
    :pswitch_29
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1084
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1086
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1088
    move-result-object v0

    .line 1091
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1092
    new-instance v1, Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 1094
    invoke-direct {v1, v0}, Lcom/android/wm/shell/WindowManagerShellWrapper;-><init>(Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 1096
    return-object v1

    .line 1099
    :pswitch_2a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1100
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1102
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1104
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    .line 1106
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1108
    move-result-object v2

    .line 1111
    check-cast v2, Lcom/android/wm/shell/pip/PipMediaController;

    .line 1112
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1114
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    .line 1116
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1118
    move-result-object v0

    .line 1121
    check-cast v0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 1122
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 1124
    invoke-direct {v3, v1, v2, v0}, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;)V

    .line 1126
    return-object v3

    .line 1129
    :pswitch_2b
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1130
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1132
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1134
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1136
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1138
    move-result-object v0

    .line 1141
    check-cast v0, Landroid/os/Handler;

    .line 1142
    new-instance v2, Lcom/android/wm/shell/pip/PipMediaController;

    .line 1144
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/pip/PipMediaController;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1146
    return-object v2

    .line 1149
    :pswitch_2c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1150
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1152
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1154
    move-result-object v1

    .line 1157
    check-cast v1, Lcom/android/internal/logging/UiEventLogger;

    .line 1158
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1160
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->providePackageManagerProvider:Ljavax/inject/Provider;

    .line 1162
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1164
    move-result-object v0

    .line 1167
    check-cast v0, Landroid/content/pm/PackageManager;

    .line 1168
    new-instance v2, Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 1170
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/pip/PipUiEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;Landroid/content/pm/PackageManager;)V

    .line 1172
    return-object v2

    .line 1175
    :pswitch_2d
    new-instance v0, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 1176
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;-><init>()V

    .line 1178
    return-object v0

    .line 1181
    :pswitch_2e
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1182
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1184
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1186
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1188
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1190
    move-result-object v1

    .line 1193
    move-object v4, v1

    .line 1194
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1195
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1197
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1199
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1201
    move-result-object v1

    .line 1204
    move-object v5, v1

    .line 1205
    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1206
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1208
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 1210
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1212
    move-result-object v1

    .line 1215
    move-object v6, v1

    .line 1216
    check-cast v6, Lcom/android/wm/shell/transition/Transitions;

    .line 1217
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1219
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1221
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1223
    move-result-object v1

    .line 1226
    move-object v7, v1

    .line 1227
    check-cast v7, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1228
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1230
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1232
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1234
    move-result-object v1

    .line 1237
    move-object v8, v1

    .line 1238
    check-cast v8, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1239
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1241
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    .line 1243
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1245
    move-result-object v1

    .line 1248
    move-object v9, v1

    .line 1249
    check-cast v9, Lcom/android/wm/shell/pip/PipTransitionState;

    .line 1250
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1252
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    .line 1254
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1256
    move-result-object v1

    .line 1259
    move-object v10, v1

    .line 1260
    check-cast v10, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1261
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1263
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1265
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1267
    move-result-object v1

    .line 1270
    move-object v11, v1

    .line 1271
    check-cast v11, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1272
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1274
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 1276
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1278
    move-result-object v1

    .line 1281
    move-object v12, v1

    .line 1282
    check-cast v12, Lcom/android/wm/shell/pip/PipAnimationController;

    .line 1283
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1285
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1287
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1289
    move-result-object v0

    .line 1292
    move-object v13, v0

    .line 1293
    check-cast v13, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1294
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipTransition;

    .line 1296
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1298
    move-result-object v14

    .line 1301
    move-object v2, v0

    .line 1302
    invoke-direct/range {v2 .. v14}, Lcom/android/wm/shell/pip/tv/TvPipTransition;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Ljava/util/Optional;)V

    .line 1303
    return-object v0

    .line 1306
    :pswitch_2f
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1307
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1309
    new-instance v1, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1311
    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    .line 1313
    return-object v1

    .line 1316
    :pswitch_30
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1317
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1319
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1321
    move-result-object v0

    .line 1324
    check-cast v0, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1325
    new-instance v1, Lcom/android/wm/shell/pip/PipAnimationController;

    .line 1327
    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipAnimationController;-><init>(Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)V

    .line 1329
    return-object v1

    .line 1332
    :pswitch_31
    new-instance v0, Lcom/android/wm/shell/pip/PipTransitionState;

    .line 1333
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipTransitionState;-><init>()V

    .line 1335
    return-object v0

    .line 1338
    :pswitch_32
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1339
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1341
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1343
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1345
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1347
    move-result-object v2

    .line 1350
    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1351
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1353
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    .line 1355
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1357
    move-result-object v3

    .line 1360
    check-cast v3, Lcom/android/wm/shell/common/SystemWindows;

    .line 1361
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1363
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1365
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1367
    move-result-object v0

    .line 1370
    check-cast v0, Landroid/os/Handler;

    .line 1371
    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1373
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/common/SystemWindows;Landroid/os/Handler;)V

    .line 1375
    return-object v4

    .line 1378
    :pswitch_33
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1379
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1381
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1383
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    .line 1385
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1387
    move-result-object v1

    .line 1390
    move-object v9, v1

    .line 1391
    check-cast v9, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1392
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1394
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 1396
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1398
    move-result-object v1

    .line 1401
    move-object v4, v1

    .line 1402
    check-cast v4, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 1403
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1405
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1407
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1409
    move-result-object v1

    .line 1412
    move-object v6, v1

    .line 1413
    check-cast v6, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1414
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1416
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1418
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1420
    move-result-object v1

    .line 1423
    move-object v7, v1

    .line 1424
    check-cast v7, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1425
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1427
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTransitionStateProvider:Ljavax/inject/Provider;

    .line 1429
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1431
    move-result-object v1

    .line 1434
    move-object v5, v1

    .line 1435
    check-cast v5, Lcom/android/wm/shell/pip/PipTransitionState;

    .line 1436
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1438
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1440
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1442
    move-result-object v1

    .line 1445
    move-object v8, v1

    .line 1446
    check-cast v8, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1447
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1449
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAnimationControllerProvider:Ljavax/inject/Provider;

    .line 1451
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1453
    move-result-object v1

    .line 1456
    move-object v10, v1

    .line 1457
    check-cast v10, Lcom/android/wm/shell/pip/PipAnimationController;

    .line 1458
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1460
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    .line 1462
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1464
    move-result-object v1

    .line 1467
    move-object v12, v1

    .line 1468
    check-cast v12, Lcom/android/wm/shell/pip/PipTransitionController;

    .line 1469
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1471
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    .line 1473
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1475
    move-result-object v1

    .line 1478
    move-object v13, v1

    .line 1479
    check-cast v13, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 1480
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1482
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSurfaceTransactionHelperProvider:Ljavax/inject/Provider;

    .line 1484
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1486
    move-result-object v1

    .line 1489
    move-object v11, v1

    .line 1490
    check-cast v11, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    .line 1491
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1493
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 1495
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1497
    move-result-object v1

    .line 1500
    move-object v14, v1

    .line 1501
    check-cast v14, Ljava/util/Optional;

    .line 1502
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1504
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1506
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1508
    move-result-object v1

    .line 1511
    move-object v15, v1

    .line 1512
    check-cast v15, Lcom/android/wm/shell/common/DisplayController;

    .line 1513
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1515
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 1517
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1519
    move-result-object v1

    .line 1522
    move-object/from16 v16, v1

    .line 1523
    check-cast v16, Lcom/android/wm/shell/pip/PipUiEventLogger;

    .line 1525
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1527
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1529
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1531
    move-result-object v1

    .line 1534
    move-object/from16 v17, v1

    .line 1535
    check-cast v17, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 1537
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1539
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1541
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1543
    move-result-object v0

    .line 1546
    move-object/from16 v18, v0

    .line 1547
    check-cast v18, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1549
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;

    .line 1551
    move-object v2, v0

    .line 1553
    invoke-direct/range {v2 .. v18}, Lcom/android/wm/shell/pip/tv/TvPipTaskOrganizer;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Ljava/util/Optional;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 1554
    return-object v0

    .line 1557
    :pswitch_34
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1558
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1560
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1562
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1564
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1566
    move-result-object v2

    .line 1569
    check-cast v2, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 1570
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1572
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1574
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1576
    move-result-object v0

    .line 1579
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1580
    new-instance v3, Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 1582
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    new-instance v4, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda1;

    .line 1587
    invoke-direct {v4, v2}, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    .line 1589
    invoke-direct {v3, v1, v4, v0}, Lcom/android/wm/shell/pip/PipAppOpsListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipAppOpsListener$Callback;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 1592
    return-object v3

    .line 1595
    :pswitch_35
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1596
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1598
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1600
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1602
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1604
    move-result-object v1

    .line 1607
    move-object v5, v1

    .line 1608
    check-cast v5, Landroid/os/Handler;

    .line 1609
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1611
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1613
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1615
    move-result-object v1

    .line 1618
    move-object v6, v1

    .line 1619
    check-cast v6, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1620
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1622
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1624
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1626
    move-result-object v0

    .line 1629
    move-object v7, v0

    .line 1630
    check-cast v7, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1631
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 1633
    new-instance v4, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;

    .line 1635
    invoke-direct {v4}, Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;-><init>()V

    .line 1637
    move-object v2, v0

    .line 1640
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/dagger/TvPipModule$$ExternalSyntheticLambda0;Landroid/os/Handler;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;)V

    .line 1641
    return-object v0

    .line 1644
    :pswitch_36
    new-instance v0, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 1645
    invoke-direct {v0}, Lcom/android/wm/shell/pip/PipSnapAlgorithm;-><init>()V

    .line 1647
    return-object v0

    .line 1650
    :pswitch_37
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1651
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1653
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1655
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1657
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1659
    move-result-object v2

    .line 1662
    check-cast v2, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1663
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1665
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSnapAlgorithmProvider:Ljavax/inject/Provider;

    .line 1667
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1669
    move-result-object v3

    .line 1672
    check-cast v3, Lcom/android/wm/shell/pip/PipSnapAlgorithm;

    .line 1673
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1675
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSizeSpecHelperProvider:Ljavax/inject/Provider;

    .line 1677
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1679
    move-result-object v0

    .line 1682
    check-cast v0, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 1683
    new-instance v4, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1685
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipSnapAlgorithm;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;)V

    .line 1687
    return-object v4

    .line 1690
    :pswitch_38
    new-instance v1, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1691
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1693
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1695
    invoke-direct {v1, v0}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;-><init>(Landroid/content/Context;)V

    .line 1697
    return-object v1

    .line 1700
    :pswitch_39
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1701
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1703
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1705
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1707
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1709
    move-result-object v0

    .line 1712
    check-cast v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1713
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 1715
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    .line 1717
    return-object v2

    .line 1720
    :pswitch_3a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1721
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1723
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1725
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipSizeSpecHelperProvider:Ljavax/inject/Provider;

    .line 1727
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1729
    move-result-object v2

    .line 1732
    check-cast v2, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    .line 1733
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1735
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1737
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1739
    move-result-object v0

    .line 1742
    check-cast v0, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1743
    new-instance v3, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1745
    invoke-direct {v3, v1, v2, v0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    .line 1747
    return-object v3

    .line 1750
    :pswitch_3b
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1751
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 1753
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1755
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 1757
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1759
    move-result-object v1

    .line 1762
    move-object/from16 v21, v1

    .line 1763
    check-cast v21, Lcom/android/wm/shell/sysui/ShellInit;

    .line 1765
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1767
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 1769
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1771
    move-result-object v1

    .line 1774
    move-object/from16 v20, v1

    .line 1775
    check-cast v20, Lcom/android/wm/shell/sysui/ShellController;

    .line 1777
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1779
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsStateProvider:Ljavax/inject/Provider;

    .line 1781
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1783
    move-result-object v1

    .line 1786
    move-object/from16 v17, v1

    .line 1787
    check-cast v17, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    .line 1789
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1791
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->pipDisplayLayoutStateProvider:Ljavax/inject/Provider;

    .line 1793
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1795
    move-result-object v1

    .line 1798
    move-object v10, v1

    .line 1799
    check-cast v10, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 1800
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1802
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsAlgorithmProvider:Ljavax/inject/Provider;

    .line 1804
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1806
    move-result-object v1

    .line 1809
    move-object v15, v1

    .line 1810
    check-cast v15, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    .line 1811
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1813
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipBoundsControllerProvider:Ljavax/inject/Provider;

    .line 1815
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1817
    move-result-object v1

    .line 1820
    move-object/from16 v16, v1

    .line 1821
    check-cast v16, Lcom/android/wm/shell/pip/tv/TvPipBoundsController;

    .line 1823
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1825
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipAppOpsListenerProvider:Ljavax/inject/Provider;

    .line 1827
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1829
    move-result-object v1

    .line 1832
    move-object v9, v1

    .line 1833
    check-cast v9, Lcom/android/wm/shell/pip/PipAppOpsListener;

    .line 1834
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1836
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 1838
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1840
    move-result-object v1

    .line 1843
    move-object v13, v1

    .line 1844
    check-cast v13, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 1845
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1847
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesTvPipMenuControllerProvider:Ljavax/inject/Provider;

    .line 1849
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1851
    move-result-object v1

    .line 1854
    move-object/from16 v18, v1

    .line 1855
    check-cast v18, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    .line 1857
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1859
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipMediaControllerProvider:Ljavax/inject/Provider;

    .line 1861
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1863
    move-result-object v1

    .line 1866
    move-object v11, v1

    .line 1867
    check-cast v11, Lcom/android/wm/shell/pip/PipMediaController;

    .line 1868
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1870
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipTransitionProvider:Ljavax/inject/Provider;

    .line 1872
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1874
    move-result-object v1

    .line 1877
    move-object v14, v1

    .line 1878
    check-cast v14, Lcom/android/wm/shell/pip/PipTransitionController;

    .line 1879
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1881
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTvPipNotificationControllerProvider:Ljavax/inject/Provider;

    .line 1883
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1885
    move-result-object v1

    .line 1888
    move-object/from16 v19, v1

    .line 1889
    check-cast v19, Lcom/android/wm/shell/pip/tv/TvPipNotificationController;

    .line 1891
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1893
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    .line 1895
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1897
    move-result-object v1

    .line 1900
    move-object v8, v1

    .line 1901
    check-cast v8, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 1902
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1904
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipParamsChangedForwarderProvider:Ljavax/inject/Provider;

    .line 1906
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1908
    move-result-object v1

    .line 1911
    move-object v12, v1

    .line 1912
    check-cast v12, Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    .line 1913
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1915
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1917
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1919
    move-result-object v1

    .line 1922
    move-object v6, v1

    .line 1923
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 1924
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1926
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideWindowManagerShellWrapperProvider:Ljavax/inject/Provider;

    .line 1928
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1930
    move-result-object v1

    .line 1933
    move-object v5, v1

    .line 1934
    check-cast v5, Lcom/android/wm/shell/WindowManagerShellWrapper;

    .line 1935
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1937
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 1939
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1941
    move-result-object v1

    .line 1944
    move-object v4, v1

    .line 1945
    check-cast v4, Landroid/os/Handler;

    .line 1946
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1948
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 1950
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1952
    move-result-object v0

    .line 1955
    move-object v7, v0

    .line 1956
    check-cast v7, Lcom/android/wm/shell/common/ShellExecutor;

    .line 1957
    new-instance v0, Lcom/android/wm/shell/pip/tv/TvPipController;

    .line 1959
    move-object v2, v0

    .line 1961
    invoke-direct/range {v2 .. v21}, Lcom/android/wm/shell/pip/tv/TvPipController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipAppOpsListener;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipMediaController;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/tv/TvPipBoundsController;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipNotificationController;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellInit;)V

    .line 1962
    iget-object v0, v0, Lcom/android/wm/shell/pip/tv/TvPipController;->mImpl:Lcom/android/wm/shell/pip/tv/TvPipController$TvPipImpl;

    .line 1965
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1967
    move-result-object v0

    .line 1970
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 1971
    return-object v0

    .line 1974
    :pswitch_3c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 1975
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 1977
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1979
    move-result-object v1

    .line 1982
    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    .line 1983
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 1985
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 1987
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 1989
    move-result-object v0

    .line 1992
    check-cast v0, Landroid/view/IWindowManager;

    .line 1993
    new-instance v2, Lcom/android/wm/shell/common/SystemWindows;

    .line 1995
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/common/SystemWindows;-><init>(Lcom/android/wm/shell/common/DisplayController;Landroid/view/IWindowManager;)V

    .line 1997
    return-object v2

    .line 2000
    :pswitch_3d
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2001
    iget-object v3, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2003
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2005
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2007
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2009
    move-result-object v1

    .line 2012
    move-object v4, v1

    .line 2013
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2014
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2016
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2018
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2020
    move-result-object v1

    .line 2023
    move-object v5, v1

    .line 2024
    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2025
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2027
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2029
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2031
    move-result-object v1

    .line 2034
    move-object v6, v1

    .line 2035
    check-cast v6, Lcom/android/wm/shell/sysui/ShellController;

    .line 2036
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2038
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 2040
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2042
    move-result-object v1

    .line 2045
    move-object v7, v1

    .line 2046
    check-cast v7, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2047
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2049
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 2051
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2053
    move-result-object v1

    .line 2056
    move-object v8, v1

    .line 2057
    check-cast v8, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2058
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2060
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 2062
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2064
    move-result-object v1

    .line 2067
    move-object v9, v1

    .line 2068
    check-cast v9, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2069
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2071
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2073
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2075
    move-result-object v1

    .line 2078
    move-object v10, v1

    .line 2079
    check-cast v10, Lcom/android/wm/shell/common/DisplayController;

    .line 2080
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2082
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 2084
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2086
    move-result-object v1

    .line 2089
    move-object v11, v1

    .line 2090
    check-cast v11, Lcom/android/wm/shell/common/DisplayImeController;

    .line 2091
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2093
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 2095
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2097
    move-result-object v1

    .line 2100
    move-object v12, v1

    .line 2101
    check-cast v12, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 2102
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2104
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 2106
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2108
    move-result-object v1

    .line 2111
    move-object v13, v1

    .line 2112
    check-cast v13, Ljava/util/Optional;

    .line 2113
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2115
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 2117
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2119
    move-result-object v1

    .line 2122
    move-object v14, v1

    .line 2123
    check-cast v14, Lcom/android/wm/shell/transition/Transitions;

    .line 2124
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2126
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 2128
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2130
    move-result-object v1

    .line 2133
    move-object v15, v1

    .line 2134
    check-cast v15, Lcom/android/wm/shell/common/TransactionPool;

    .line 2135
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2137
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 2139
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2141
    move-result-object v1

    .line 2144
    move-object/from16 v16, v1

    .line 2145
    check-cast v16, Lcom/android/launcher3/icons/IconProvider;

    .line 2147
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2149
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 2151
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2153
    move-result-object v1

    .line 2156
    move-object/from16 v17, v1

    .line 2157
    check-cast v17, Ljava/util/Optional;

    .line 2159
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2161
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2163
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2165
    move-result-object v1

    .line 2168
    move-object/from16 v18, v1

    .line 2169
    check-cast v18, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2171
    new-instance v1, Landroid/os/Handler;

    .line 2173
    move-object/from16 v19, v1

    .line 2175
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 2177
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2180
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSystemWindowsProvider:Ljavax/inject/Provider;

    .line 2182
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2184
    move-result-object v0

    .line 2187
    move-object/from16 v20, v0

    .line 2188
    check-cast v20, Lcom/android/wm/shell/common/SystemWindows;

    .line 2190
    new-instance v0, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;

    .line 2192
    move-object v2, v0

    .line 2194
    invoke-direct/range {v2 .. v20}, Lcom/android/wm/shell/splitscreen/tv/TvSplitScreenController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/DisplayInsetsController;Ljava/util/Optional;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/launcher3/icons/IconProvider;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/SystemWindows;)V

    .line 2195
    return-object v0

    .line 2198
    :pswitch_3e
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2199
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 2201
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2203
    move-result-object v1

    .line 2206
    check-cast v1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    .line 2207
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 2209
    move-result-object v1

    .line 2212
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2213
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2215
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    .line 2217
    move-result v0

    .line 2220
    if-eqz v0, :cond_8

    .line 2221
    goto :goto_8

    .line 2223
    :cond_8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 2224
    move-result-object v1

    .line 2227
    :goto_8
    invoke-static {v1}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 2228
    return-object v1

    .line 2231
    :pswitch_3f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 2232
    move-result-object v0

    .line 2235
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isAnyEnabled()Z

    .line 2236
    move-result v1

    .line 2239
    if-eqz v1, :cond_9

    .line 2240
    new-instance v1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    .line 2242
    const/4 v2, 0x4

    .line 2244
    invoke-direct {v1, v2}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    .line 2245
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 2248
    move-result-object v0

    .line 2251
    goto :goto_9

    .line 2252
    :cond_9
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 2253
    move-result-object v0

    .line 2256
    :goto_9
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 2257
    return-object v0

    .line 2260
    :pswitch_40
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2261
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 2263
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2265
    move-result-object v0

    .line 2268
    check-cast v0, Landroid/os/Handler;

    .line 2269
    new-instance v1, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 2271
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;-><init>(Landroid/os/Handler;)V

    .line 2273
    return-object v1

    .line 2276
    :pswitch_41
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2277
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2279
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2281
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2283
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2285
    move-result-object v1

    .line 2288
    move-object v3, v1

    .line 2289
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2290
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2292
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2294
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2296
    move-result-object v1

    .line 2299
    move-object v4, v1

    .line 2300
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2301
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2303
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2305
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2307
    move-result-object v1

    .line 2310
    move-object v5, v1

    .line 2311
    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2312
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2314
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providerTaskStackListenerImplProvider:Ljavax/inject/Provider;

    .line 2316
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2318
    move-result-object v1

    .line 2321
    move-object v6, v1

    .line 2322
    check-cast v6, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    .line 2323
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2325
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideActivityTaskManagerProvider:Ljavax/inject/Provider;

    .line 2327
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2329
    move-result-object v1

    .line 2332
    move-object v7, v1

    .line 2333
    check-cast v7, Landroid/app/ActivityTaskManager;

    .line 2334
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2336
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDesktopTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 2338
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2340
    move-result-object v1

    .line 2343
    move-object v8, v1

    .line 2344
    check-cast v8, Ljava/util/Optional;

    .line 2345
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2347
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2349
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2351
    move-result-object v0

    .line 2354
    move-object v9, v0

    .line 2355
    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2356
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideRecentTasksControllerFactory;->provideRecentTasksController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    .line 2358
    move-result-object v0

    .line 2361
    return-object v0

    .line 2362
    :pswitch_42
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 2363
    move-result-object v0

    .line 2366
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeStatus;->isMiuiInfiniteRadioFeatureEnable()Z

    .line 2367
    move-result v1

    .line 2370
    if-eqz v1, :cond_a

    .line 2371
    goto :goto_a

    .line 2373
    :cond_a
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 2374
    move-result-object v0

    .line 2377
    :goto_a
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 2378
    return-object v0

    .line 2381
    :pswitch_43
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2382
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dynamicOverrideOptionalOfUnfoldAnimationControllerProvider:Ljavax/inject/Provider;

    .line 2384
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 2386
    move-result-object v1

    .line 2389
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2390
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideShellProgressProvider:Ljavax/inject/Provider;

    .line 2392
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2394
    move-result-object v0

    .line 2397
    check-cast v0, Lcom/android/wm/shell/unfold/ShellUnfoldProgressProvider;

    .line 2398
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 2400
    move-result-object v0

    .line 2403
    invoke-static {v1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideUnfoldControllerFactory;->provideUnfoldController(Ldagger/Lazy;Ljava/util/Optional;)Ljava/util/Optional;

    .line 2404
    move-result-object v0

    .line 2407
    return-object v0

    .line 2408
    :pswitch_44
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    .line 2409
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2411
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2413
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2415
    move-result-object v2

    .line 2418
    check-cast v2, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2419
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2421
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->compatUIConfigurationProvider:Ljavax/inject/Provider;

    .line 2423
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2425
    move-result-object v0

    .line 2428
    check-cast v0, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 2429
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;-><init>(Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIConfiguration;)V

    .line 2431
    return-object v1

    .line 2434
    :pswitch_45
    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 2435
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2437
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2439
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2441
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2443
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2445
    move-result-object v0

    .line 2448
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2449
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/compatui/CompatUIConfiguration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2451
    return-object v1

    .line 2454
    :pswitch_46
    new-instance v1, Lcom/android/wm/shell/common/DockStateReader;

    .line 2455
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2457
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2459
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/DockStateReader;-><init>(Landroid/content/Context;)V

    .line 2461
    return-object v1

    .line 2464
    :pswitch_47
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2465
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2467
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2469
    move-result-object v1

    .line 2472
    check-cast v1, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2473
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2475
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2477
    new-instance v2, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2479
    invoke-direct {v2, v0, v1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 2481
    return-object v2

    .line 2484
    :pswitch_48
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;->provideShellAnimationExecutor()Lcom/android/wm/shell/common/HandlerExecutor;

    .line 2485
    move-result-object v0

    .line 2488
    return-object v0

    .line 2489
    :pswitch_49
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2490
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2492
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2494
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2496
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2498
    move-result-object v1

    .line 2501
    move-object v3, v1

    .line 2502
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2503
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2505
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2507
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2509
    move-result-object v1

    .line 2512
    move-object v4, v1

    .line 2513
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2514
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2516
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 2518
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2520
    move-result-object v1

    .line 2523
    move-object v5, v1

    .line 2524
    check-cast v5, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2525
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2527
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 2529
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2531
    move-result-object v1

    .line 2534
    move-object v6, v1

    .line 2535
    check-cast v6, Lcom/android/wm/shell/common/TransactionPool;

    .line 2536
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2538
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2540
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2542
    move-result-object v1

    .line 2545
    move-object v7, v1

    .line 2546
    check-cast v7, Lcom/android/wm/shell/common/DisplayController;

    .line 2547
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2549
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2551
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2553
    move-result-object v1

    .line 2556
    move-object v8, v1

    .line 2557
    check-cast v8, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2558
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2560
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 2562
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2564
    move-result-object v1

    .line 2567
    move-object v9, v1

    .line 2568
    check-cast v9, Landroid/os/Handler;

    .line 2569
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2571
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellAnimationExecutorProvider:Ljavax/inject/Provider;

    .line 2573
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2575
    move-result-object v1

    .line 2578
    move-object v10, v1

    .line 2579
    check-cast v10, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2580
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2582
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2584
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2586
    move-result-object v1

    .line 2589
    move-object v11, v1

    .line 2590
    check-cast v11, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2591
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2593
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRootTaskDisplayAreaOrganizerProvider:Ljavax/inject/Provider;

    .line 2595
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2597
    move-result-object v0

    .line 2600
    move-object v12, v0

    .line 2601
    check-cast v12, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 2602
    invoke-static/range {v2 .. v12}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTransitionsFactory;->provideTransitions(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)Lcom/android/wm/shell/transition/Transitions;

    .line 2604
    move-result-object v0

    .line 2607
    return-object v0

    .line 2608
    :pswitch_4a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2609
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 2611
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2613
    move-result-object v1

    .line 2616
    check-cast v1, Lcom/android/wm/shell/common/TransactionPool;

    .line 2617
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2619
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2621
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2623
    move-result-object v0

    .line 2626
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2627
    new-instance v2, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2629
    invoke-direct {v2, v1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;-><init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2631
    return-object v2

    .line 2634
    :pswitch_4b
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2635
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2637
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2639
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2641
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2643
    move-result-object v1

    .line 2646
    move-object v3, v1

    .line 2647
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2648
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2650
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2652
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2654
    move-result-object v1

    .line 2657
    move-object v4, v1

    .line 2658
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2659
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2661
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2663
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2665
    move-result-object v1

    .line 2668
    move-object v5, v1

    .line 2669
    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    .line 2670
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2672
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 2674
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2676
    move-result-object v1

    .line 2679
    move-object v6, v1

    .line 2680
    check-cast v6, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 2681
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2683
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 2685
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2687
    move-result-object v1

    .line 2690
    move-object v7, v1

    .line 2691
    check-cast v7, Lcom/android/wm/shell/common/DisplayImeController;

    .line 2692
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2694
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSyncTransactionQueueProvider:Ljavax/inject/Provider;

    .line 2696
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2698
    move-result-object v1

    .line 2701
    move-object v8, v1

    .line 2702
    check-cast v8, Lcom/android/wm/shell/common/SyncTransactionQueue;

    .line 2703
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2705
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2707
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2709
    move-result-object v1

    .line 2712
    move-object v9, v1

    .line 2713
    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2714
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2716
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 2718
    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    .line 2720
    move-result-object v10

    .line 2723
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2724
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->dockStateReaderProvider:Ljavax/inject/Provider;

    .line 2726
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2728
    move-result-object v1

    .line 2731
    move-object v11, v1

    .line 2732
    check-cast v11, Lcom/android/wm/shell/common/DockStateReader;

    .line 2733
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2735
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->compatUIConfigurationProvider:Ljavax/inject/Provider;

    .line 2737
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2739
    move-result-object v1

    .line 2742
    move-object v12, v1

    .line 2743
    check-cast v12, Lcom/android/wm/shell/compatui/CompatUIConfiguration;

    .line 2744
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2746
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->compatUIShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2748
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2750
    move-result-object v0

    .line 2753
    move-object v13, v0

    .line 2754
    check-cast v13, Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;

    .line 2755
    invoke-static/range {v2 .. v13}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideCompatUIControllerFactory;->provideCompatUIController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/DisplayImeController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;Ldagger/Lazy;Lcom/android/wm/shell/common/DockStateReader;Lcom/android/wm/shell/compatui/CompatUIConfiguration;Lcom/android/wm/shell/compatui/CompatUIShellCommandHandler;)Lcom/android/wm/shell/compatui/CompatUIController;

    .line 2757
    move-result-object v0

    .line 2760
    return-object v0

    .line 2761
    :pswitch_4c
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2762
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2764
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2766
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2768
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2770
    move-result-object v1

    .line 2773
    move-object v3, v1

    .line 2774
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2775
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2777
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2779
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2781
    move-result-object v1

    .line 2784
    move-object v4, v1

    .line 2785
    check-cast v4, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2786
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2788
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideCompatUIControllerProvider:Ljavax/inject/Provider;

    .line 2790
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2792
    move-result-object v1

    .line 2795
    move-object v5, v1

    .line 2796
    check-cast v5, Lcom/android/wm/shell/compatui/CompatUIController;

    .line 2797
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2799
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldControllerProvider:Ljavax/inject/Provider;

    .line 2801
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2803
    move-result-object v1

    .line 2806
    move-object v6, v1

    .line 2807
    check-cast v6, Ljava/util/Optional;

    .line 2808
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2810
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesMiuiInfiniteModeTaskRepositoryProvider:Ljavax/inject/Provider;

    .line 2812
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2814
    move-result-object v1

    .line 2817
    move-object v7, v1

    .line 2818
    check-cast v7, Ljava/util/Optional;

    .line 2819
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2821
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 2823
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2825
    move-result-object v1

    .line 2828
    move-object v8, v1

    .line 2829
    check-cast v8, Ljava/util/Optional;

    .line 2830
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2832
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2834
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2836
    move-result-object v0

    .line 2839
    move-object v9, v0

    .line 2840
    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2841
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideShellTaskOrganizerFactory;->provideShellTaskOrganizer(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2843
    move-result-object v0

    .line 2846
    return-object v0

    .line 2847
    :pswitch_4d
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2848
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2850
    new-instance v1, Lcom/android/launcher3/icons/IconProvider;

    .line 2852
    invoke-direct {v1, v0}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    .line 2854
    return-object v1

    .line 2857
    :pswitch_4e
    new-instance v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2858
    invoke-direct {v0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;-><init>()V

    .line 2860
    return-object v0

    .line 2863
    :pswitch_4f
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2864
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2866
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2868
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2870
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2872
    move-result-object v2

    .line 2875
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2876
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2878
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2880
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2882
    move-result-object v3

    .line 2885
    check-cast v3, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2886
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2888
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2890
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2892
    move-result-object v0

    .line 2895
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2896
    new-instance v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2898
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/sysui/ShellController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 2900
    return-object v4

    .line 2903
    :pswitch_50
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2904
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 2906
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2908
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 2910
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2912
    move-result-object v1

    .line 2915
    move-object v3, v1

    .line 2916
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 2917
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2919
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 2921
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2923
    move-result-object v1

    .line 2926
    move-object v4, v1

    .line 2927
    check-cast v4, Lcom/android/wm/shell/sysui/ShellController;

    .line 2928
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2930
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellCommandHandlerProvider:Ljavax/inject/Provider;

    .line 2932
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2934
    move-result-object v1

    .line 2937
    move-object v5, v1

    .line 2938
    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 2939
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2941
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 2943
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2945
    move-result-object v1

    .line 2948
    move-object v6, v1

    .line 2949
    check-cast v6, Lcom/android/wm/shell/common/DisplayController;

    .line 2950
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2952
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideUiEventLoggerProvider:Ljavax/inject/Provider;

    .line 2954
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2956
    move-result-object v1

    .line 2959
    move-object v7, v1

    .line 2960
    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    .line 2961
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2963
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIconProvider:Ljavax/inject/Provider;

    .line 2965
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2967
    move-result-object v1

    .line 2970
    move-object v8, v1

    .line 2971
    check-cast v8, Lcom/android/launcher3/icons/IconProvider;

    .line 2972
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 2974
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 2976
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 2978
    move-result-object v0

    .line 2981
    move-object v9, v0

    .line 2982
    check-cast v9, Lcom/android/wm/shell/common/ShellExecutor;

    .line 2983
    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDragAndDropControllerFactory;->provideDragAndDropController(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/ShellExecutor;)Ljava/util/Optional;

    .line 2985
    move-result-object v0

    .line 2988
    return-object v0

    .line 2989
    :pswitch_51
    new-instance v0, Lcom/android/wm/shell/common/TransactionPool;

    .line 2990
    invoke-direct {v0}, Lcom/android/wm/shell/common/TransactionPool;-><init>()V

    .line 2992
    return-object v0

    .line 2995
    :pswitch_52
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 2996
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 2998
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3000
    move-result-object v1

    .line 3003
    check-cast v1, Landroid/view/IWindowManager;

    .line 3004
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3006
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 3008
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3010
    move-result-object v2

    .line 3013
    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    .line 3014
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3016
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 3018
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3020
    move-result-object v3

    .line 3023
    check-cast v3, Lcom/android/wm/shell/common/DisplayController;

    .line 3024
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3026
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 3028
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3030
    move-result-object v0

    .line 3033
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 3034
    new-instance v4, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 3036
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/android/wm/shell/common/DisplayInsetsController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 3038
    return-object v4

    .line 3041
    :pswitch_53
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 3042
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 3044
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3046
    move-result-object v1

    .line 3049
    move-object v3, v1

    .line 3050
    check-cast v3, Landroid/view/IWindowManager;

    .line 3051
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3053
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 3055
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3057
    move-result-object v1

    .line 3060
    move-object v4, v1

    .line 3061
    check-cast v4, Lcom/android/wm/shell/sysui/ShellInit;

    .line 3062
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3064
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 3066
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3068
    move-result-object v1

    .line 3071
    move-object v5, v1

    .line 3072
    check-cast v5, Lcom/android/wm/shell/common/DisplayController;

    .line 3073
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3075
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 3077
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3079
    move-result-object v1

    .line 3082
    move-object v6, v1

    .line 3083
    check-cast v6, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 3084
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3086
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransactionPoolProvider:Ljavax/inject/Provider;

    .line 3088
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3090
    move-result-object v1

    .line 3093
    move-object v7, v1

    .line 3094
    check-cast v7, Lcom/android/wm/shell/common/TransactionPool;

    .line 3095
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3097
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 3099
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3101
    move-result-object v0

    .line 3104
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 3105
    new-instance v0, Lcom/android/wm/shell/common/DisplayImeController;

    .line 3107
    move-object v2, v0

    .line 3109
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/common/DisplayImeController;-><init>(Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TransactionPool;)V

    .line 3110
    return-object v0

    .line 3113
    :pswitch_54
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;->provideMainHandler$1()Landroid/os/Handler;

    .line 3114
    move-result-object v0

    .line 3117
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 3118
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 3120
    return-object v1

    .line 3123
    :pswitch_55
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 3124
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 3126
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3128
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->setShellMainThread:Landroid/os/HandlerThread;

    .line 3130
    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideMainHandlerFactory;->provideMainHandler$1()Landroid/os/Handler;

    .line 3132
    move-result-object v2

    .line 3135
    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;->provideShellMainHandler(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)Landroid/os/Handler;

    .line 3136
    move-result-object v0

    .line 3139
    return-object v0

    .line 3140
    :pswitch_56
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 3141
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 3143
    iget-object v2, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3145
    iget-object v2, v2, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainHandlerProvider:Ljavax/inject/Provider;

    .line 3147
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3149
    move-result-object v2

    .line 3152
    check-cast v2, Landroid/os/Handler;

    .line 3153
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3155
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideSysUIMainExecutorProvider:Ljavax/inject/Provider;

    .line 3157
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3159
    move-result-object v0

    .line 3162
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 3163
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3165
    move-result-object v1

    .line 3168
    const v3, 0x7f05002f    # @bool/config_enableShellMainThread 'true'

    .line 3169
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 3172
    move-result v1

    .line 3175
    if-eqz v1, :cond_b

    .line 3176
    new-instance v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 3178
    invoke-direct {v0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 3180
    :cond_b
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 3183
    return-object v0

    .line 3186
    :pswitch_57
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3187
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 3189
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3191
    move-result-object v0

    .line 3194
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 3195
    invoke-static {}, Lcom/android/systemui/wmshell/MiuiWMShellStub;->init()V

    .line 3197
    new-instance v0, Lcom/android/wm/shell/sysui/ShellInit;

    .line 3200
    invoke-direct {v0}, Lcom/android/wm/shell/sysui/ShellInit;-><init>()V

    .line 3202
    return-object v0

    .line 3205
    :pswitch_58
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvGlobalRootComponent:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;

    .line 3206
    iget-object v2, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->context:Landroid/content/Context;

    .line 3208
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent;->provideIWindowManagerProvider:Ljavax/inject/Provider;

    .line 3210
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3212
    move-result-object v1

    .line 3215
    check-cast v1, Landroid/view/IWindowManager;

    .line 3216
    iget-object v3, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3218
    iget-object v3, v3, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellInitProvider:Ljavax/inject/Provider;

    .line 3220
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3222
    move-result-object v3

    .line 3225
    check-cast v3, Lcom/android/wm/shell/sysui/ShellInit;

    .line 3226
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3228
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellMainExecutorProvider:Ljavax/inject/Provider;

    .line 3230
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3232
    move-result-object v0

    .line 3235
    check-cast v0, Lcom/android/wm/shell/common/ShellExecutor;

    .line 3236
    new-instance v4, Lcom/android/wm/shell/common/DisplayController;

    .line 3238
    invoke-direct {v4, v2, v1, v3, v0}, Lcom/android/wm/shell/common/DisplayController;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/common/ShellExecutor;)V

    .line 3240
    return-object v4

    .line 3243
    :pswitch_59
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3244
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayControllerProvider:Ljavax/inject/Provider;

    .line 3246
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3248
    move-result-object v1

    .line 3251
    check-cast v1, Lcom/android/wm/shell/common/DisplayController;

    .line 3252
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3254
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayImeControllerProvider:Ljavax/inject/Provider;

    .line 3256
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3258
    move-result-object v1

    .line 3261
    check-cast v1, Lcom/android/wm/shell/common/DisplayImeController;

    .line 3262
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3264
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDisplayInsetsControllerProvider:Ljavax/inject/Provider;

    .line 3266
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3268
    move-result-object v1

    .line 3271
    check-cast v1, Lcom/android/wm/shell/common/DisplayInsetsController;

    .line 3272
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3274
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideDragAndDropControllerProvider:Ljavax/inject/Provider;

    .line 3276
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3278
    move-result-object v1

    .line 3281
    check-cast v1, Ljava/util/Optional;

    .line 3282
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3284
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellTaskOrganizerProvider:Ljavax/inject/Provider;

    .line 3286
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3288
    move-result-object v1

    .line 3291
    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 3292
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3294
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3297
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesSplitScreenControllerProvider:Ljavax/inject/Provider;

    .line 3299
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3301
    move-result-object v1

    .line 3304
    check-cast v1, Ljava/util/Optional;

    .line 3305
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3307
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3310
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providePipProvider:Ljavax/inject/Provider;

    .line 3312
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3314
    move-result-object v1

    .line 3317
    check-cast v1, Ljava/util/Optional;

    .line 3318
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3320
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3323
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFullscreenTaskListenerProvider:Ljavax/inject/Provider;

    .line 3325
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3327
    move-result-object v1

    .line 3330
    check-cast v1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    .line 3331
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3333
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldControllerProvider:Ljavax/inject/Provider;

    .line 3335
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3337
    move-result-object v1

    .line 3340
    check-cast v1, Ljava/util/Optional;

    .line 3341
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3343
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideUnfoldTransitionHandlerProvider:Ljavax/inject/Provider;

    .line 3345
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3347
    move-result-object v1

    .line 3350
    check-cast v1, Ljava/util/Optional;

    .line 3351
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3353
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideFreeformComponentsProvider:Ljavax/inject/Provider;

    .line 3355
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3357
    move-result-object v1

    .line 3360
    check-cast v1, Ljava/util/Optional;

    .line 3361
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3363
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideMiuiFreeformControllerProvider:Ljavax/inject/Provider;

    .line 3365
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3367
    move-result-object v1

    .line 3370
    check-cast v1, Ljava/util/Optional;

    .line 3371
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3373
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideMiuiInfinityModeControllerProvider:Ljavax/inject/Provider;

    .line 3375
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3377
    move-result-object v1

    .line 3380
    check-cast v1, Ljava/util/Optional;

    .line 3381
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3383
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideMiuiDesktopModeControllerProvider:Ljavax/inject/Provider;

    .line 3385
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3387
    move-result-object v1

    .line 3390
    check-cast v1, Ljava/util/Optional;

    .line 3391
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3393
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideRecentTasksControllerProvider:Ljavax/inject/Provider;

    .line 3395
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3397
    move-result-object v1

    .line 3400
    check-cast v1, Ljava/util/Optional;

    .line 3401
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3403
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3406
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->providesOneHandedControllerProvider:Ljavax/inject/Provider;

    .line 3408
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3410
    move-result-object v1

    .line 3413
    check-cast v1, Ljava/util/Optional;

    .line 3414
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3416
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideHideDisplayCutoutControllerProvider:Ljavax/inject/Provider;

    .line 3418
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3420
    move-result-object v1

    .line 3423
    check-cast v1, Ljava/util/Optional;

    .line 3424
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3426
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideActivityEmbeddingControllerProvider:Ljavax/inject/Provider;

    .line 3428
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3430
    move-result-object v1

    .line 3433
    check-cast v1, Ljava/util/Optional;

    .line 3434
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3436
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideTransitionsProvider:Ljavax/inject/Provider;

    .line 3438
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3440
    move-result-object v1

    .line 3443
    check-cast v1, Lcom/android/wm/shell/transition/Transitions;

    .line 3444
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3446
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideStartingWindowControllerProvider:Ljavax/inject/Provider;

    .line 3448
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3450
    move-result-object v1

    .line 3453
    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    .line 3454
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3456
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideProtoLogControllerProvider:Ljavax/inject/Provider;

    .line 3458
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3460
    move-result-object v0

    .line 3463
    check-cast v0, Lcom/android/wm/shell/ProtoLogController;

    .line 3464
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 3466
    new-instance v0, Ljava/lang/Object;

    .line 3469
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3471
    return-object v0

    .line 3474
    :pswitch_5a
    iget-object v1, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3475
    iget-object v1, v1, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideIndependentShellComponentsToCreateProvider:Ljavax/inject/Provider;

    .line 3477
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3479
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl$SwitchingProvider;->tvWMComponentImpl:Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;

    .line 3482
    iget-object v0, v0, Lcom/android/systemui/tv/DaggerTvGlobalRootComponent$TvWMComponentImpl;->provideShellControllerProvider:Ljavax/inject/Provider;

    .line 3484
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 3486
    move-result-object v0

    .line 3489
    check-cast v0, Lcom/android/wm/shell/sysui/ShellController;

    .line 3490
    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mImpl:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 3492
    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 3494
    return-object v0

    .line 3497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
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
    .line 3498
.end method
