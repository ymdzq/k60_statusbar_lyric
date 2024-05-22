.class public final Lcom/android/systemui/wmshell/WMShell$13;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
