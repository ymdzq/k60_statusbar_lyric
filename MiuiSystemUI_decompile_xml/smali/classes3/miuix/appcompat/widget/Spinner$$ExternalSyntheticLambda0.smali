.class public final synthetic Lmiuix/appcompat/widget/Spinner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/widget/Spinner;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/widget/Spinner;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 14
    instance-of v0, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    .line 20
    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 28
    invoke-interface {p0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    .line 34
    move-result-object v0

    .line 37
    new-instance v1, Landroid/graphics/Point;

    .line 38
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 40
    invoke-static {v0, v1}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 43
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 46
    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    .line 48
    move-result v1

    .line 51
    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    .line 52
    move-result p0

    .line 55
    invoke-interface {v0, v1, p0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->show(II)V

    .line 56
    :cond_1
    :goto_0
    return-void
    .line 59
.end method
