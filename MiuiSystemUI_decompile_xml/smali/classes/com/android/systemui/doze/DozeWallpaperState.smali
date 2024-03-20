.class public final Lcom/android/systemui/doze/DozeWallpaperState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mIsAmbientMode:Z

.field public final mWallpaperManagerService:Landroid/app/IWallpaperManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DozeWallpaperState"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 7

    .line 1
    const-string v0, "DozeWallpaperState"

    .line 2
    const-string v1, "AOD wallpaper state changed to: "

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    packed-switch v2, :pswitch_data_0

    .line 12
    :pswitch_0
    move v2, v3

    .line 15
    goto :goto_0

    .line 16
    :pswitch_1
    move v2, v4

    .line 17
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    iget-boolean p1, v5, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 22
    goto :goto_4

    .line 24
    :cond_0
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    .line 25
    if-ne p1, v6, :cond_1

    .line 27
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    .line 29
    if-ne p2, p1, :cond_1

    .line 31
    move p1, v4

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move p1, v3

    .line 35
    :goto_1
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    .line 36
    move-result p2

    .line 39
    xor-int/2addr p2, v4

    .line 40
    if-eqz p2, :cond_4

    .line 41
    iget-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 43
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    .line 45
    move-result v5

    .line 48
    if-nez v5, :cond_3

    .line 49
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    .line 51
    if-eqz p2, :cond_2

    .line 53
    goto :goto_2

    .line 55
    :cond_2
    move p2, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    :goto_2
    move p2, v4

    .line 58
    :goto_3
    if-eqz p2, :cond_5

    .line 59
    :cond_4
    if-eqz p1, :cond_6

    .line 61
    :cond_5
    move v3, v4

    .line 63
    :cond_6
    move p1, v3

    .line 64
    :goto_4
    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    .line 65
    if-eq v2, p2, :cond_9

    .line 67
    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    .line 69
    iget-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    .line 71
    if-eqz p2, :cond_9

    .line 73
    if-eqz p1, :cond_7

    .line 75
    const-wide/16 v2, 0x1f4

    .line 77
    goto :goto_5

    .line 79
    :cond_7
    const-wide/16 v2, 0x0

    .line 80
    :goto_5
    :try_start_0
    sget-boolean p1, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    .line 82
    if-eqz p1, :cond_8

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ", animationDuration: "

    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    .line 111
    invoke-interface {p2, p1, v2, v3}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_6

    .line 116
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 117
    const-string p2, "Cannot notify state to WallpaperManagerService: "

    .line 119
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    .line 124
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_9
    :goto_6
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
    .line 138
.end method
