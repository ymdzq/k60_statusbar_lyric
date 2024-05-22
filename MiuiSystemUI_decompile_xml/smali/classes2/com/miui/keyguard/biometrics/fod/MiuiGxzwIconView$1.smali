.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 2
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mDozing:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPendingShowBouncer:Z

    .line 9
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->mPowerManager:Landroid/os/PowerManager;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    move-result-wide v0

    .line 16
    const-string v2, "com.android.systemui:GOTO_UNLOCK"

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const-class p0, Lmiui/stub/MiuiStub$9;

    .line 23
    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Lmiui/stub/MiuiStub$9;

    .line 29
    invoke-virtual {p0}, Lmiui/stub/MiuiStub$9;->collapsePanels()V

    .line 31
    :goto_0
    return-void
    .line 34
.end method
