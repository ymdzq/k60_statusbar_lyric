.class public final Lcom/android/keyguard/widget/MiuiKeyBoardView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/widget/MiuiKeyBoardView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;->this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;

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
    iget v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;->this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 8
    sget v1, Lcom/android/keyguard/widget/MiuiKeyBoardView;->VERTICAL_MARGIN_RATIO:F

    .line 10
    invoke-virtual {v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->onKeyBoardDelete()V

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;->this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 15
    const-wide/16 v1, 0x32

    .line 17
    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    return-void

    .line 22
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiKeyBoardView$1;->this$0:Lcom/android/keyguard/widget/MiuiKeyBoardView;

    .line 23
    sget v0, Lcom/android/keyguard/widget/MiuiKeyBoardView;->VERTICAL_MARGIN_RATIO:F

    .line 25
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/keyguard/widget/MiuiKeyBoardView;->showPreviewAnim(Z)V

    .line 28
    return-void

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
