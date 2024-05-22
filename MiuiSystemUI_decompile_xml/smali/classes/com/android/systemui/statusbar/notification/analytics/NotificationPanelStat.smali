.class public final Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCollapseEvent:Lcom/miui/systemui/events/CollapseEvent;

.field public mCreateTimeMillis:J

.field public final mEventTracker:Lcom/miui/interfaces/IEventTracker;

.field public mExpandEvent:Lcom/miui/systemui/events/ExpandEvent;

.field public mFistNotifAction:Lcom/miui/systemui/events/NotifAction;

.field public mIsClick:Z

.field public mIsClickAction:Z

.field public mIsHomePressed:Z

.field public mIsRemove:Z

.field public mIsRemoveAll:Z

.field public mPanelSlidingTimes:I

.field public mSessionId:Ljava/util/UUID;

.field public mSwitchedToControl:Z

.field public final mVisibleKeys:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsHomePressed:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemove:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsRemoveAll:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsClick:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mIsClickAction:Z

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mCreateTimeMillis:J

    .line 18
    sget-object v1, Lcom/miui/systemui/events/NotifAction;->NONE:Lcom/miui/systemui/events/NotifAction;

    .line 20
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mFistNotifAction:Lcom/miui/systemui/events/NotifAction;

    .line 22
    new-instance v1, Ljava/util/HashSet;

    .line 24
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mVisibleKeys:Ljava/util/Set;

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mPanelSlidingTimes:I

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mSwitchedToControl:Z

    .line 33
    const-class v0, Lcom/miui/interfaces/IEventTracker;

    .line 35
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/miui/interfaces/IEventTracker;

    .line 41
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationPanelStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 43
    return-void
    .line 45
.end method
