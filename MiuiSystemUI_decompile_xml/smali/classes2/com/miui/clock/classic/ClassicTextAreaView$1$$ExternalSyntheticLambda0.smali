.class public final synthetic Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/database/ContentObserver;


# direct methods
.method public synthetic constructor <init>(Landroid/database/ContentObserver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;->f$0:Landroid/database/ContentObserver;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;->f$0:Landroid/database/ContentObserver;

    .line 8
    check-cast p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 10
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;->this$0:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 12
    sget v0, Lcom/miui/clock/classic/ClassicTextAreaView;->$r8$clinit:I

    .line 14
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateServiceProviderName()V

    .line 16
    return-void

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1$$ExternalSyntheticLambda0;->f$0:Landroid/database/ContentObserver;

    .line 20
    check-cast p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;

    .line 22
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicTextAreaView$1;->this$0:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 24
    sget v0, Lcom/miui/clock/classic/ClassicTextAreaView;->$r8$clinit:I

    .line 26
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicTextAreaView;->updateServiceProviderColor()V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
