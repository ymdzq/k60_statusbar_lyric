.class public final Landroidx/slice/widget/SliceView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/slice/widget/SliceView;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/widget/SliceView;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/slice/widget/SliceView$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

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
    iget v0, p0, Landroidx/slice/widget/SliceView$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    .line 9
    iget-boolean v2, v0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 11
    if-eqz v2, :cond_0

    .line 13
    iget-object v2, v0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 15
    if-eqz v2, :cond_0

    .line 17
    iput-boolean v1, v0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 19
    invoke-interface {v2, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 21
    iget-object p0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    .line 24
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 27
    :cond_0
    return-void

    .line 30
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    .line 31
    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 33
    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isExpired()Z

    .line 37
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    .line 43
    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 45
    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 47
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    .line 50
    iget-object v1, v0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 52
    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 54
    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 56
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView$1;->this$0:Landroidx/slice/widget/SliceView;

    .line 59
    iget-object v0, v0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    .line 61
    const-wide/32 v1, 0xea60

    .line 63
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
