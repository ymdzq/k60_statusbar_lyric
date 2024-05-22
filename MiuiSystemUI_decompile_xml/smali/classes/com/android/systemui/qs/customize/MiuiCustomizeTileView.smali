.class public Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mShowAppLabel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public getAppLabel()Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->mShowAppLabel:Z

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p0, 0x8

    .line 13
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    return-void
    .line 18
.end method

.method public final isLongClickable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public setShowAppLabel(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/MiuiCustomizeTileView;->mShowAppLabel:Z

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;->mSecondLine:Landroid/widget/TextView;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x8

    .line 10
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;->mLabel:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 17
    return-void
    .line 20
.end method
