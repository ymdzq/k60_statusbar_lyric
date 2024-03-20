.class public final Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public showAppLabel:Z

.field public showSideView:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 3
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showSideView:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final animationsEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getShowAppLabel()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getShowSideView()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showSideView:Z

    .line 2
    return p0
    .line 4
.end method

.method public final handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 8
    move-result-object v1

    .line 11
    iget-object p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 12
    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    .line 14
    const/16 v3, 0x8

    .line 16
    if-eqz v2, :cond_0

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    move v0, v3

    .line 27
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showSideView:Z

    .line 31
    if-nez p1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    .line 35
    move-result-object p0

    .line 38
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final isLongClickable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final setShowAppLabel(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabel()Landroid/widget/TextView;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 12
    move-result-object v0

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showAppLabel:Z

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 p0, 0x8

    .line 28
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    return-void
    .line 33
.end method

.method public final setShowSideView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->showSideView:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSideView()Landroid/view/ViewGroup;

    .line 6
    move-result-object p0

    .line 9
    const/16 p1, 0x8

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method
