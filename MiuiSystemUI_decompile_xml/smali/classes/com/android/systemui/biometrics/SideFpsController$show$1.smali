.class public final Lcom/android/systemui/biometrics/SideFpsController$show$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $reason:I

.field public final synthetic $request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/SideFpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/SideFpsController;Lcom/android/systemui/biometrics/SideFpsUiRequestSource;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 4
    iput p3, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$reason:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 4
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$reason:I

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    const-string v3, "SideFpsController#show(request="

    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v0, ", reason="

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, ")"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 43
    iget p0, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$reason:I

    .line 45
    const-wide/16 v2, 0x1000

    .line 47
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 49
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 55
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/biometrics/SideFpsController;->createOverlayForDisplay(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 66
    throw p0

    .line 69
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/biometrics/SideFpsController;->createOverlayForDisplay(I)V

    .line 70
    :cond_1
    :goto_0
    return-void
    .line 73
.end method
