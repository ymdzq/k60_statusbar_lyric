.class public final Lcom/miui/systemui/SettingsManager$userChangedCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/SettingsManager;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/SettingsManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/SettingsManager$userChangedCallback$1;->this$0:Lcom/miui/systemui/SettingsManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/SettingsManager$userChangedCallback$1;->this$0:Lcom/miui/systemui/SettingsManager;

    .line 2
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifStyleChanged()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifFoldChanged()V

    .line 7
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onNotifAggregateChanged()V

    .line 10
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onMiuiOptimizationChanged()V

    .line 13
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onMiuiMirrorDndModeChanged()V

    .line 16
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onGameModeChanged()V

    .line 19
    invoke-virtual {p0}, Lcom/miui/systemui/SettingsManager;->onWakeupForNotificationChanged()V

    .line 22
    return-void
    .line 25
.end method
