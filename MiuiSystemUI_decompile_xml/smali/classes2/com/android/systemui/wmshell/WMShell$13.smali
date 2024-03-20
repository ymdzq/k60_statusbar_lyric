.class public final Lcom/android/systemui/wmshell/WMShell$13;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$13;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onFinishedWakingUp()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$13;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/onehanded/OneHanded;->setLockedDisabled(ZZ)V

    .line 5
    return-void
    .line 8
.end method

.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$13;->val$oneHanded:Lcom/android/wm/shell/onehanded/OneHanded;

    .line 2
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHanded;->stopOneHanded()V

    .line 4
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Lcom/android/wm/shell/onehanded/OneHanded;->setLockedDisabled(ZZ)V

    .line 9
    return-void
    .line 12
.end method
