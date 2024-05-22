.class public Lcom/miui/clock/classic/ClassicPlusClockPreviewView;
.super Lcom/miui/clock/MiuiClockPreviewBaseView;
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
    invoke-direct {p0, p1}, Lcom/miui/clock/MiuiClockPreviewBaseView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/MiuiClockPreviewBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/clock/MiuiClockPreviewBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getScaleRadio()F
    .locals 0

    .line 1
    const p0, 0x3f0ed917    # 0.558f

    .line 2
    return p0
    .line 5
.end method

.method public final init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiClockPreviewBaseView;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mContext:Landroid/content/Context;

    .line 5
    const v1, 0x7f0d0119    # @layout/layout_classic_plus_preview_view 'res/layout/layout_classic_plus_preview_view.xml'

    .line 7
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    const v1, 0x7f0a099a    # @id/time_view

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/clock/MiuiTextGlassView;

    .line 21
    const v1, 0x7f0a099b    # @id/time_view2

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lcom/miui/clock/MiuiTextGlassView;

    .line 30
    iput-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockPreviewView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 32
    const v1, 0x7f0a00dd    # @id/area1

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockPreviewView;->mArea1:Landroid/view/View;

    .line 41
    const v1, 0x7f0a00de    # @id/area2

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v1

    .line 49
    iput-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockPreviewView;->mArea2:Landroid/view/View;

    .line 50
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockPreviewView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 52
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Lcom/miui/clock/MiuiTextGlassView;->setSameNumberWidth(Z)V

    .line 55
    const v1, 0x7f0a0841    # @id/second_line

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v1

    .line 64
    check-cast v1, Landroidx/constraintlayout/widget/Group;

    .line 65
    const v1, 0x7f0a01fd    # @id/clock_container

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockPreviewView;->mClockContainer:Landroid/view/ViewGroup;

    .line 76
    return-void
    .line 78
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    const p1, 0x7f0707e7    # @dimen/miui_classic_plus_clock_small_view_width '156.0dp'

    .line 5
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockPreviewBaseView;->getDimen(I)I

    .line 8
    move-result p1

    .line 11
    const p2, 0x7f0707e6    # @dimen/miui_classic_plus_clock_small_view_height '130.0dp'

    .line 12
    invoke-virtual {p0, p2}, Lcom/miui/clock/MiuiClockPreviewBaseView;->getDimen(I)I

    .line 15
    move-result p2

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 19
    return-void
    .line 22
.end method

.method public setFontStyle(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
