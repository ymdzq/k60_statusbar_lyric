.class public Lcom/android/keyguard/widget/MiuiKeyBoardView$KeyButton;
.super Landroid/widget/TextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final layout(IIII)V
    .locals 3

    .line 1
    sub-int v0, p3, p1

    .line 2
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 6
    move-result v0

    .line 9
    sub-int v2, p4, p2

    .line 10
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    .line 19
    return-void
    .line 22
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    instance-of v0, v0, Ljava/lang/String;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    .line 10
    move-result v0

    .line 13
    const v1, 0x7f0a0109    # @id/backslash

    .line 14
    if-ne v0, v1, :cond_0

    .line 17
    const-string v0, "\\"

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 31
    return-void
    .line 34
.end method
