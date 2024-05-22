.class public Lcom/miui/clock/module/MiuiClassicPlusClockInfo;
.super Lcom/miui/clock/module/MiuiClassicClockInfoBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 2
    iput p2, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    .line 1
    const p0, 0x7f0d0195    # @layout/miui_clock_layout_classic_plus 'res/layout/miui_clock_layout_classic_plus.xml'

    .line 2
    return p0
    .line 5
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "classic_plus"

    .line 2
    return-object p0
    .line 4
.end method
