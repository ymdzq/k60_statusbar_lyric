.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt$PROPERTY_SPRING_Y_OFFSET$1;
.super Landroid/util/FloatProperty;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "SpringYOffset"

    .line 2
    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 10
    int-to-float p0, p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 4
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    float-to-int p2, p2

    .line 11
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->springYOffset:I

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 14
    move-result-object p0

    .line 17
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 18
    if-eqz p1, :cond_1

    .line 20
    check-cast p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 24
    :cond_1
    return-void
    .line 27
.end method
