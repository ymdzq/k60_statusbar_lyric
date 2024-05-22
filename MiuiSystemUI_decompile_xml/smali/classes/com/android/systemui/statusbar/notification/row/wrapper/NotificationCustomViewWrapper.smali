.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mIsLegacy:Z

.field public final mLegacyColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p1

    .line 8
    const p2, 0x7f060753    # @color/notification_legacy_background_color '#ff1a1a1a'

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 12
    move-result p1

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mLegacyColor:I

    .line 16
    return-void
    .line 18
.end method


# virtual methods
.method public final getCustomBackgroundColor()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getCustomBackgroundColor()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsLegacy:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mLegacyColor:I

    .line 12
    return p0

    .line 14
    :cond_0
    return v0
    .line 15
.end method

.method public final onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->needsInversion(ILandroid/view/View;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->invertViewLuminosity(Landroid/view/View;)V

    .line 12
    const/4 p1, 0x3

    .line 15
    new-array p1, p1, [F

    .line 16
    fill-array-data p1, :array_0

    .line 18
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 21
    invoke-static {v0, p1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 23
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const/4 v0, 0x2

    .line 30
    aget v1, p1, v0

    .line 31
    float-to-double v2, v1

    .line 33
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 34
    cmpl-double v2, v2, v4

    .line 36
    if-lez v2, :cond_0

    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    sub-float/2addr v2, v1

    .line 42
    aput v2, p1, v0

    .line 43
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    .line 45
    move-result p1

    .line 48
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mBackgroundColor:I

    .line 49
    :cond_0
    return-void

    .line 51
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
    .line 52
.end method

.method public final setLegacy(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCustomViewWrapper;->mIsLegacy:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setNotificationFaded(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setNotificationFaded(Z)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 5
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFadeAware;->setLayerTypeForFaded(Landroid/view/View;Z)V

    .line 7
    return-void
    .line 10
.end method

.method public final setVisible(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->setVisible(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    return-void
    .line 16
.end method
