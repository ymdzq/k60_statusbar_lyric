.class public final Lcom/miui/clock/magazine/MiuiMagazineASingleClockInfo;
.super Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;-><init>(Lcom/miui/clock/module/ClockBean;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->displayType:I

    .line 6
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPrimaryColor()I

    .line 8
    move-result p1

    .line 11
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final getLayoutId()I
    .locals 0

    .line 1
    const p0, 0x7f0d019d    # @layout/miui_clock_layout_magazine_a_single 'res/layout/miui_clock_layout_magazine_a_single.xml'

    .line 2
    return p0
    .line 5
.end method
