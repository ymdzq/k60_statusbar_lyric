.class public final synthetic Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/qs/MiuiQSDetail$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSDetail$1;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->f$1:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 8
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->f$1:Z

    .line 10
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 12
    iget-object v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/DetailAdapter;->getToggleEnabled()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/MiuiQSDetail;->handleToggleStateChanged(ZZ)V

    .line 27
    return-void

    .line 30
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/qs/MiuiQSDetail$1;

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSDetail$1$$ExternalSyntheticLambda0;->f$1:Z

    .line 33
    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSDetail$1;->this$0:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 35
    iget-boolean v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mScanState:Z

    .line 37
    if-ne v1, p0, :cond_1

    .line 39
    goto :goto_2

    .line 41
    :cond_1
    iput-boolean p0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mScanState:Z

    .line 42
    :goto_2
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method