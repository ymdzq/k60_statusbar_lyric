.class public final Lcom/android/systemui/util/DelayableMarqueeTextView;
.super Lcom/android/systemui/util/SafeMarqueeTextView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final enableMarquee:Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;

.field public marqueeBlocked:Z

.field public marqueeDelay:J

.field public wantsMarquee:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x7d0

    .line 6
    iput-wide v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeBlocked:Z

    .line 8
    new-instance v0, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;-><init>(Lcom/android/systemui/util/DelayableMarqueeTextView;)V

    iput-object v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/android/systemui/R$styleable;->DelayableMarqueeTextView:[I

    .line 11
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x7d0

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    move p3, p5

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/util/DelayableMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getMarqueeDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    .line 2
    return-wide v0
    .line 4
.end method

.method public final setMarqueeDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    .line 2
    return-void
    .line 4
.end method

.method public final startMarquee()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->wantsMarquee:Z

    .line 10
    iget-boolean v1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeBlocked:Z

    .line 12
    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    .line 16
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    iget-object v2, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;

    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    iget-object v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;

    .line 34
    iget-wide v1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeDelay:J

    .line 36
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_2
    return-void

    .line 41
    :cond_3
    invoke-super {p0}, Lcom/android/systemui/util/SafeMarqueeTextView;->startMarquee()V

    .line 42
    return-void
    .line 45
.end method

.method public final stopMarquee()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->enableMarquee:Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->wantsMarquee:Z

    .line 14
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView;->marqueeBlocked:Z

    .line 17
    invoke-super {p0}, Lcom/android/systemui/util/SafeMarqueeTextView;->stopMarquee()V

    .line 19
    return-void
    .line 22
.end method
