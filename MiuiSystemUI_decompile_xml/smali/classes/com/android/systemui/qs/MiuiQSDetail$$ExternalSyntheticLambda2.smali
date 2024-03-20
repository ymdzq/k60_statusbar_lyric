.class public final synthetic Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/MiuiQSDetail;

.field public final synthetic f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field public final synthetic f$2:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSDetail;Lcom/android/systemui/plugins/qs/DetailAdapter;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$$ExternalSyntheticLambda2;->f$2:Landroid/content/Intent;

    .line 6
    sget v1, Lcom/android/systemui/qs/MiuiQSDetail;->$r8$clinit:I

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    .line 13
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    .line 19
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getMetricsCategory()I

    .line 21
    move-result v2

    .line 24
    const/16 v3, 0x3a1

    .line 25
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 27
    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSDetail;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 30
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/DetailAdapter;->moreSettingsEvent()Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    .line 32
    move-result-object v0

    .line 35
    check-cast p1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 38
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 41
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 47
    const/4 v0, 0x0

    .line 49
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 50
    return-void
    .line 53
.end method
