.class public final Lcom/android/systemui/controlcenter/policy/SecurityDialog;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final activityStarter:Ldagger/Lazy;

.field public final context:Landroid/content/Context;

.field public dialog:Lmiuix/appcompat/app/AlertDialog;

.field public final securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field public final uiExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SecurityController;Ldagger/Lazy;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->activityStarter:Ldagger/Lazy;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final getManagementTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->isFinancedDevice()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 10
    const v0, 0x7f1307d9    # @string/monitoring_title_financed_device 'This device is provided by %s'

    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->context:Landroid/content/Context;

    .line 24
    const p1, 0x7f1307d8    # @string/monitoring_title_device_owned 'Device management'

    .line 26
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    :goto_0
    return-object p0
    .line 33
.end method

.method public final isFinancedDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->isDeviceManaged()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->securityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 12
    check-cast p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 16
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 18
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    .line 24
    move-result p0

    .line 27
    const/4 v0, 0x1

    .line 28
    if-ne p0, v0, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
    .line 33
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, -0x2

    .line 2
    if-ne p2, p1, :cond_1

    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 5
    const-string p2, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    .line 7
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->dialog:Lmiuix/appcompat/app/AlertDialog;

    .line 12
    if-nez p2, :cond_0

    .line 14
    const/4 p2, 0x0

    .line 16
    :cond_0
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->activityStarter:Ldagger/Lazy;

    .line 20
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 26
    const/4 p2, 0x0

    .line 28
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public final showDeviceMonitoringDialog()V
    .locals 2

    .line 1
    const-string v0, "SecurityDialog"

    .line 2
    const-string v1, "create and show dialog."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/SecurityDialog;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 9
    new-instance v1, Lcom/android/systemui/controlcenter/policy/SecurityDialog$showDeviceMonitoringDialog$1;

    .line 11
    invoke-direct {v1, p0}, Lcom/android/systemui/controlcenter/policy/SecurityDialog$showDeviceMonitoringDialog$1;-><init>(Lcom/android/systemui/controlcenter/policy/SecurityDialog;)V

    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method
