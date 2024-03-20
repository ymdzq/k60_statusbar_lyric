.class public final Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$1;->this$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStateChanged(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$1;->this$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    iget v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 4
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    if-ne p1, v1, :cond_0

    .line 10
    const-string v0, "lockscreen"

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPanelExpanded(Ljava/lang/String;)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    if-ne v0, v1, :cond_2

    .line 18
    if-eqz p1, :cond_1

    .line 20
    if-ne p1, v2, :cond_2

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onPanelCollapsed$1()V

    .line 24
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mBarState:I

    .line 27
    return-void
    .line 29
.end method
