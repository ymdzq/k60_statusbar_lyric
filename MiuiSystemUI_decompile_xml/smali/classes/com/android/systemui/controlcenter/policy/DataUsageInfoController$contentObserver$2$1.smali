.class public final Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    const-string v0, "content observer update "

    .line 2
    const-string v1, "DataUsageInfoController"

    .line 4
    invoke-static {v0, p1, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;->this$0:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 9
    sget-object p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    new-instance p1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$requestUpdate$1;

    .line 16
    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$requestUpdate$1;-><init>(Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;)V

    .line 18
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 21
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    return-void
    .line 26
.end method
