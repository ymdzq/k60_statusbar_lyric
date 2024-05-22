.class public final synthetic Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

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
    iget p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 10
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 12
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 14
    move-result p1

    .line 17
    if-lez p1, :cond_1

    .line 18
    iget-object v2, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 20
    sub-int/2addr p1, v1

    .line 22
    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    .line 26
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 28
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 30
    move-result p0

    .line 33
    if-lez p0, :cond_0

    .line 34
    move v0, v1

    .line 36
    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 37
    :cond_1
    return-void

    .line 40
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 41
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 43
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 45
    move-result p1

    .line 48
    iget-object v2, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 49
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    .line 51
    move-result v2

    .line 54
    if-ge p1, v2, :cond_3

    .line 55
    iget-object v2, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 57
    add-int/2addr p1, v1

    .line 59
    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 60
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    .line 63
    iget-object v2, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 65
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    .line 67
    move-result v2

    .line 70
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 71
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 73
    move-result p0

    .line 76
    if-ge v2, p0, :cond_2

    .line 77
    move v0, v1

    .line 79
    :cond_2
    invoke-static {p1, v0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 80
    :cond_3
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 84
.end method
