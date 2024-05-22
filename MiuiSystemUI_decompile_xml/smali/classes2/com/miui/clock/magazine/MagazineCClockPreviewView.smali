.class public Lcom/miui/clock/magazine/MagazineCClockPreviewView;
.super Lcom/miui/clock/MiuiClockPreviewBaseView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mClockContainerStyle1:Landroid/view/ViewGroup;

.field public mClockContainerStyle2:Landroid/view/ViewGroup;

.field public mTimeContainerStyle1:Landroid/view/ViewGroup;


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
    .locals 1

    .line 1
    iget p0, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mStyle:I

    .line 2
    const/4 v0, 0x5

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    const p0, 0x3e3d70a4    # 0.185f

    .line 7
    return p0

    .line 10
    :cond_0
    const p0, 0x3e322d0e    # 0.174f

    .line 11
    return p0
    .line 14
.end method

.method public final init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiClockPreviewBaseView;->init()V

    .line 2
    const-string p0, "miclock-neue-matic-compressed-black"

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 8
    invoke-static {}, Lcom/miui/clock/utils/FontUtils;->getMiSansGlobal()Landroid/graphics/Typeface;

    .line 11
    return-void
    .line 14
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

.method public setStyle(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiClockPreviewBaseView;->setStyle(I)V

    .line 2
    iget p1, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mStyle:I

    .line 5
    const/4 v0, 0x5

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mContext:Landroid/content/Context;

    .line 10
    const v0, 0x7f0d0120    # @layout/layout_miui_clock_magazine_c_type1 'res/layout/layout_miui_clock_magazine_c_type1.xml'

    .line 12
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    move-result-object p1

    .line 18
    const v0, 0x7f0a0200    # @id/clock_container_style1

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    iput-object v0, p0, Lcom/miui/clock/magazine/MagazineCClockPreviewView;->mClockContainerStyle1:Landroid/view/ViewGroup;

    .line 28
    const v0, 0x7f0a098f    # @id/time_container_style1

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    iput-object v0, p0, Lcom/miui/clock/magazine/MagazineCClockPreviewView;->mTimeContainerStyle1:Landroid/view/ViewGroup;

    .line 39
    const v0, 0x7f0a0265    # @id/current_date_style1

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0a0274    # @id/current_week_style1

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    check-cast v0, Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0a026a    # @id/current_time_hour_style1

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v0

    .line 65
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 66
    const v0, 0x7f0a0998    # @id/time_space_style1

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/Space;

    .line 75
    const v0, 0x7f0a0993    # @id/time_end_space_style1

    .line 77
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 80
    move-result-object p0

    .line 83
    check-cast p0, Landroid/widget/Space;

    .line 84
    const p0, 0x7f0a0aa1    # @id/week_space_style1

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    move-result-object p0

    .line 92
    check-cast p0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 93
    const p0, 0x7f0a0292    # @id/date_space_style1

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    move-result-object p0

    .line 101
    check-cast p0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 102
    const p0, 0x7f0a026f    # @id/current_time_minute_style1

    .line 104
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    move-result-object p0

    .line 110
    check-cast p0, Lcom/miui/clock/MiuiTextGlassView;

    .line 111
    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mContext:Landroid/content/Context;

    .line 114
    const v0, 0x7f0d0121    # @layout/layout_miui_clock_magazine_c_type2 'res/layout/layout_miui_clock_magazine_c_type2.xml'

    .line 116
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    move-result-object p1

    .line 122
    const v0, 0x7f0a0201    # @id/clock_container_style2

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 126
    move-result-object v0

    .line 129
    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    iput-object v0, p0, Lcom/miui/clock/magazine/MagazineCClockPreviewView;->mClockContainerStyle2:Landroid/view/ViewGroup;

    .line 132
    const p0, 0x7f0a026b    # @id/current_time_hour_style2

    .line 134
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p0

    .line 140
    check-cast p0, Lcom/miui/clock/MiuiTextGlassView;

    .line 141
    const p0, 0x7f0a0270    # @id/current_time_minute_style2

    .line 143
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    move-result-object p0

    .line 149
    check-cast p0, Lcom/miui/clock/MiuiTextGlassView;

    .line 150
    const p0, 0x7f0a0999    # @id/time_space_style2

    .line 152
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 155
    move-result-object p0

    .line 158
    check-cast p0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 159
    :goto_0
    return-void
    .line 161
.end method
