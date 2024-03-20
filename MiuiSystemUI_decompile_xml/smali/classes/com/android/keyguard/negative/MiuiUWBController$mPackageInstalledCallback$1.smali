.class public final Lcom/android/keyguard/negative/MiuiUWBController$mPackageInstalledCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/systemui/PackageInstalledObserver$PackageInstalledCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/MiuiUWBController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/MiuiUWBController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiUWBController$mPackageInstalledCallback$1;->this$0:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPackageInstalledChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "com.miui.smarthomeplus"

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiUWBController$mPackageInstalledCallback$1;->this$0:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 6
    iget p1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUserId:I

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mPackageInstalledObserver:Lcom/miui/systemui/PackageInstalledObserver;

    .line 10
    invoke-virtual {v1, p1, v0}, Lcom/miui/systemui/PackageInstalledObserver;->isPackageInstalled(ILjava/lang/String;)Z

    .line 12
    move-result p1

    .line 15
    iget-boolean v0, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUWBPackageInstalled:Z

    .line 16
    if-eq v0, p1, :cond_0

    .line 18
    iput-boolean p1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUWBPackageInstalled:Z

    .line 20
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiUWBController;->updateUseUWB()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
