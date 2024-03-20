.class public final Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    .line 10
    invoke-virtual {v0}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    .line 12
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->safetyCenterEnabled:Z

    .line 16
    return-void

    .line 18
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 21
    iget-object v2, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->appOpsController:Lcom/android/systemui/appops/AppOpsController;

    .line 23
    check-cast v2, Lcom/android/systemui/appops/AppOpsControllerImpl;

    .line 25
    iget-boolean v2, v2, Lcom/android/systemui/appops/AppOpsControllerImpl;->mMicMuted:Z

    .line 27
    iget-object v1, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->permissionManager:Landroid/permission/PermissionManager;

    .line 29
    invoke-virtual {v1, v2}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData(Z)Ljava/util/List;

    .line 31
    move-result-object v1

    .line 34
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 35
    iget-object v1, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 38
    iget-object v1, v1, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 40
    invoke-virtual {v1, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logUnfilteredPermGroupUsage(Ljava/util/List;)V

    .line 42
    new-instance v1, Landroid/content/Intent;

    .line 45
    const-string v2, "android.intent.action.VIEW_SAFETY_CENTER_QS"

    .line 47
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v2, "android.permission.extra.PERMISSION_USAGES"

    .line 52
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 54
    const/high16 v0, 0x10000000

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController$1;->this$0:Lcom/android/systemui/qs/HeaderPrivacyIconsController;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/HeaderPrivacyIconsController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 64
    new-instance v2, Lcom/android/systemui/qs/HeaderPrivacyIconsController$showSafetyCenter$1$1;

    .line 66
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/qs/HeaderPrivacyIconsController$showSafetyCenter$1$1;-><init>(Lcom/android/systemui/qs/HeaderPrivacyIconsController;Landroid/content/Intent;)V

    .line 68
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 71
    return-void

    .line 74
    nop

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 76
.end method
