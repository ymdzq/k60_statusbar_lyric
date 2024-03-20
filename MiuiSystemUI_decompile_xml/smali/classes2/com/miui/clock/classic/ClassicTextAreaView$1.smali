.class public final Lcom/miui/clock/classic/ClassicTextAreaView$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/miui/clock/classic/ClassicTextAreaView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/clock/classic/ClassicTextAreaView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;->this$0:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 8
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;->this$0:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 11
    new-instance v0, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;-><init>(Landroid/database/ContentObserver;I)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void

    .line 22
    :goto_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 23
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;->this$0:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 26
    new-instance v0, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;

    .line 28
    const/4 v1, 0x1

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;-><init>(Landroid/database/ContentObserver;I)V

    .line 31
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
