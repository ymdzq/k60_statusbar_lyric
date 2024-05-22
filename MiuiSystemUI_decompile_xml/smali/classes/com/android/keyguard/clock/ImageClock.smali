.class public Lcom/android/keyguard/clock/ImageClock;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mDescFormat:Ljava/lang/String;

.field public mHourHand:Landroid/widget/ImageView;

.field public mMinuteHand:Landroid/widget/ImageView;

.field public final mTime:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/ImageClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/clock/ImageClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 5
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/ImageClock;->mDescFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 11
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 23
    const/16 v1, 0xa

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 27
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    const/high16 v1, 0x41f00000    # 30.0f

    .line 32
    mul-float/2addr v0, v1

    .line 34
    iget-object v1, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 35
    const/16 v2, 0xc

    .line 37
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 39
    move-result v1

    .line 42
    int-to-float v1, v1

    .line 43
    const/high16 v3, 0x3f000000    # 0.5f

    .line 44
    mul-float/2addr v1, v3

    .line 46
    add-float/2addr v1, v0

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mHourHand:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 55
    move-result v0

    .line 58
    int-to-float v0, v0

    .line 59
    const/high16 v1, 0x40c00000    # 6.0f

    .line 60
    mul-float/2addr v0, v1

    .line 62
    iget-object v1, p0, Lcom/android/keyguard/clock/ImageClock;->mMinuteHand:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mDescFormat:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/android/keyguard/clock/ImageClock;->mTime:Ljava/util/Calendar;

    .line 70
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    .line 72
    move-result-object v0

    .line 75
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 79
    return-void
    .line 82
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a040c    # @id/hour_hand

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mHourHand:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f0a05bf    # @id/minute_hand

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mMinuteHand:Landroid/widget/ImageView;

    .line 25
    return-void
    .line 27
.end method

.method public setClockColors(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/ImageClock;->mHourHand:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/clock/ImageClock;->mMinuteHand:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 9
    return-void
    .line 12
.end method
