.class public Lcom/android/settings/TimerView;
.super Landroid/widget/FrameLayout;
.source "TimerView.java"


# instance fields
.field private mBmpHour:Landroid/graphics/Bitmap;

.field private mBmpMinute:Landroid/graphics/Bitmap;

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mHalfHeight:I

.field private mHalfWidth:I

.field private mHeight:I

.field private mHourIV:Landroid/widget/ImageView;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMinuteIV:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/TimerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "layout_inflater"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    sget v1, Lcom/android/settings/R$layout;->usage_timer:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->clock_hour:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$drawable;->clock_minutes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TimerView;->mBmpMinute:Landroid/graphics/Bitmap;

    .line 53
    iget-object p1, p0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/android/settings/TimerView;->mWidth:I

    .line 54
    iget-object p1, p0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/android/settings/TimerView;->mHeight:I

    .line 55
    iget v0, p0, Lcom/android/settings/TimerView;->mWidth:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/TimerView;->mHalfWidth:I

    shr-int/lit8 p1, p1, 0x1

    .line 56
    iput p1, p0, Lcom/android/settings/TimerView;->mHalfHeight:I

    .line 58
    sget p1, Lcom/android/settings/R$id;->usage_time:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/TimerView;->mTime:Landroid/widget/TextView;

    .line 59
    sget p1, Lcom/android/settings/R$id;->usage_date:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/TimerView;->mDate:Landroid/widget/TextView;

    .line 60
    sget p1, Lcom/android/settings/R$id;->clock_hour:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/TimerView;->mHourIV:Landroid/widget/ImageView;

    .line 61
    sget p1, Lcom/android/settings/R$id;->clock_minute:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/TimerView;->mMinuteIV:Landroid/widget/ImageView;

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public setTimer(Ljava/lang/Long;)V
    .locals 11

    .line 67
    iget-object v0, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 70
    iget-object v0, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v2, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d:%02d:%02d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/android/settings/TimerView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 76
    iget-object v2, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 77
    iget-object v1, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v2, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d.%d.%d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v1, p0, Lcom/android/settings/TimerView;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/TimerView;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 82
    iget-object v1, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 83
    iget-object v1, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 p1, p1, 0x1e

    int-to-float p1, p1

    iget v2, p0, Lcom/android/settings/TimerView;->mHalfHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/TimerView;->mHalfWidth:I

    int-to-float v3, v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 84
    iget-object v4, p0, Lcom/android/settings/TimerView;->mBmpHour:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings/TimerView;->mWidth:I

    iget v8, p0, Lcom/android/settings/TimerView;->mHeight:I

    iget-object v9, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 85
    iget-object v1, p0, Lcom/android/settings/TimerView;->mHourIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 88
    iget-object p1, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/TimerView;->mHalfHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/TimerView;->mHalfWidth:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 89
    iget-object v3, p0, Lcom/android/settings/TimerView;->mBmpMinute:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iget v6, p0, Lcom/android/settings/TimerView;->mWidth:I

    iget v7, p0, Lcom/android/settings/TimerView;->mHeight:I

    iget-object v8, p0, Lcom/android/settings/TimerView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 90
    iget-object p0, p0, Lcom/android/settings/TimerView;->mMinuteIV:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
