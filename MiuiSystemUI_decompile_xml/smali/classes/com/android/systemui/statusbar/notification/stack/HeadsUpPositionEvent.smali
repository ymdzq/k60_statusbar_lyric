.class public final Lcom/android/systemui/statusbar/notification/stack/HeadsUpPositionEvent;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INTERPOLATOR:Lcom/miui/utils/animation/PhysicBasedInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 2
    const v1, 0x3f59999a    # 0.85f

    .line 4
    const v2, 0x3f2b851f    # 0.67f

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 10
    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/HeadsUpPositionEvent;->INTERPOLATOR:Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 6

    .line 1
    const/16 v2, 0x12

    .line 2
    const-wide/16 v3, 0xfa

    .line 4
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6
    invoke-direct {v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 8
    iget-object v0, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateYViews:Landroidx/collection/ArraySet;

    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 13
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 18
    return-void
    .line 21
.end method
