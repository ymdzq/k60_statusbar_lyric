.class public final Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    const/high16 v1, 0x40200000    # 2.5f

    .line 4
    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 6
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/PanelAppearDisappearEvent;->INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/16 v2, 0x11

    .line 3
    const-wide/16 v3, 0xfa

    .line 5
    sget-object v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->RELEASE_SPRING_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 7
    sget-object v5, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimations;->PANEL_APPEAR_DISAPPEAR_FILTER:Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 9
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 12
    return-void
    .line 15
.end method
