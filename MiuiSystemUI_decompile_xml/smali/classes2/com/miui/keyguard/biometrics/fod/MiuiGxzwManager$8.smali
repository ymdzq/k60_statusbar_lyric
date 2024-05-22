.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 15
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->dismissGxzwView()V

    .line 17
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 20
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwIconView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;

    .line 22
    invoke-virtual {p1, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    .line 24
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 27
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 29
    if-eqz p0, :cond_4

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->setEnrolling(Z)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "miui.intent.action.HANG_UP_CHANGED"

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    const-string p1, "hang_up_enable"

    .line 49
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 51
    move-result p1

    .line 54
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 55
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mMiuiGxzwOverlayView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;

    .line 57
    if-eqz p0, :cond_4

    .line 59
    if-eqz p1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->removeOverlayView()V

    .line 63
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwOverlayView;->addOverlayView()V

    .line 67
    goto :goto_0

    .line 70
    :cond_2
    const-string p1, "miui.action.handymode_change"

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    const-string p1, "handymode"

    .line 83
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 85
    move-result p1

    .line 88
    if-eqz p1, :cond_3

    .line 89
    const/4 v0, 0x1

    .line 91
    :cond_3
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager$8;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 92
    invoke-static {p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->-$$Nest$mupdateGxzwInfoInHandyMode(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;Z)V

    .line 94
    :cond_4
    :goto_0
    return-void
    .line 97
.end method
