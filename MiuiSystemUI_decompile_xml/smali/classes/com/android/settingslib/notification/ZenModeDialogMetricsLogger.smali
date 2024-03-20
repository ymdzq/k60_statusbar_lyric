.class public Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public logOnClickTimeButton(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    const/16 v0, 0xa3

    .line 4
    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 6
    return-void
    .line 9
.end method

.method public logOnConditionSelected()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    const/16 v0, 0xa4

    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    return-void
    .line 9
.end method

.method public logOnEnableZenModeForever()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    const/16 v0, 0x4eb

    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    return-void
    .line 9
.end method

.method public logOnEnableZenModeUntilAlarm()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    const/16 v0, 0x4ed

    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    return-void
    .line 9
.end method

.method public logOnEnableZenModeUntilCountdown()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/notification/ZenModeDialogMetricsLogger;->mContext:Landroid/content/Context;

    .line 2
    const/16 v0, 0x4ec

    .line 4
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 6
    return-void
    .line 9
.end method
