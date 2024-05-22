.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 4
    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 15
    iget-object p1, p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 17
    sget-object v0, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_CLICK:Lcom/android/systemui/privacy/PrivacyChipEvent;

    .line 19
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$onParentVisible$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 24
    iget-boolean p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterEnabled:Z

    .line 26
    if-eqz p1, :cond_1

    .line 28
    new-instance p1, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;

    .line 30
    const/4 v0, 0x1

    .line 32
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;I)V

    .line 33
    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 36
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 42
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p1

    .line 47
    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    .line 50
    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 54
    :cond_2
    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;

    .line 57
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V

    .line 59
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 62
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 64
    :goto_0
    return-void
    .line 67
.end method
