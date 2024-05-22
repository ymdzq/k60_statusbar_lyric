.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    const-class p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 2
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->setWallpaperAsTarget(Z)V

    .line 11
    const-class p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 14
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 20
    invoke-virtual {p0, v0, v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateKeyguardWallpaperState(ZZ)V

    .line 22
    return-void
    .line 25
.end method
