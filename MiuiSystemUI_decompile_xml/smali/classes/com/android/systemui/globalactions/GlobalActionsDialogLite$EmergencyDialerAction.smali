.class Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAction;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    const v0, 0x7f080ff2    # @drawable/ic_emergency_star 'res/drawable/ic_emergency_star.xml'

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final onPress()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 4
    const/16 v1, 0x621

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 11
    sget-object v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_EMERGENCY_DIALER_PRESS:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    .line 13
    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mCentralSurfacesOptional:Ljava/util/Optional;

    .line 22
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda9;

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite$$ExternalSyntheticLambda9;-><init>(I)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 30
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 33
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    move-result-object v0

    .line 39
    const/high16 v1, 0x14800000

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    const-string v1, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    .line 50
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 52
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 60
    :cond_0
    return-void
    .line 63
.end method
