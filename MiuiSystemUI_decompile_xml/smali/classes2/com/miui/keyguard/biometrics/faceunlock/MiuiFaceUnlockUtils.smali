.class public abstract Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference; = null

.field public static sIsScreenTurnOnDelayed:Z = false


# direct methods
.method public static getFaceManager(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 12
    const-string v1, "miui_face"

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Landroid/hardware/face/BaseMiuiFaceManager;

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    sput-object v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference;

    .line 25
    :cond_1
    return-void
    .line 27
.end method

.method public static hasEnrolledTemplates(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->getFaceManager(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroid/hardware/face/BaseMiuiFaceManager;

    .line 11
    invoke-virtual {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->hasEnrolledTemplates()Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public static isHardwareDetected(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->getFaceManager(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroid/hardware/face/BaseMiuiFaceManager;

    .line 11
    invoke-virtual {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->isHardwareDetected()Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public static isSupportScreenOnDelayed(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->getFaceManager(Landroid/content/Context;)V

    .line 2
    sget-object p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->mWeakReferenceFaceManager:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Landroid/hardware/face/BaseMiuiFaceManager;

    .line 11
    invoke-virtual {p0}, Landroid/hardware/face/BaseMiuiFaceManager;->isSupportScreenOnDelayed()Z

    .line 13
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    const-class p0, Lmiui/stub/MiuiStub$15;

    .line 19
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Lmiui/stub/MiuiStub$15;

    .line 25
    iget-object p0, p0, Lmiui/stub/MiuiStub$15;->this$0:Lmiui/stub/MiuiStub;

    .line 27
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mMiuiModuleProvider:Lmiui/stub/MiuiStub$MiuiModuleProvider;

    .line 29
    iget-object p0, p0, Lmiui/stub/MiuiStub$MiuiModuleProvider;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    .line 31
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    check-cast p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 37
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->aodUsingSuperWallpaperStyle:Z

    .line 39
    if-nez p0, :cond_0

    .line 41
    const/4 p0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    return p0
    .line 46
.end method

.method public static setScreenTurnOnDelayed(Z)V
    .locals 3

    .line 1
    sput-boolean p0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 2
    const-class p0, Lmiui/stub/MiuiStub$10;

    .line 4
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lmiui/stub/MiuiStub$10;

    .line 10
    sget-boolean v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiFaceUnlockUtils;->sIsScreenTurnOnDelayed:Z

    .line 12
    iget-object p0, p0, Lmiui/stub/MiuiStub$10;->this$0:Lmiui/stub/MiuiStub;

    .line 14
    iget-object p0, p0, Lmiui/stub/MiuiStub;->mSysUIProvider:Lmiui/stub/MiuiStub$SysUIProvider;

    .line 16
    iget-object p0, p0, Lmiui/stub/MiuiStub$SysUIProvider;->mDozeServiceHost:Ldagger/Lazy;

    .line 18
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    .line 24
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mSupportAod:Z

    .line 26
    if-nez v1, :cond_0

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    .line 31
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string v2, "flag"

    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->dozeServices:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p0

    .line 46
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Lcom/android/systemui/doze/DozeService;

    .line 57
    const/16 v2, 0x80

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/doze/DozeService;->onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;

    .line 61
    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    return-void
    .line 65
.end method
