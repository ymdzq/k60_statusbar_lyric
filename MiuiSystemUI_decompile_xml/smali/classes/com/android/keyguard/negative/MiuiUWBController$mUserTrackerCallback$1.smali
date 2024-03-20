.class public final Lcom/android/keyguard/negative/MiuiUWBController$mUserTrackerCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/MiuiUWBController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/MiuiUWBController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiUWBController$mUserTrackerCallback$1;->this$0:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiUWBController$mUserTrackerCallback$1;->this$0:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 2
    iput p1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUserId:I

    .line 4
    const-string p2, "com.miui.smarthomeplus"

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mPackageInstalledObserver:Lcom/miui/systemui/PackageInstalledObserver;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/miui/systemui/PackageInstalledObserver;->isPackageInstalled(ILjava/lang/String;)Z

    .line 10
    move-result p1

    .line 13
    iget-boolean p2, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUWBPackageInstalled:Z

    .line 14
    if-eq p2, p1, :cond_0

    .line 16
    iput-boolean p1, p0, Lcom/android/keyguard/negative/MiuiUWBController;->mUWBPackageInstalled:Z

    .line 18
    invoke-virtual {p0}, Lcom/android/keyguard/negative/MiuiUWBController;->updateUseUWB()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method
