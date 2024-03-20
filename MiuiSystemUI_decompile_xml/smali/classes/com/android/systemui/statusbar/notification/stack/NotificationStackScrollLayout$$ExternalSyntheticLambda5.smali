.class public final synthetic Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    sget p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->$r8$clinit:I

    .line 6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 8
    move-result p0

    .line 11
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 12
    move-result p1

    .line 15
    int-to-float p1, p1

    .line 16
    add-float/2addr p0, p1

    .line 17
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 18
    move-result p1

    .line 21
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 22
    move-result p2

    .line 25
    int-to-float p2, p2

    .line 26
    add-float/2addr p1, p2

    .line 27
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    .line 28
    move-result p0

    .line 31
    return p0
    .line 32
.end method
