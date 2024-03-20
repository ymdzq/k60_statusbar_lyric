.class public final Lcom/android/systemui/recents/OverviewProxyService$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Binding died of \'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, "\', try reconnecting"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    const-string v0, "OverviewProxyService"

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 26
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    .line 31
    return-void
    .line 34
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Null binding of \'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, "\', try reconnecting"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    const-string v0, "OverviewProxyService"

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 26
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    .line 31
    return-void
    .line 34
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    const-string p1, "OverviewProxyService"

    .line 2
    const-string v0, "Overview proxy service connected"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 9
    const/4 v1, 0x0

    .line 11
    iput v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mConnectionBackoffAttempts:I

    .line 12
    iget-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mDeferredConnectionCallback:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda0;

    .line 16
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewServiceDeathRcpt:Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda2;

    .line 23
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 28
    iget-object v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 30
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 34
    move-result v2

    .line 37
    iput v2, v0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 38
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 40
    sget v2, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->$r8$clinit:I

    .line 42
    const-string v2, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 44
    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 46
    move-result-object v3

    .line 49
    if-eqz v3, :cond_0

    .line 50
    instance-of v4, v3, Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 52
    if-eqz v4, :cond_0

    .line 54
    check-cast v3, Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    new-instance v3, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 59
    invoke-direct {v3, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 61
    :goto_0
    iput-object v3, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 64
    new-instance p2, Landroid/os/Bundle;

    .line 66
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 71
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    .line 73
    check-cast v0, Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    const-string v3, "extra_sysui_proxy"

    .line 80
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 85
    iget v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mWindowCornerRadius:F

    .line 87
    const-string v3, "extra_window_corner_radius"

    .line 89
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 94
    iget-boolean v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSupportsRoundedCornersOnWindows:Z

    .line 96
    const-string v3, "extra_supports_window_corners"

    .line 98
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 103
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mMiuiSysUiProxy:Lcom/android/systemui/recents/MiuiOverviewProxy;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    const-string v3, "extra_miui_sysui_proxy"

    .line 110
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 115
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysuiUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    const-string/jumbo v3, "unlock_animation"

    .line 122
    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 128
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mUnfoldTransitionProgressForwarder:Ljava/util/Optional;

    .line 130
    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;

    .line 132
    const/4 v4, 0x1

    .line 134
    invoke-direct {v3, v4, p2}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 141
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mShellInterface:Lcom/android/wm/shell/sysui/ShellInterface;

    .line 143
    invoke-interface {v0, p2}, Lcom/android/wm/shell/sysui/ShellInterface;->createExternalInterfaces(Landroid/os/Bundle;)V

    .line 145
    const/4 v0, 0x0

    .line 148
    :try_start_1
    const-string v3, "OverviewProxyService connected, initializing overview proxy"

    .line 149
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 154
    iget-object v3, v3, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 156
    check-cast v3, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 158
    iget-object v5, v3, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 160
    invoke-static {v5}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 162
    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :try_start_2
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 169
    iget-object p2, v3, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 172
    const/16 v1, 0xd

    .line 174
    invoke-interface {p2, v1, v5, v0, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    :try_start_3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 179
    goto :goto_1

    .line 182
    :catchall_0
    move-exception p2

    .line 183
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw p2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 187
    :catch_0
    move-exception p2

    .line 188
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 189
    const/4 v2, -0x1

    .line 191
    iput v2, v1, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 192
    const-string v1, "Failed to call onInitialize()"

    .line 194
    invoke-static {p1, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavButtonBounds()V

    .line 201
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 204
    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->dispatchNavigationBarSurface()V

    .line 206
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 209
    iget-object p2, p1, Lcom/android/systemui/recents/OverviewProxyService;->mNavBarControllerLazy:Ldagger/Lazy;

    .line 211
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 213
    move-result-object v1

    .line 216
    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 217
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    .line 219
    move-result-object v1

    .line 222
    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 223
    move-result-object p2

    .line 226
    check-cast p2, Lcom/android/systemui/navigationbar/NavigationBarController;

    .line 227
    iget-object v2, p1, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    .line 231
    move-result v2

    .line 234
    invoke-virtual {p2, v2}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 235
    move-result-object p2

    .line 238
    iget-object v2, p1, Lcom/android/systemui/recents/OverviewProxyService;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 239
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 241
    move-result-object v2

    .line 244
    check-cast v2, Ljava/util/Optional;

    .line 245
    new-instance v3, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda5;

    .line 247
    invoke-direct {v3}, Lcom/android/systemui/recents/OverviewProxyService$$ExternalSyntheticLambda5;-><init>()V

    .line 249
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 252
    move-result-object v2

    .line 255
    invoke-virtual {v2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-result-object v0

    .line 259
    check-cast v0, Lcom/android/systemui/shade/ShadeViewController;

    .line 260
    if-eqz v1, :cond_1

    .line 262
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateSystemUiStateFlags()V

    .line 264
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 267
    if-eqz p2, :cond_2

    .line 269
    invoke-virtual {p2, v1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    .line 271
    goto :goto_2

    .line 274
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/OverviewProxyService;->updateDisabledSystemUiStateFlags(Lcom/android/systemui/model/SysUiState;)V

    .line 275
    :goto_2
    if-eqz v0, :cond_3

    .line 278
    check-cast v0, Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 280
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateSystemUiStateFlags()V

    .line 282
    :cond_3
    iget-object p1, p1, Lcom/android/systemui/recents/OverviewProxyService;->mStatusBarWinController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 285
    if-eqz p1, :cond_4

    .line 287
    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 289
    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->notifyStateChangedCallbacks()V

    .line 291
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 294
    iget-object p2, p1, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 296
    iget p2, p2, Lcom/android/systemui/model/SysUiState;->mFlags:I

    .line 298
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->notifySystemUiStateFlags(I)V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyConnectionChanged()V

    .line 305
    return-void

    .line 308
    :catch_1
    move-exception p2

    .line 309
    const-string v0, "Lost connection to launcher service"

    .line 310
    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 312
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 315
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->disconnectFromLauncherService(Ljava/lang/String;)V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->retryConnectionWithBackoff()V

    .line 322
    return-void
    .line 325
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "OverviewProxyService"

    .line 2
    const-string v0, "Service disconnected"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 9
    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCurrentBoundedUserId:I

    .line 12
    return-void
    .line 14
.end method
