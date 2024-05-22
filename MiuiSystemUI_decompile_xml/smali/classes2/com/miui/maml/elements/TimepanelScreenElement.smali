.class public Lcom/miui/maml/elements/TimepanelScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field protected mCalendar:Ljava/util/Calendar;

.field private mForceUpdate:Z

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Lcom/miui/maml/data/Expression;

.field private mFormatRaw:Ljava/lang/String;

.field private mLoadResourceFailed:Z

.field private mLocalizedZero:C

.field private mOldFormat:Ljava/lang/String;

.field private mOldSrc:Ljava/lang/String;

.field private mPreMinute:J

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I

.field private mTimeZoneExp:Lcom/miui/maml/data/Expression;

.field private mUpdateTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 5
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 9
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    .line 11
    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 15
    move-result p2

    .line 18
    iput-char p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 19
    new-instance p2, Lcom/miui/maml/elements/TimepanelScreenElement$1;

    .line 21
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/TimepanelScreenElement$1;-><init>(Lcom/miui/maml/elements/TimepanelScreenElement;)V

    .line 23
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 26
    const-string p2, "format"

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 33
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 36
    move-result-object p2

    .line 39
    const-string v0, "formatExp"

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 46
    move-result-object p2

    .line 49
    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    .line 50
    const-string/jumbo p2, "space"

    .line 52
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 56
    move-result p2

    .line 59
    int-to-double v0, p2

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 61
    move-result p2

    .line 64
    float-to-int p2, p2

    .line 65
    iput p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 68
    move-result-object p2

    .line 71
    const-string/jumbo v0, "timeZoneId"

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object p1

    .line 78
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 79
    move-result-object p1

    .line 82
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    .line 83
    return-void
    .line 85
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/TimepanelScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/TimepanelScreenElement;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$402(Lcom/miui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 2
    return-object p1
    .line 4
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/TimepanelScreenElement;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$702(Lcom/miui/maml/elements/TimepanelScreenElement;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 2
    return p1
    .line 4
.end method

.method private createBitmap()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    const/16 v3, 0xb

    .line 5
    if-ge v0, v3, :cond_4

    .line 7
    const-string v3, "0123456789:"

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 11
    move-result v4

    .line 14
    invoke-direct {p0, v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    .line 15
    move-result-object v4

    .line 18
    if-nez v4, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "Failed to load digit bitmap: "

    .line 26
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    .line 31
    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    const-string v0, "TimepanelScreenElement"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    move-result v3

    .line 51
    if-ge v1, v3, :cond_1

    .line 52
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 54
    move-result v1

    .line 57
    :cond_1
    iget v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 58
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 60
    move-result v5

    .line 63
    if-ge v3, v5, :cond_2

    .line 64
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 66
    move-result v3

    .line 69
    iput v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 70
    :cond_2
    if-nez v2, :cond_3

    .line 72
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    .line 74
    move-result v2

    .line 77
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_0

    .line 80
    :cond_4
    mul-int/lit8 v1, v1, 0x5

    .line 81
    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 83
    mul-int/lit8 v0, v0, 0x4

    .line 85
    add-int/2addr v0, v1

    .line 87
    iget v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 88
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 90
    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 92
    move-result-object v0

    .line 95
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 96
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 99
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 101
    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 104
    int-to-double v0, v0

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 107
    move-result-wide v0

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 111
    return-void
    .line 114
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    const-string/jumbo v0, "time.png"

    .line 12
    :cond_0
    const/16 v1, 0x3a

    .line 15
    if-ne p1, v1, :cond_1

    .line 17
    const-string p1, "dot"

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-char v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 22
    if-lt p1, v1, :cond_2

    .line 24
    add-int/lit8 v2, v1, 0x9

    .line 26
    if-gt p1, v2, :cond_2

    .line 28
    sub-int/2addr p1, v1

    .line 30
    add-int/lit8 p1, p1, 0x30

    .line 31
    int-to-char p1, p1

    .line 33
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 38
    move-result-object p0

    .line 41
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 42
    invoke-static {v0, p1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 48
    move-result-object p0

    .line 51
    return-object p0
    .line 52
.end method

.method private getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 11
    return-object p0
    .line 13
.end method

.method private setDateFormat()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    .line 10
    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 14
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const-string v0, "kk:mm"

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "hh:mm"

    .line 29
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 36
    :goto_1
    return-void
    .line 38
.end method

.method private updateTime(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iput-boolean p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    .line 15
    iget-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 17
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 19
    return-void
    .line 22
.end method


# virtual methods
.method public doTick(J)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    move-result-wide p1

    .line 8
    const-wide/32 v0, 0xea60

    .line 9
    div-long/2addr p1, v0

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    iget-wide v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    .line 21
    cmp-long v2, p1, v2

    .line 23
    if-nez v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    .line 27
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    .line 35
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 37
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    :cond_0
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 44
    iput-wide p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    .line 47
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    .line 51
    :cond_1
    return-void
    .line 53
.end method

.method public finish()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 3
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 12
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->finish()V

    .line 21
    return-void
    .line 24
.end method

.method public getBitmapWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 5
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 9
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->createBitmap()V

    .line 11
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 15
    return-void
    .line 18
.end method

.method public pause()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 6
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    .line 12
    move-result v0

    .line 15
    iput-char v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 16
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 18
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 22
    return-void
    .line 25
.end method
