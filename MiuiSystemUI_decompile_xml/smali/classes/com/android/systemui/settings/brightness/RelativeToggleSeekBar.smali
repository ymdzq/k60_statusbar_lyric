.class public final Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;
.super Lcom/android/systemui/settings/brightness/ToggleSeekBar;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final injector$delegate:Lkotlin/Lazy;


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

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar$injector$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar$injector$2;-><init>(Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;->injector$delegate:Lkotlin/Lazy;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getInjector()Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;->injector$delegate:Lkotlin/Lazy;

    .line 2
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;

    .line 8
    return-object p0
    .line 10
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final internalSetPadding(IIII)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/settings/brightness/RelativeToggleSeekBar;->getInjector()Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [I

    .line 17
    iget-object v2, v0, Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;->mSeekBar:Landroid/widget/SeekBar;

    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->getLocationOnScreen([I)V

    .line 21
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    .line 24
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    .line 29
    move-result v4

    .line 32
    int-to-float v4, v4

    .line 33
    div-float/2addr v3, v4

    .line 34
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    .line 35
    move-result v4

    .line 38
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingStart()I

    .line 39
    move-result v5

    .line 42
    sub-int/2addr v4, v5

    .line 43
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingEnd()I

    .line 44
    move-result v5

    .line 47
    sub-int/2addr v4, v5

    .line 48
    invoke-virtual {v2}, Landroid/widget/SeekBar;->isLayoutRtl()Z

    .line 49
    move-result v5

    .line 52
    const/4 v6, 0x0

    .line 53
    if-eqz v5, :cond_1

    .line 54
    aget v1, v1, v6

    .line 56
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    .line 58
    move-result v5

    .line 61
    add-int/2addr v5, v1

    .line 62
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingEnd()I

    .line 63
    move-result v1

    .line 66
    sub-int/2addr v5, v1

    .line 67
    int-to-float v1, v5

    .line 68
    int-to-float v2, v4

    .line 69
    mul-float/2addr v3, v2

    .line 70
    sub-float/2addr v1, v3

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    aget v1, v1, v6

    .line 73
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingStart()I

    .line 75
    move-result v2

    .line 78
    add-int/2addr v2, v1

    .line 79
    int-to-float v1, v2

    .line 80
    int-to-float v2, v4

    .line 81
    mul-float/2addr v3, v2

    .line 82
    add-float/2addr v1, v3

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 84
    move-result v2

    .line 87
    sub-float/2addr v1, v2

    .line 88
    iput v1, v0, Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;->mOffset:F

    .line 89
    :goto_1
    iget v0, v0, Lcom/android/systemui/qs/brightness/RelativeSeekBarInjector;->mOffset:F

    .line 91
    const/4 v1, 0x0

    .line 93
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 94
    invoke-super {p0, p1}, Lcom/android/systemui/settings/brightness/ToggleSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 97
    move-result p0

    .line 100
    return p0
    .line 101
.end method
