.class public final Lcom/miui/clock/module/MiuiClassicClockInfo;
.super Lcom/miui/clock/module/MiuiClassicClockInfoBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public classicLine3:I

.field public classicLine4:I

.field public classicLine5:I

.field public healthJson:Ljava/lang/String;

.field public final mClockBean:Lcom/miui/clock/module/ClockBean;

.field public signature:Ljava/lang/String;

.field public unablePresetData:Z

.field public weatherJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 2
    iput-object p1, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->mClockBean:Lcom/miui/clock/module/ClockBean;

    .line 5
    iput p2, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final convertFromClockBean(Lcom/miui/clock/module/ClockBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->convertFromClockBean(Lcom/miui/clock/module/ClockBean;)V

    .line 2
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getClassicLine3()I

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine3:I

    .line 9
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getClassicLine4()I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine4:I

    .line 15
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getClassicLine5()I

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->classicLine5:I

    .line 21
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getClassicSignature()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->signature:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPresetHealthJson()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->healthJson:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPresetWeatherJson()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->weatherJson:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isUnablePresetData()Z

    .line 41
    move-result p1

    .line 44
    iput-boolean p1, p0, Lcom/miui/clock/module/MiuiClassicClockInfo;->unablePresetData:Z

    .line 45
    return-void
    .line 47
.end method

.method public final getLayoutId()I
    .locals 0

    .line 1
    const p0, 0x7f0d0194    # @layout/miui_clock_layout_classic 'res/layout/miui_clock_layout_classic.xml'

    .line 2
    return p0
    .line 5
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "classic"

    .line 2
    return-object p0
    .line 4
.end method
