.class public final Landroidx/slice/widget/RowView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/RowView;

.field public final synthetic val$b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    .line 2
    iput-object p2, p0, Landroidx/slice/widget/RowView$1;->val$b:Landroid/widget/Button;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    .line 2
    iget-object v0, p1, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/slice/widget/SliceChildView;->getMode()I

    .line 8
    iget-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    .line 11
    iget v0, p1, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 13
    iget-object v0, p1, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 15
    iget-object p1, p1, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 17
    iget-object p1, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 19
    check-cast v0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;

    .line 21
    iget-object p1, v0, Lcom/android/systemui/volume/VolumePanelDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/volume/VolumePanelDialog;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 28
    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    .line 31
    iget-object v0, p1, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 33
    iget-object v0, v0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 35
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)V

    .line 42
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p1, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 46
    iget-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    .line 48
    iget-boolean v0, p1, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    .line 50
    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p1, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    .line 54
    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p1, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 58
    iget-object v1, v1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 60
    iget p1, p1, Landroidx/slice/widget/RowView;->mRowIndex:I

    .line 62
    check-cast v0, Landroidx/slice/widget/SliceAdapter;

    .line 64
    invoke-virtual {v0, v1, p1}, Landroidx/slice/widget/SliceAdapter;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    .line 66
    :cond_1
    iget-object p1, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    .line 69
    iget-object v0, p1, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    .line 71
    iget-object p1, p1, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    .line 73
    iget-object p1, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 75
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object p1, p0, Landroidx/slice/widget/RowView$1;->val$b:Landroid/widget/Button;

    .line 80
    const/16 v0, 0x8

    .line 82
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    :cond_2
    iget-object p0, p0, Landroidx/slice/widget/RowView$1;->this$0:Landroidx/slice/widget/RowView;

    .line 87
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    const-string p1, "RowView"

    .line 94
    const-string v0, "PendingIntent for slice cannot be sent"

    .line 96
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_0
    return-void
    .line 101
.end method
