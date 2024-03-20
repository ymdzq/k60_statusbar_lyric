.class public final Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/MiuiQSContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/MiuiQSContainer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->this$0:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final accept()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->$r8$classId:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->this$0:Lcom/android/systemui/qs/MiuiQSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->this$0:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->animateBottomOnNextLayout:Z

    :cond_0
    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->this$0:Lcom/android/systemui/qs/MiuiQSContainer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->this$0:Lcom/android/systemui/qs/MiuiQSContainer;

    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iput-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->animateBottomOnNextLayout:Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->accept()V

    return-void

    .line 2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;->accept()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
