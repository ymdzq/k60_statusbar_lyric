.class public Lcom/miui/clock/magazine/MagazineAClockPreviewView;
.super Lcom/miui/clock/MiuiClockPreviewBaseView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mClockContainer:Landroid/view/ViewGroup;

.field public mClockContainerInner:Landroid/view/ViewGroup;

.field public mDateSpace:Landroid/view/View;

.field public mTimeSpace:Landroid/view/View;

.field public mWeekSpace:Landroid/view/View;


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
    const p0, 0x3ef8d4fe    # 0.486f

    .line 2
    return p0
    .line 5
.end method

.method public final init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiClockPreviewBaseView;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mContext:Landroid/content/Context;

    .line 5
    const v1, 0x7f0d011c    # @layout/layout_magazine_a_preview_view 'res/layout/layout_magazine_a_preview_view.xml'

    .line 7
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    const v1, 0x7f0a0263    # @id/current_date

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/TextView;

    .line 21
    const v1, 0x7f0a0273    # @id/current_week

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    const v1, 0x7f0a0267    # @id/current_time

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0a0291    # @id/date_space

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/miui/clock/magazine/MagazineAClockPreviewView;->mDateSpace:Landroid/view/View;

    .line 48
    const v1, 0x7f0a0997    # @id/time_space

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/miui/clock/magazine/MagazineAClockPreviewView;->mTimeSpace:Landroid/view/View;

    .line 57
    const v1, 0x7f0a0aa0    # @id/week_space

    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/miui/clock/magazine/MagazineAClockPreviewView;->mWeekSpace:Landroid/view/View;

    .line 66
    const v1, 0x7f0a028d    # @id/date_center_space

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/Space;

    .line 75
    const v1, 0x7f0a098d    # @id/time_center_space

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object v1

    .line 83
    check-cast v1, Landroid/widget/Space;

    .line 84
    const v1, 0x7f0a01ff    # @id/clock_container_inner

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object v1

    .line 92
    check-cast v1, Landroid/view/ViewGroup;

    .line 93
    iput-object v1, p0, Lcom/miui/clock/magazine/MagazineAClockPreviewView;->mClockContainerInner:Landroid/view/ViewGroup;

    .line 95
    const v1, 0x7f0a01fd    # @id/clock_container

    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    move-result-object v0

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    iput-object v0, p0, Lcom/miui/clock/magazine/MagazineAClockPreviewView;->mClockContainer:Landroid/view/ViewGroup;

    .line 106
    return-void
    .line 108
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    const p1, 0x7f0707f1    # @dimen/miui_clock_small_view_width '105.0dp'

    .line 5
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiClockPreviewBaseView;->getDimen(I)I

    .line 8
    move-result p1

    .line 11
    const p2, 0x7f0707f0    # @dimen/miui_clock_small_view_height '82.0dp'

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
