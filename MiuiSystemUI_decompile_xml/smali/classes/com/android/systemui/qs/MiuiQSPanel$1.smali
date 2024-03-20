.class public final Lcom/android/systemui/qs/MiuiQSPanel$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSPanel;

.field public final synthetic val$r:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/MiuiQSPanel;Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->val$r:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getCallbackType()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 6
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final onScanStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->val$r:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 2
    iput-boolean p1, v0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->scanState:Z

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 8
    if-ne v1, v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCallback:Lcom/android/systemui/qs/MiuiQSDetail$Callback;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    check-cast p0, Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 16
    new-instance v0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;

    .line 18
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiQSDetail$1;ZI)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final onShowDetail(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSPanel;->shouldShowDetail()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 10
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->val$r:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 14
    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public final onShowEdit(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    .line 4
    const/16 v1, 0x3e9

    .line 6
    const/4 v2, 0x0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->val$r:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 9
    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    return-void
    .line 18
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->val$r:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->drawTile(Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onToggleStateChanged(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->this$0:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$1;->val$r:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    .line 6
    if-ne v1, p0, :cond_0

    .line 8
    iget-object p0, v0, Lcom/android/systemui/qs/MiuiQSPanel;->mCallback:Lcom/android/systemui/qs/MiuiQSDetail$Callback;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    check-cast p0, Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 14
    new-instance v0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;

    .line 16
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiQSDetail$1;ZI)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 24
    :cond_0
    return-void
    .line 27
.end method
