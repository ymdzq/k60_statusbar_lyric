.class public final synthetic Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->PINNED:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 4
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 11
    sget v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 13
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 15
    iput-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->toEdge:Z

    .line 18
    return-void

    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 21
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V

    .line 23
    iput-boolean v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->toEdge:Z

    .line 26
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method
