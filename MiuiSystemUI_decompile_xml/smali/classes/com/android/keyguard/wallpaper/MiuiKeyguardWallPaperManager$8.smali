.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->showWallpaperScreenOnAnim(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final onStartedWakingUp()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 7
    const/4 v0, 0x0

    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-virtual {p0, v1, v0, v2, v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperStateAnim(ZZIZ)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    const-class v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 15
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 21
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$8;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->showWallpaperScreenOnAnim(Z)V

    .line 29
    :cond_1
    :goto_0
    return-void
    .line 32
.end method
