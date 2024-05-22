.class public final Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;
.super Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->displayType:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final getLayoutId()I
    .locals 0

    .line 1
    const p0, 0x7f0d01a6    # @layout/miui_clock_layout_rhombus_single 'res/layout/miui_clock_layout_rhombus_single.xml'

    .line 2
    return p0
    .line 5
.end method
