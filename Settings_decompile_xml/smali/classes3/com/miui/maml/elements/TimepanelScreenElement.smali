.class public Lcom/miui/maml/elements/TimepanelScreenElement;
.super Lcom/miui/maml/elements/ImageScreenElement;
.source "TimepanelScreenElement.java"


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

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 60
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object p2

    invoke-virtual {p2}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result p2

    iput-char p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 64
    new-instance p2, Lcom/miui/maml/elements/TimepanelScreenElement$1;

    invoke-direct {p2, p0}, Lcom/miui/maml/elements/TimepanelScreenElement$1;-><init>(Lcom/miui/maml/elements/TimepanelScreenElement;)V

    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    const-string p2, "format"

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string v0, "formatExp"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    const-string/jumbo p2, "space"

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p2

    int-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 115
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p2

    const-string/jumbo v0, "timeZoneId"

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/TimepanelScreenElement;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/maml/elements/TimepanelScreenElement;)Lcom/miui/maml/data/Expression;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mTimeZoneExp:Lcom/miui/maml/data/Expression;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/maml/elements/TimepanelScreenElement;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    return p0
.end method

.method static synthetic access$400(Lcom/miui/maml/elements/TimepanelScreenElement;)Ljava/lang/CharSequence;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$402(Lcom/miui/maml/elements/TimepanelScreenElement;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/maml/elements/TimepanelScreenElement;C)Landroid/graphics/Bitmap;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/maml/elements/TimepanelScreenElement;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/maml/elements/TimepanelScreenElement;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return p0
.end method

.method static synthetic access$702(Lcom/miui/maml/elements/TimepanelScreenElement;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return p1
.end method

.method private createBitmap()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0xb

    if-ge v0, v3, :cond_4

    const-string v3, "0123456789:"

    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/miui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 180
    iput-boolean v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load digit bitmap: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TimepanelScreenElement"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 184
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 185
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 186
    :cond_1
    iget v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 187
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    :cond_2
    if-nez v2, :cond_3

    .line 189
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    mul-int/lit8 v1, v1, 0x5

    .line 191
    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mSpace:I

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 193
    iget-object v1, p0, Lcom/miui/maml/elements/ImageScreenElement;->mBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 194
    iget v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    return-void
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "time.png"

    :cond_0
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_1

    const-string p1, "dot"

    goto :goto_0

    .line 202
    :cond_1
    iget-char v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    if-lt p1, v1, :cond_2

    add-int/lit8 v2, v1, 0x9

    if-gt p1, v2, :cond_2

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 204
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object p0

    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    invoke-static {v0, p1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getFormat()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method private setDateFormat()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatExp:Lcom/miui/maml/data/Expression;

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    goto :goto_0

    :cond_0
    const-string v0, "hh:mm"

    :goto_0
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_1

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private updateTime(Z)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    iput-boolean p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mForceUpdate:Z

    .line 170
    iget-object p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 4

    .line 149
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0xea60

    div-long/2addr p1, v0

    .line 151
    invoke-virtual {p0}, Lcom/miui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-wide v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 154
    invoke-direct {p0, v2}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 155
    iput-wide p1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    .line 156
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    .line 157
    iput-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 131
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->finish()V

    return-void
.end method

.method protected getBitmapWidth()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/miui/maml/elements/ImageScreenElement;->init()V

    .line 121
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 123
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->createBitmap()V

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 142
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lcom/miui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 143
    invoke-direct {p0}, Lcom/miui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    const/4 v0, 0x1

    .line 144
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    return-void
.end method
