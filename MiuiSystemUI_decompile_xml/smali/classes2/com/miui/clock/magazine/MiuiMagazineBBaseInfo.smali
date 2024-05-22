.class public abstract Lcom/miui/clock/magazine/MiuiMagazineBBaseInfo;
.super Lcom/miui/clock/module/ClockStyleInfo;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final displayType:I


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/miui/clock/module/ClockStyleInfo;-><init>()V

    .line 2
    iput p2, p0, Lcom/miui/clock/magazine/MiuiMagazineBBaseInfo;->displayType:I

    .line 5
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPrimaryColor()I

    .line 10
    move-result p2

    .line 13
    invoke-static {p2}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 14
    move-result p2

    .line 17
    invoke-virtual {p0, p2}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getPrimaryColor()I

    .line 22
    move-result p2

    .line 25
    invoke-virtual {p0, p2}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 26
    :goto_0
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->getInfoAreaColor()I

    .line 29
    move-result p2

    .line 32
    invoke-virtual {p0, p2}, Lcom/miui/clock/module/ClockStyleInfo;->setInfoAreaColor(I)V

    .line 33
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isAutoPrimaryColor()Z

    .line 36
    move-result p2

    .line 39
    iput-boolean p2, p0, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor:Z

    .line 40
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockBean;->isDisableContainerPassBlur()Z

    .line 42
    move-result p1

    .line 45
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 46
    return-void
    .line 48
.end method
