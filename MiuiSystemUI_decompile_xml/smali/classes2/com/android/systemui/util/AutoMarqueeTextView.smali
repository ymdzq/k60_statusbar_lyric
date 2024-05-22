.class public Lcom/android/systemui/util/AutoMarqueeTextView;
.super Lcom/android/systemui/util/SafeMarqueeTextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAggregatedVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 2
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->isVisibleToUser()Z

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/AutoMarqueeTextView;->onVisibilityAggregated(Z)V

    .line 6
    return-void
    .line 9
.end method

.method public final onVisibilityAggregated(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    .line 10
    if-eqz p1, :cond_1

    .line 12
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 22
    :goto_0
    return-void
    .line 25
.end method
