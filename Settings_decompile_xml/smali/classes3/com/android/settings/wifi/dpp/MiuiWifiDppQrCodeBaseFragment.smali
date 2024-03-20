.class public abstract Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MiuiWifiDppQrCodeBaseFragment.java"


# instance fields
.field protected mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

.field protected mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

.field protected mSummary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isFooterAvailable()Z
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x1020010    # @android:id/summary

    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->isFooterAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x2

    .line 59
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 60
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 63
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x5

    .line 64
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    sget p2, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/MiuiWifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    :cond_0
    return-void
.end method

.method protected setHeaderIconImageResource(I)V
    .locals 0

    .line 0
    return-void
.end method

.method protected varargs setHeaderTitle(I[Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected setProgressBarShown(Z)V
    .locals 0

    .line 0
    return-void
.end method
