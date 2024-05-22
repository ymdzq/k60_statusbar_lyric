.class public abstract Lcom/miui/clock/MiuiClockPreviewBaseView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mStyle:I

    .line 3
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockPreviewBaseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mStyle:I

    .line 6
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockPreviewBaseView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mStyle:I

    .line 9
    invoke-virtual {p0}, Lcom/miui/clock/MiuiClockPreviewBaseView;->init()V

    return-void
.end method


# virtual methods
.method public final getDimen(I)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    const v0, 0x3f4ccccd    # 0.8f

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result p1

    .line 31
    int-to-float p1, p1

    .line 32
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 33
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 37
    move-result p0

    .line 40
    mul-float/2addr p0, p1

    .line 41
    mul-float/2addr p0, v0

    .line 42
    float-to-int p0, p0

    .line 43
    return p0
    .line 44
.end method

.method public abstract getScaleRadio()F
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mContext:Landroid/content/Context;

    .line 6
    return-void
    .line 8
.end method

.method public setCalendar(Lmiuix/pickerwidget/date/Calendar;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/MiuiClockPreviewBaseView;->mStyle:I

    .line 2
    return-void
    .line 4
.end method
