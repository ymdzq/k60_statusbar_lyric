.class public final Lcom/android/systemui/statusbar/policy/MinimalismModeController$3;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MinimalismModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController$3;->this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

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
    const-string p1, "minimalism"

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    move-result p1

    .line 8
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController$3;->this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 9
    const/4 v1, 0x1

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    move v0, v1

    .line 14
    :cond_0
    iput-boolean v0, p2, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mFakeMinimalism:Z

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string p2, "onReceive: mFakeMinimalism="

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController$3;->this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 24
    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mFakeMinimalism:Z

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 34
    const-string p2, "MinimalismModeController"

    .line 35
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MinimalismModeController$3;->this$0:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->fireMinimalismModeChanged()V

    .line 42
    return-void
    .line 45
.end method
