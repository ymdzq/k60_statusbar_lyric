.class public Lcom/android/systemui/util/SafeMarqueeTextView;
.super Landroid/widget/TextView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public safelyIgnoreLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 4
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/SafeMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final getHasStableWidth()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object p0

    .line 5
    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    const/4 v0, -0x2

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method


# virtual methods
.method public final requestLayout()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/SafeMarqueeTextView;->safelyIgnoreLayout:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 7
    return-void
    .line 10
.end method

.method public startMarquee()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/SafeMarqueeTextView;->safelyIgnoreLayout:Z

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/util/SafeMarqueeTextView;->getHasStableWidth()Z

    .line 4
    move-result v1

    .line 7
    iput-boolean v1, p0, Lcom/android/systemui/util/SafeMarqueeTextView;->safelyIgnoreLayout:Z

    .line 8
    invoke-super {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/util/SafeMarqueeTextView;->safelyIgnoreLayout:Z

    .line 13
    return-void
    .line 15
.end method

.method public stopMarquee()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/util/SafeMarqueeTextView;->safelyIgnoreLayout:Z

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/util/SafeMarqueeTextView;->getHasStableWidth()Z

    .line 4
    move-result v1

    .line 7
    iput-boolean v1, p0, Lcom/android/systemui/util/SafeMarqueeTextView;->safelyIgnoreLayout:Z

    .line 8
    invoke-super {p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/util/SafeMarqueeTextView;->safelyIgnoreLayout:Z

    .line 13
    return-void
    .line 15
.end method
