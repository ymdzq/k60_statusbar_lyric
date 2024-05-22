.class public final Lcom/android/systemui/statusbar/notification/stack/GroupCollapseEvent;
.super Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 6

    .line 1
    const/16 v2, 0x14

    .line 2
    const-wide/16 v3, 0x168

    .line 4
    new-instance v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    .line 6
    invoke-direct {v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    .line 8
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateHeight:Z

    .line 12
    iput-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    .line 14
    iput-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateTopInset:Z

    .line 16
    iput-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateY:Z

    .line 18
    iput-boolean v0, v5, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    .line 20
    move-object v0, p0

    .line 22
    move-object v1, p1

    .line 23
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;IJLcom/android/systemui/statusbar/notification/stack/AnimationFilter;)V

    .line 24
    return-void
    .line 27
.end method
