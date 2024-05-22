.class public abstract Lcom/miui/clock/module/BaseFontStyle;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHourRotateDegree:[[[F

.field public final mLargeClockHeight:[I

.field public final mLargeClockWidth:[I

.field public final mMinuteRotateDegree:[[[F

.field public final mNotificationCenterXOffset:[F

.field public mUserDefinedColonResource:I

.field public mUserDefinedResources:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0xa

    .line 5
    new-array v1, v0, [F

    .line 7
    fill-array-data v1, :array_0

    .line 9
    iput-object v1, p0, Lcom/miui/clock/module/BaseFontStyle;->mNotificationCenterXOffset:[F

    .line 12
    filled-new-array {v0, v0, v0}, [I

    .line 14
    move-result-object v1

    .line 17
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 18
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, [[[F

    .line 24
    iput-object v1, p0, Lcom/miui/clock/module/BaseFontStyle;->mHourRotateDegree:[[[F

    .line 26
    filled-new-array {v0, v0, v0}, [I

    .line 28
    move-result-object v1

    .line 31
    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, [[[F

    .line 36
    iput-object v1, p0, Lcom/miui/clock/module/BaseFontStyle;->mMinuteRotateDegree:[[[F

    .line 38
    new-array v1, v0, [I

    .line 40
    iput-object v1, p0, Lcom/miui/clock/module/BaseFontStyle;->mLargeClockWidth:[I

    .line 42
    new-array v0, v0, [I

    .line 44
    iput-object v0, p0, Lcom/miui/clock/module/BaseFontStyle;->mLargeClockHeight:[I

    .line 46
    return-void

    .line 48
    nop

    .line 49
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
    .line 50
.end method


# virtual methods
.method public enableRotate()Z
    .locals 0

    .line 1
    instance-of p0, p0, Lcom/miui/clock/module/FontDryBrush9;

    .line 2
    return p0
    .line 4
.end method

.method public getCHSPercentages()[F
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getPercentages()[F

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getColonInterval()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract getColonResource()I
.end method

.method public abstract getColonSize()F
.end method

.method public getFontRotateValue(FI)[I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public abstract getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;
.end method

.method public abstract getHourOffset()[[[I
.end method

.method public getHourRotateDegree()[[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/BaseFontStyle;->mHourRotateDegree:[[[F

    .line 2
    return-object p0
    .line 4
.end method

.method public getLargeClockHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getLargeClockHeights()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/BaseFontStyle;->mLargeClockHeight:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public getLargeClockWidth()[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/BaseFontStyle;->mLargeClockWidth:[I

    .line 2
    return-object p0
    .line 4
.end method

.method public getLeftEmpty()[F
    .locals 0

    .line 1
    const/16 p0, 0x64

    .line 2
    new-array p0, p0, [F

    .line 4
    return-object p0
    .line 6
.end method

.method public getMaxRotateDegree()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract getMinuteOffset()[[[I
.end method

.method public getMinuteRotateDegree()[[[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/BaseFontStyle;->mMinuteRotateDegree:[[[F

    .line 2
    return-object p0
    .line 4
.end method

.method public getNotificationCenterXOffset()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/module/BaseFontStyle;->mNotificationCenterXOffset:[F

    .line 2
    return-object p0
    .line 4
.end method

.method public getNotificationColonHeight()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNotificationColonWidth()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract getPercentages()[F
.end method

.method public getRightEmpty()[F
    .locals 0

    .line 1
    const/16 p0, 0x64

    .line 2
    new-array p0, p0, [F

    .line 4
    return-object p0
    .line 6
.end method

.method public getSmallClockInnerHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getSmallClockInnerMarginOffset()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getSmallColon1MarginInnerTop()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getSmallColon2MarginInnerTop()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getSmallColonRealWidth()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract getSmallColonResource()I
.end method

.method public getSmallColonResourceHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getSmallColonResourceWidth()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract getSvgResource()[I
.end method

.method public abstract getTextBoxWidth()I
.end method
