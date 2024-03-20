.class public final Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;
.super Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
