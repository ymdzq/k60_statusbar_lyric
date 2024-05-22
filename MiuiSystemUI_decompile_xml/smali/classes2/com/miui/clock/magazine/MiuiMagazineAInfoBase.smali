.class public abstract Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;
.super Lcom/miui/clock/module/ClockStyleInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public displayType:I

.field public mClockStyle:I


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/clock/module/ClockStyleInfo;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 6
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPrimaryColor()I

    .line 8
    move-result v0

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 12
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getInfoAreaColor()I

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setInfoAreaColor(I)V

    .line 19
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getStyle()I

    .line 22
    move-result v0

    .line 25
    iput v0, p0, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 26
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor()Z

    .line 28
    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor:Z

    .line 32
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isDisableContainerPassBlur()Z

    .line 34
    move-result p1

    .line 37
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 38
    return-void
    .line 40
.end method
