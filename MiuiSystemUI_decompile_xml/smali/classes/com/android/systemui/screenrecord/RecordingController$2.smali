.class public final Lcom/android/systemui/screenrecord/RecordingController$2;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenrecord/RecordingController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/RecordingController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    const-string p1, "com.android.systemui.screenrecord.UPDATE_STATE"

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    const-string p1, "extra_state"

    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 25
    move-result p1

    .line 28
    iget-object p0, p0, Lcom/android/systemui/screenrecord/RecordingController$2;->this$0:Lcom/android/systemui/screenrecord/RecordingController;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/RecordingController;->updateState(Z)V

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    const-string p0, "RecordingController"

    .line 35
    const-string p1, "Received update intent with no state"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_1
    :goto_0
    return-void
    .line 42
.end method
