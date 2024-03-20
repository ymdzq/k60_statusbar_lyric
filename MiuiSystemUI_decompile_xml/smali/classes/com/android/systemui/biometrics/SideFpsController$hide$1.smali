.class public final Lcom/android/systemui/biometrics/SideFpsController$hide$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/SideFpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/SideFpsController;Lcom/android/systemui/biometrics/SideFpsUiRequestSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController$hide$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController$hide$1;->$request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController$hide$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/biometrics/SideFpsController;->requests:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController$hide$1;->$request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "SideFpsController#hide("

    .line 18
    const-string v2, ")"

    .line 20
    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController$hide$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 26
    const-wide/16 v1, 0x1000

    .line 28
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 30
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_0

    .line 35
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 37
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/biometrics/SideFpsController;->setOverlayView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 43
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    throw p0

    .line 51
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/biometrics/SideFpsController;->setOverlayView(Landroid/view/View;)V

    .line 52
    :cond_1
    :goto_0
    return-void
    .line 55
.end method
