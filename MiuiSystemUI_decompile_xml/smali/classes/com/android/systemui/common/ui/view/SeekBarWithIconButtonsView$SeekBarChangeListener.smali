.class public final Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public final synthetic this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    .line 4
    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 8
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    .line 10
    move-result v2

    .line 13
    iget-object v3, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    .line 14
    array-length v4, v3

    .line 16
    if-ge v2, v4, :cond_0

    .line 17
    iget-object v0, v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 19
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    .line 21
    move-result v0

    .line 24
    aget-object v0, v3, v0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, ""

    .line 28
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->this$0:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;

    .line 40
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    .line 42
    const/4 p3, 0x1

    .line 44
    const/4 v0, 0x0

    .line 45
    if-lez p2, :cond_3

    .line 46
    move v1, p3

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    move v1, v0

    .line 50
    :goto_1
    invoke-static {p1, v1}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 56
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 58
    move-result p0

    .line 61
    if-ge p2, p0, :cond_4

    .line 62
    goto :goto_2

    .line 64
    :cond_4
    move p3, v0

    .line 65
    :goto_2
    invoke-static {p1, p3}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 66
    return-void
    .line 69
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
