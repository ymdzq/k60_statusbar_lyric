.class public abstract Lcom/miui/clock/module/MiuiClassicClockInfoBase;
.super Lcom/miui/clock/module/ClockStyleInfo;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public classicLine1:I

.field public classicLine2:I

.field public displayType:I

.field public enableDiffusion:Z

.field public style:I


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/clock/module/ClockStyleInfo;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->convertFromClockBean(Lcom/miui/clock/module/ClockBean;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public convertFromClockBean(Lcom/miui/clock/module/ClockBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getClassicLine1()I

    .line 2
    move-result v0

    .line 5
    iput v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 6
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getClassicLine2()I

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine2:I

    .line 12
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPrimaryColor()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 18
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getSecondaryColor()I

    .line 21
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 25
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getInfoAreaColor()I

    .line 28
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setInfoAreaColor(I)V

    .line 32
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 35
    move-result v0

    .line 38
    iput v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->style:I

    .line 39
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isEnableDiffusion()Z

    .line 41
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->enableDiffusion:Z

    .line 45
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor()Z

    .line 47
    move-result v0

    .line 50
    iput-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor:Z

    .line 51
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoSecondaryColor()Z

    .line 53
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor:Z

    .line 57
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isDisableContainerPassBlur()Z

    .line 59
    move-result p1

    .line 62
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 63
    return-void
    .line 65
.end method

.method public final getClassicPlusSecondaryColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_1
    iget v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 19
    if-eqz v0, :cond_3

    .line 21
    iget v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 23
    invoke-static {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodSecondaryColor:I

    .line 31
    return p0

    .line 33
    :cond_2
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 34
    return p0

    .line 36
    :cond_3
    invoke-virtual {p0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 37
    move-result p0

    .line 40
    return p0
    .line 41
.end method

.method public final getPrimaryColor()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    iget v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 8
    invoke-static {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget p0, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 16
    return p0

    .line 18
    :cond_1
    invoke-super {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public final getStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->style:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/16 v0, 0x15

    .line 6
    iput v0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->style:I

    .line 8
    :cond_0
    iget p0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->style:I

    .line 10
    return p0
    .line 12
.end method
