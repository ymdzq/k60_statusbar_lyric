.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;
.super Lcom/android/systemui/media/controls/ui/MediaScrollView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/controls/ui/MediaScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 23
    goto :goto_2

    .line 26
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 27
    goto :goto_2

    .line 29
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v0

    .line 33
    const/4 v1, 0x2

    .line 34
    if-ne v0, v1, :cond_4

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 37
    const/4 v0, 0x0

    .line 40
    goto :goto_3

    .line 41
    :cond_4
    :goto_2
    const/4 v0, 0x1

    .line 42
    :goto_3
    if-nez v0, :cond_5

    .line 43
    return v0

    .line 45
    :cond_5
    invoke-super {p0, p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    move-result p0

    .line 49
    return p0
    .line 50
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 2
    move-result v0

    .line 5
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 9
    move-result p1

    .line 12
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 13
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 21
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 25
    move-result p2

    .line 28
    const/4 p3, 0x1

    .line 29
    if-ne p2, p3, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    if-eq v0, p1, :cond_1

    .line 33
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->scrollTo(II)V

    .line 36
    :cond_1
    return-void
    .line 39
.end method
