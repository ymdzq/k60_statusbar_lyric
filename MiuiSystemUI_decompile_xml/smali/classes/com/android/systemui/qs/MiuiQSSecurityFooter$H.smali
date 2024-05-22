.class public final Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiQSSecurityFooter;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    const-string v0, "handleRefreshState"

    .line 8
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 10
    invoke-static {p1}, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->-$$Nest$mhandleRefreshState(Lcom/android/systemui/qs/MiuiQSSecurityFooter;)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    const-string v0, "handleClick"

    .line 18
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 20
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mQSPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 22
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSPanel;->mSecurityDialog:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    .line 24
    invoke-virtual {p1}, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->showDeviceMonitoringDialog()V

    .line 26
    const/16 p1, 0x39

    .line 29
    invoke-static {p1}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 31
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 35
    const-class p1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 38
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 44
    const-string/jumbo v1, "security_footer"

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v2, Lcom/miui/systemui/events/ClickShortcutEvent;

    .line 52
    invoke-direct {v2, v1}, Lcom/miui/systemui/events/ClickShortcutEvent;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object p1, p1, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 57
    invoke-interface {p1, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    const-string v2, "Error in "

    .line 66
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 77
    const-string v1, "QSSecurityFooter"

    .line 78
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter$H;->this$0:Lcom/android/systemui/qs/MiuiQSSecurityFooter;

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 85
    invoke-interface {p0, v0, p1}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :cond_1
    :goto_0
    return-void
    .line 90
.end method
