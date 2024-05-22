.class public Lcom/miui/clock/rhombus/RhombusClockPreviewView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mArea1:Landroid/view/View;

.field public mArea2:Landroid/view/View;

.field public mClockContainer:Landroid/view/ViewGroup;

.field public mTimeView2:Lcom/miui/clock/MiuiTextGlassView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->init()V

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f0d0119    # @layout/layout_classic_plus_preview_view 'res/layout/layout_classic_plus_preview_view.xml'

    .line 6
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    const v1, 0x7f0a099a    # @id/time_view

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/miui/clock/MiuiTextGlassView;

    .line 20
    const v1, 0x7f0a099b    # @id/time_view2

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Lcom/miui/clock/MiuiTextGlassView;

    .line 29
    iput-object v1, p0, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 31
    const v1, 0x7f0a00dd    # @id/area1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    move-result-object v1

    .line 39
    iput-object v1, p0, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->mArea1:Landroid/view/View;

    .line 40
    const v1, 0x7f0a00de    # @id/area2

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->mArea2:Landroid/view/View;

    .line 49
    iget-object v1, p0, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 51
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiTextGlassView;->setSameNumberWidth(Z)V

    .line 54
    const v1, 0x7f0a0841    # @id/second_line

    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v1

    .line 63
    check-cast v1, Landroidx/constraintlayout/widget/Group;

    .line 64
    const v1, 0x7f0a01fd    # @id/clock_container

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    iput-object v0, p0, Lcom/miui/clock/rhombus/RhombusClockPreviewView;->mClockContainer:Landroid/view/ViewGroup;

    .line 75
    return-void
    .line 77
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const p2, 0x7f0707e7    # @dimen/miui_classic_plus_clock_small_view_width '156.0dp'

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 12
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 17
    move-result-object p2

    .line 20
    invoke-static {p2}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 21
    move-result p2

    .line 24
    mul-float/2addr p2, p1

    .line 25
    float-to-int p1, p2

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 27
    move-result-object p2

    .line 30
    const v0, 0x7f0707e6    # @dimen/miui_classic_plus_clock_small_view_height '130.0dp'

    .line 31
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    move-result p2

    .line 37
    int-to-float p2, p2

    .line 38
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 39
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 43
    move-result v0

    .line 46
    mul-float/2addr v0, p2

    .line 47
    float-to-int p2, v0

    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 49
    return-void
    .line 52
.end method

.method public setCalendar(Lmiuix/pickerwidget/date/Calendar;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setFontStyle(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setStyle(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
