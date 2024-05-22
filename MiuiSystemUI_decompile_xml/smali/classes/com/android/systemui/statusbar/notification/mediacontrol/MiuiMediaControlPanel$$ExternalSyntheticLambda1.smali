.class public final synthetic Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

.field public final synthetic f$1:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda1;->f$1:Landroid/app/PendingIntent;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaControlPanel$$ExternalSyntheticLambda1;->f$1:Landroid/app/PendingIntent;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-class v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 15
    const-string/jumbo v1, "\u5c01\u9762"

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->onMediaClick(Ljava/lang/String;)V

    .line 20
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaControlPanel;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 23
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 25
    return-void
    .line 28
.end method
