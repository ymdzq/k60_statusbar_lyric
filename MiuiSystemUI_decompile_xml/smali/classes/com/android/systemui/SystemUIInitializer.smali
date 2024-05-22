.class public abstract Lcom/android/systemui/SystemUIInitializer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemUIFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

.field private mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

.field private mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

.field private mWMComponent:Lcom/android/systemui/dagger/WMComponent;


# direct methods
.method public static synthetic $r8$lambda$fM3ZYlHSXv2LZLPIQt0xKKN2evU(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-interface {p1, p2}, Lcom/android/systemui/dagger/WMComponent$Builder;->setShellMainThread(Landroid/os/HandlerThread;)Lcom/android/systemui/dagger/WMComponent$Builder;

    .line 5
    invoke-interface {p1}, Lcom/android/systemui/dagger/WMComponent$Builder;->build()Lcom/android/systemui/dagger/WMComponent;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 12
    return-void
    .line 14
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public abstract getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
.end method

.method public getRootComponent()Lcom/android/systemui/dagger/GlobalRootComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVendorComponent(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 1
    const p0, 0x7f1302e4    # @string/config_systemUIVendorServiceComponent 'com.android.systemui.VendorServices'

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 5
    move-result-object p0

    .line 8
    return-object p0
    .line 9
.end method

.method public getWMComponent()Lcom/android/systemui/dagger/WMComponent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 2
    return-object p0
    .line 4
.end method

.method public init(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIInitializer;->getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    .line 6
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->context(Landroid/content/Context;)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0, p1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->instrumentationTest(Z)Lcom/android/systemui/dagger/GlobalRootComponent$Builder;

    .line 12
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/android/systemui/dagger/GlobalRootComponent$Builder;->build()Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 20
    invoke-interface {p1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getInitializationChecker()Lcom/android/systemui/util/InitializationChecker;

    .line 22
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    .line 26
    invoke-virtual {p1}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    .line 28
    move-result p1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mContext:Landroid/content/Context;

    .line 32
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 34
    invoke-interface {v1}, Lcom/android/systemui/dagger/GlobalRootComponent;->getWMComponentBuilder()Lcom/android/systemui/dagger/WMComponent$Builder;

    .line 36
    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/android/systemui/SystemUIInitializer;->mInitializationChecker:Lcom/android/systemui/util/InitializationChecker;

    .line 40
    invoke-virtual {v2}, Lcom/android/systemui/util/InitializationChecker;->initializeComponents()Z

    .line 42
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v0

    .line 51
    const v2, 0x7f05002f    # @bool/config_enableShellMainThread 'true'

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 55
    move-result v0

    .line 58
    if-nez v0, :cond_0

    .line 59
    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 62
    const-string/jumbo v2, "wmshell.main"

    .line 64
    const/4 v3, -0x4

    .line 67
    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 74
    move-result-object v2

    .line 77
    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 78
    move-result-object v2

    .line 81
    new-instance v3, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;

    .line 82
    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/SystemUIInitializer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/SystemUIInitializer;Lcom/android/systemui/dagger/WMComponent$Builder;Landroid/os/HandlerThread;)V

    .line 84
    const-wide/16 v0, 0x1388

    .line 87
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_1

    .line 93
    goto :goto_1

    .line 95
    :cond_1
    const-string p0, "SystemUIFactory"

    .line 96
    const-string p1, "Failed to initialize WMComponent"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance p0, Ljava/lang/RuntimeException;

    .line 103
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 105
    throw p0

    .line 108
    :cond_2
    :goto_0
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent$Builder;->build()Lcom/android/systemui/dagger/WMComponent;

    .line 109
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 113
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mRootComponent:Lcom/android/systemui/dagger/GlobalRootComponent;

    .line 115
    invoke-interface {v0}, Lcom/android/systemui/dagger/GlobalRootComponent;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 117
    move-result-object v0

    .line 120
    if-eqz p1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 123
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 125
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 129
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getShell()Lcom/android/wm/shell/sysui/ShellInterface;

    .line 131
    move-result-object v1

    .line 134
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setShell(Lcom/android/wm/shell/sysui/ShellInterface;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 135
    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 139
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getPip()Ljava/util/Optional;

    .line 141
    move-result-object v1

    .line 144
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 145
    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 149
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreen()Ljava/util/Optional;

    .line 151
    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 155
    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 159
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getOneHanded()Ljava/util/Optional;

    .line 161
    move-result-object v1

    .line 164
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 165
    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 169
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getBubbles()Ljava/util/Optional;

    .line 171
    move-result-object v1

    .line 174
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 175
    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 179
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getTaskViewFactory()Ljava/util/Optional;

    .line 181
    move-result-object v1

    .line 184
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 185
    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 189
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getTransitions()Lcom/android/wm/shell/transition/ShellTransitions;

    .line 191
    move-result-object v1

    .line 194
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 195
    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 199
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getKeyguardTransitions()Lcom/android/wm/shell/keyguard/KeyguardTransitions;

    .line 201
    move-result-object v1

    .line 204
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 205
    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 209
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getStartingSurface()Ljava/util/Optional;

    .line 211
    move-result-object v1

    .line 214
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 215
    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 219
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getDisplayAreaHelper()Ljava/util/Optional;

    .line 221
    move-result-object v1

    .line 224
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayAreaHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 225
    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 229
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getRecentTasks()Ljava/util/Optional;

    .line 231
    move-result-object v1

    .line 234
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setRecentTasks(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 235
    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 239
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getBackAnimation()Ljava/util/Optional;

    .line 241
    move-result-object v1

    .line 244
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBackAnimation(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 245
    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 249
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getSplitScreenController()Ljava/util/Optional;

    .line 251
    move-result-object v1

    .line 254
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreenController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 255
    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 259
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getDesktopMode()Ljava/util/Optional;

    .line 261
    move-result-object v1

    .line 264
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDesktopMode(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 265
    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 269
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getWindowDecorRectDispatcher()Ljava/util/Optional;

    .line 271
    move-result-object v1

    .line 274
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setWindowDecorRectDispatcher(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 275
    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 279
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getTransientObserver()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    .line 281
    move-result-object v1

    .line 284
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransientObserver(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 285
    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 289
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getMiuiMultiWinCallbacks()Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    .line 291
    move-result-object v1

    .line 294
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setMiuiMultiWinCallbacks(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 295
    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 299
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getMiuiBubbleNotification()Ljava/util/Optional;

    .line 301
    move-result-object v1

    .line 304
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setMiuiBubbleNotification(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 305
    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 309
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->getSoScSplitScreen()Ljava/util/Optional;

    .line 311
    move-result-object v1

    .line 314
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSoScSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 318
    invoke-interface {v1}, Lcom/android/systemui/dagger/WMComponent;->init()V

    .line 320
    goto/16 :goto_2

    .line 323
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/SystemUIInitializer;->mWMComponent:Lcom/android/systemui/dagger/WMComponent;

    .line 325
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/SystemUIInitializer;->prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 327
    move-result-object v0

    .line 330
    new-instance v1, Lcom/android/systemui/SystemUIInitializer$3;

    .line 331
    invoke-direct {v1}, Lcom/android/systemui/SystemUIInitializer$3;-><init>()V

    .line 333
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setShell(Lcom/android/wm/shell/sysui/ShellInterface;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 336
    move-result-object v0

    .line 339
    const/4 v1, 0x0

    .line 340
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 341
    move-result-object v2

    .line 344
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setPip(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 345
    move-result-object v0

    .line 348
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 349
    move-result-object v2

    .line 352
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 353
    move-result-object v0

    .line 356
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 357
    move-result-object v2

    .line 360
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setOneHanded(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 361
    move-result-object v0

    .line 364
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 365
    move-result-object v2

    .line 368
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBubbles(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 369
    move-result-object v0

    .line 372
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 373
    move-result-object v2

    .line 376
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTaskViewFactory(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 377
    move-result-object v0

    .line 380
    new-instance v2, Lcom/android/systemui/SystemUIInitializer$2;

    .line 381
    invoke-direct {v2}, Lcom/android/systemui/SystemUIInitializer$2;-><init>()V

    .line 383
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransitions(Lcom/android/wm/shell/transition/ShellTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 386
    move-result-object v0

    .line 389
    new-instance v2, Lcom/android/systemui/SystemUIInitializer$1;

    .line 390
    invoke-direct {v2}, Lcom/android/systemui/SystemUIInitializer$1;-><init>()V

    .line 392
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setKeyguardTransitions(Lcom/android/wm/shell/keyguard/KeyguardTransitions;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 395
    move-result-object v0

    .line 398
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 399
    move-result-object v2

    .line 402
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDisplayAreaHelper(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 403
    move-result-object v0

    .line 406
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 407
    move-result-object v2

    .line 410
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setStartingSurface(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 411
    move-result-object v0

    .line 414
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 415
    move-result-object v2

    .line 418
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setRecentTasks(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 419
    move-result-object v0

    .line 422
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 423
    move-result-object v2

    .line 426
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setBackAnimation(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 427
    move-result-object v0

    .line 430
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 431
    move-result-object v2

    .line 434
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSplitScreenController(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 435
    move-result-object v0

    .line 438
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 439
    move-result-object v2

    .line 442
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setSoScSplitScreen(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 443
    move-result-object v0

    .line 446
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 447
    move-result-object v2

    .line 450
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setDesktopMode(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 451
    move-result-object v0

    .line 454
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 455
    move-result-object v2

    .line 458
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setWindowDecorRectDispatcher(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 459
    move-result-object v0

    .line 462
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;

    .line 463
    invoke-direct {v2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;-><init>()V

    .line 465
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setTransientObserver(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/TransientObserver;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 468
    move-result-object v0

    .line 471
    new-instance v2, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;

    .line 472
    invoke-direct {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;-><init>()V

    .line 474
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setMiuiMultiWinCallbacks(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinCallbacks;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 477
    move-result-object v0

    .line 480
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 481
    move-result-object v1

    .line 484
    invoke-interface {v0, v1}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->setMiuiBubbleNotification(Ljava/util/Optional;)Lcom/android/systemui/dagger/SysUIComponent$Builder;

    .line 485
    move-result-object v0

    .line 488
    :goto_2
    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent$Builder;->build()Lcom/android/systemui/dagger/SysUIComponent;

    .line 489
    move-result-object v0

    .line 492
    iput-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 493
    sget-object v1, Lmiui/stub/MiuiStub;->INSTANCE:Lmiui/stub/MiuiStub;

    .line 495
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    instance-of v2, v0, Lcom/android/systemui/dagger/ReferenceSysUIComponent;

    .line 500
    if-eqz v2, :cond_6

    .line 502
    check-cast v0, Lcom/android/systemui/dagger/ReferenceSysUIComponent;

    .line 504
    iget-object v2, v1, Lmiui/stub/MiuiStub;->mBaseProvider:Lmiui/stub/MiuiStub$BaseProvider;

    .line 506
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->inject(Lmiui/stub/MiuiStub$BaseProvider;)V

    .line 508
    iget-object v2, v1, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 511
    invoke-interface {v0, v2}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->inject(Lmiui/stub/MiuiStub$SysUIProvider;)V

    .line 513
    iget-object v3, v1, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 516
    invoke-interface {v0, v3}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->inject(Lmiui/stub/MiuiStub$MiuiModuleProvider;)V

    .line 518
    new-instance v3, Lmiui/stub/MiuiStub$1;

    .line 521
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$1;-><init>(Lmiui/stub/MiuiStub;)V

    .line 523
    const-class v4, Lmiui/stub/MiuiStub$1;

    .line 526
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 528
    new-instance v3, Lmiui/stub/MiuiStub$13;

    .line 531
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$13;-><init>(Lmiui/stub/MiuiStub;)V

    .line 533
    const-class v4, Lmiui/stub/MiuiStub$13;

    .line 536
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 538
    new-instance v3, Lmiui/stub/MiuiStub$14;

    .line 541
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$14;-><init>(Lmiui/stub/MiuiStub;)V

    .line 543
    const-class v4, Lmiui/stub/MiuiStub$14;

    .line 546
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 548
    new-instance v3, Lmiui/stub/MiuiStub$15;

    .line 551
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$15;-><init>(Lmiui/stub/MiuiStub;)V

    .line 553
    const-class v4, Lmiui/stub/MiuiStub$15;

    .line 556
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 558
    new-instance v3, Lmiui/stub/MiuiStub$16;

    .line 561
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$16;-><init>(Lmiui/stub/MiuiStub;)V

    .line 563
    const-class v4, Lmiui/stub/MiuiStub$16;

    .line 566
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 568
    new-instance v3, Lmiui/stub/MiuiStub$17;

    .line 571
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$17;-><init>(Lmiui/stub/MiuiStub;)V

    .line 573
    const-class v4, Lmiui/stub/MiuiStub$17;

    .line 576
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 578
    new-instance v3, Lmiui/stub/MiuiStub$18;

    .line 581
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$18;-><init>(Lmiui/stub/MiuiStub;)V

    .line 583
    const-class v4, Lmiui/stub/MiuiStub$18;

    .line 586
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 588
    new-instance v3, Lmiui/stub/MiuiStub$19;

    .line 591
    invoke-direct {v3, v1}, Lmiui/stub/MiuiStub$19;-><init>(Lmiui/stub/MiuiStub;)V

    .line 593
    const-class v4, Lmiui/stub/MiuiStub$19;

    .line 596
    invoke-static {v4, v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 598
    invoke-interface {v0}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->getMiuiComponent()Lcom/miui/systemui/dagger/MiuiComponent$Builder;

    .line 601
    move-result-object v3

    .line 604
    invoke-interface {v3}, Lcom/miui/systemui/dagger/MiuiComponent$Builder;->build()Lcom/miui/systemui/dagger/MiuiComponent;

    .line 605
    move-result-object v3

    .line 608
    invoke-interface {v3}, Lcom/miui/systemui/dagger/MiuiComponent;->createMiuiDependency()Lcom/miui/systemui/MiuiDependency;

    .line 609
    move-result-object v3

    .line 612
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 613
    sput-object v3, Lcom/miui/systemui/MiuiDependency;->sDependency:Lcom/miui/systemui/MiuiDependency;

    .line 616
    iget-object v4, v3, Lcom/miui/systemui/MiuiDependency;->mMiuiTopActivityObserver:Ldagger/Lazy;

    .line 618
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    new-instance v5, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;

    .line 623
    const/4 v6, 0x0

    .line 625
    invoke-direct {v5, v4, v6}, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 626
    const-class v4, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 629
    iget-object v6, v3, Lcom/miui/systemui/MiuiDependency;->mProviders:Landroid/util/ArrayMap;

    .line 631
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v4, v3, Lcom/miui/systemui/MiuiDependency;->mUiOffloadThread:Ldagger/Lazy;

    .line 636
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    new-instance v5, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;

    .line 641
    const/4 v7, 0x1

    .line 643
    invoke-direct {v5, v4, v7}, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 644
    const-class v4, Lcom/miui/systemui/MiuiUiOffloadThread;

    .line 647
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v4, v3, Lcom/miui/systemui/MiuiDependency;->mEventTracker:Ldagger/Lazy;

    .line 652
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    new-instance v5, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;

    .line 657
    const/4 v7, 0x2

    .line 659
    invoke-direct {v5, v4, v7}, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 660
    const-class v4, Lcom/miui/interfaces/IEventTracker;

    .line 663
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v4, v3, Lcom/miui/systemui/MiuiDependency;->mSettingsObserver:Ldagger/Lazy;

    .line 668
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v5, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;

    .line 673
    const/4 v7, 0x3

    .line 675
    invoke-direct {v5, v4, v7}, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 676
    const-class v4, Lcom/miui/interfaces/SettingsObserver;

    .line 679
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v4, v3, Lcom/miui/systemui/MiuiDependency;->mHapticFeedBack:Ldagger/Lazy;

    .line 684
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    new-instance v5, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;

    .line 689
    const/4 v7, 0x4

    .line 691
    invoke-direct {v5, v4, v7}, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 692
    const-class v4, Lcom/miui/interfaces/IHapticFeedBack;

    .line 695
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v3, v3, Lcom/miui/systemui/MiuiDependency;->mPanelExpansionObserver:Ldagger/Lazy;

    .line 700
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    new-instance v4, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;

    .line 705
    const/4 v5, 0x5

    .line 707
    invoke-direct {v4, v3, v5}, Lcom/miui/systemui/MiuiDependency$$ExternalSyntheticLambda0;-><init>(Ldagger/Lazy;I)V

    .line 708
    const-class v3, Lcom/miui/systemui/functions/PanelExpansionObserver;

    .line 711
    invoke-virtual {v6, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    invoke-interface {v0}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->getMiuiChargeDependencyComponent()Lcom/miui/charge/dagger/MiuiChargeDependencyComponent$Builder;

    .line 716
    move-result-object v3

    .line 719
    if-eqz v3, :cond_4

    .line 720
    check-cast v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentBuilder;

    .line 722
    invoke-virtual {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentBuilder;->build()Lcom/miui/systemui/dagger/DependencyComponent;

    .line 724
    move-result-object v3

    .line 727
    check-cast v3, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl;

    .line 728
    invoke-virtual {v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiChargeDependencyComponentImpl;->createDependency()Lcom/miui/systemui/IDependency;

    .line 730
    move-result-object v3

    .line 733
    invoke-interface {v3, v6}, Lcom/miui/systemui/IDependency;->initDependency(Landroid/util/ArrayMap;)V

    .line 734
    :cond_4
    invoke-interface {v0}, Lcom/android/systemui/dagger/ReferenceSysUIComponent;->getMiuiBiometricsDependencyComponent()Lcom/miui/keyguard/biometrics/dagger/MiuiBiometricsDependencyComponent$Builder;

    .line 737
    move-result-object v0

    .line 740
    if-eqz v0, :cond_5

    .line 741
    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentBuilder;

    .line 743
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentBuilder;->build()Lcom/miui/systemui/dagger/DependencyComponent;

    .line 745
    move-result-object v0

    .line 748
    check-cast v0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;

    .line 749
    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiBiometricsDependencyComponentImpl;->createDependency()Lcom/miui/systemui/IDependency;

    .line 751
    move-result-object v0

    .line 754
    invoke-interface {v0, v6}, Lcom/miui/systemui/IDependency;->initDependency(Landroid/util/ArrayMap;)V

    .line 755
    :cond_5
    new-instance v0, Lmiui/stub/MiuiStub$2;

    .line 758
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$2;-><init>(Lmiui/stub/MiuiStub;)V

    .line 760
    const-class v3, Lmiui/stub/MiuiStub$2;

    .line 763
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 765
    new-instance v0, Lmiui/stub/MiuiStub$3;

    .line 768
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$3;-><init>(Lmiui/stub/MiuiStub;)V

    .line 770
    const-class v3, Lmiui/stub/MiuiStub$3;

    .line 773
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 775
    new-instance v0, Lmiui/stub/MiuiStub$4;

    .line 778
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$4;-><init>(Lmiui/stub/MiuiStub;)V

    .line 780
    const-class v3, Lmiui/stub/MiuiStub$4;

    .line 783
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 785
    new-instance v0, Lmiui/stub/MiuiStub$5;

    .line 788
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$5;-><init>(Lmiui/stub/MiuiStub;)V

    .line 790
    const-class v3, Lmiui/stub/MiuiStub$5;

    .line 793
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 795
    iget-object v0, v2, Lmiui/stub/MiuiStub$SysUIProvider;->mActivityStarter:Ldagger/Lazy;

    .line 798
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 800
    move-result-object v0

    .line 803
    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 804
    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    .line 806
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 808
    new-instance v0, Lmiui/stub/MiuiStub$6;

    .line 811
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$6;-><init>(Lmiui/stub/MiuiStub;)V

    .line 813
    const-class v3, Lmiui/stub/MiuiStub$6;

    .line 816
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 818
    new-instance v0, Lmiui/stub/MiuiStub$7;

    .line 821
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$7;-><init>(Lmiui/stub/MiuiStub;)V

    .line 823
    const-class v3, Lmiui/stub/MiuiStub$7;

    .line 826
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 828
    new-instance v0, Lmiui/stub/MiuiStub$8;

    .line 831
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$8;-><init>(Lmiui/stub/MiuiStub;)V

    .line 833
    const-class v3, Lmiui/stub/MiuiStub$8;

    .line 836
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 838
    new-instance v0, Lmiui/stub/MiuiStub$9;

    .line 841
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$9;-><init>(Lmiui/stub/MiuiStub;)V

    .line 843
    const-class v3, Lmiui/stub/MiuiStub$9;

    .line 846
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 848
    new-instance v0, Lmiui/stub/MiuiStub$10;

    .line 851
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$10;-><init>(Lmiui/stub/MiuiStub;)V

    .line 853
    const-class v3, Lmiui/stub/MiuiStub$10;

    .line 856
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 858
    new-instance v0, Lmiui/stub/MiuiStub$11;

    .line 861
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$11;-><init>(Lmiui/stub/MiuiStub;)V

    .line 863
    const-class v3, Lmiui/stub/MiuiStub$11;

    .line 866
    invoke-static {v3, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 868
    new-instance v0, Lmiui/stub/MiuiStub$12;

    .line 871
    invoke-direct {v0, v1}, Lmiui/stub/MiuiStub$12;-><init>(Lmiui/stub/MiuiStub;)V

    .line 873
    const-class v1, Lmiui/stub/MiuiStub$12;

    .line 876
    invoke-static {v1, v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 878
    iget-object v0, v2, Lmiui/stub/MiuiStub$SysUIProvider;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    .line 881
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 883
    :cond_6
    if-eqz p1, :cond_7

    .line 886
    iget-object v0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 888
    invoke-interface {v0}, Lcom/android/systemui/dagger/SysUIComponent;->init()V

    .line 890
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/SystemUIInitializer;->mSysUIComponent:Lcom/android/systemui/dagger/SysUIComponent;

    .line 893
    invoke-interface {p0}, Lcom/android/systemui/dagger/SysUIComponent;->createDependency()Lcom/android/systemui/Dependency;

    .line 895
    move-result-object p0

    .line 898
    invoke-virtual {p0}, Lcom/android/systemui/Dependency;->start()V

    .line 899
    if-eqz p1, :cond_9

    .line 902
    sget-object p0, Lcom/miui/systemui/MiuiDependency;->sDependency:Lcom/miui/systemui/MiuiDependency;

    .line 904
    iget-object p0, p0, Lcom/miui/systemui/MiuiDependency;->mProviders:Landroid/util/ArrayMap;

    .line 906
    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 908
    move-result-object p0

    .line 911
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 912
    move-result-object p0

    .line 915
    :cond_8
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 916
    move-result p1

    .line 919
    if-eqz p1, :cond_9

    .line 920
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 922
    move-result-object p1

    .line 925
    check-cast p1, Ljava/lang/Class;

    .line 926
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 928
    move-result-object p1

    .line 931
    instance-of v0, p1, Lcom/miui/interfaces/ILateInitializer;

    .line 932
    if-eqz v0, :cond_8

    .line 934
    check-cast p1, Lcom/miui/interfaces/ILateInitializer;

    .line 936
    invoke-interface {p1}, Lcom/miui/interfaces/ILateInitializer;->start()V

    .line 938
    goto :goto_3

    .line 941
    :cond_9
    return-void
    .line 942
.end method

.method public prepareSysUIComponentBuilder(Lcom/android/systemui/dagger/SysUIComponent$Builder;Lcom/android/systemui/dagger/WMComponent;)Lcom/android/systemui/dagger/SysUIComponent$Builder;
    .locals 0

    .line 1
    return-object p1
    .line 2
.end method
