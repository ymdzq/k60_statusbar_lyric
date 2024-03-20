.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;
.super Lcom/android/systemui/shade/NotificationPanelViewController$11;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController$11;->setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2
    if-eqz p1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$headsUpViewController$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    .line 9
    instance-of v0, p1, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;

    .line 11
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;

    .line 16
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/MiuiHeadsUpTouchHelper;->mTrackingMiniWindowHeadsUp:Z

    .line 18
    if-eqz p1, :cond_0

    .line 20
    move p1, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    if-nez p1, :cond_1

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->setMExpandingFromHeadsUp(Z)V

    .line 27
    :cond_1
    return-void
    .line 30
.end method
