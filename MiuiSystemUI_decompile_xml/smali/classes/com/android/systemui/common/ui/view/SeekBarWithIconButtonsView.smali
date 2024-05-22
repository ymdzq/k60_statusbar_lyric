.class public Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mIconEnd:Landroid/widget/ImageView;

.field public final mIconEndFrame:Landroid/view/ViewGroup;

.field public final mIconStart:Landroid/widget/ImageView;

.field public final mIconStartFrame:Landroid/view/ViewGroup;

.field public final mSeekBarListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;

.field public final mSeekbar:Landroid/widget/SeekBar;

.field public mStateLabels:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance v0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;-><init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;)V

    iput-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0331    # @layout/seekbar_with_icon_buttons 'res/layout/seekbar_with_icon_buttons.xml'

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0a0423    # @id/icon_start_frame

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconStartFrame:Landroid/view/ViewGroup;

    const v2, 0x7f0a041b    # @id/icon_end_frame

    .line 9
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconEndFrame:Landroid/view/ViewGroup;

    const v4, 0x7f0a0422    # @id/icon_start

    .line 10
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    const v4, 0x7f0a041a    # @id/icon_end

    .line 11
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    const v4, 0x7f0a084e    # @id/seekbar

    .line 12
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    iput-object v4, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    .line 13
    sget-object v7, Lcom/android/systemui/R$styleable;->SeekBarWithIconButtonsView_Layout:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 14
    invoke-virtual {p2, p3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 p4, 0x3

    .line 15
    invoke-virtual {p2, p4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 16
    invoke-virtual {v4, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 17
    invoke-virtual {p0, p4}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setProgress(I)V

    .line 18
    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 19
    invoke-virtual {p2, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p3, :cond_0

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 25
    invoke-virtual {p0, v6}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setProgress(I)V

    .line 26
    :cond_2
    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 27
    new-instance p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v6}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;I)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    new-instance p1, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v3}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;I)V

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static setIconViewAndFrameEnabled(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/view/ViewGroup;

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public setMax(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    return-void
    .line 7
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekBarListener:Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;

    .line 2
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView$SeekBarChangeListener;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 4
    return-void
    .line 6
.end method

.method public setProgress(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconStart:Landroid/widget/ImageView;

    .line 7
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-lez p1, :cond_0

    .line 11
    move v3, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    invoke-static {v0, v3}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mIconEnd:Landroid/widget/ImageView;

    .line 19
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 21
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    .line 23
    move-result p0

    .line 26
    if-ge p1, p0, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_1
    invoke-static {v0, v1}, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->setIconViewAndFrameEnabled(Landroid/view/View;Z)V

    .line 31
    return-void
    .line 34
.end method

.method public setProgressStateLabels([Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 8
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mStateLabels:[Ljava/lang/String;

    .line 12
    array-length v2, v1

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/common/ui/view/SeekBarWithIconButtonsView;->mSeekbar:Landroid/widget/SeekBar;

    .line 17
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 19
    move-result p0

    .line 22
    aget-object p0, v1, p0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const-string p0, ""

    .line 26
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 28
    :cond_1
    return-void
    .line 31
.end method
