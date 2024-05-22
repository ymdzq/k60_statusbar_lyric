.class public final Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 9
    iget-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->intent1:Landroid/content/Intent;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->systemUIStat:Ldagger/Lazy;

    .line 15
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance v2, Lcom/miui/systemui/events/ClickShortcutEvent;

    .line 26
    const-string v3, "data_usage_footer"

    .line 28
    invoke-direct {v2, v3}, Lcom/miui/systemui/events/ClickShortcutEvent;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object v1, v1, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 33
    invoke-interface {v1, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 38
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 40
    :cond_0
    return-void

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController$onViewAttached$1$1;->this$0:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    .line 44
    iget-object p1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->intent2:Landroid/content/Intent;

    .line 46
    if-eqz p1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->systemUIStat:Ldagger/Lazy;

    .line 50
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 55
    check-cast v1, Lcom/miui/systemui/analytics/SystemUIStat;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    new-instance v2, Lcom/miui/systemui/events/ClickShortcutEvent;

    .line 61
    const-string v3, "data_usage_purchase"

    .line 63
    invoke-direct {v2, v3}, Lcom/miui/systemui/events/ClickShortcutEvent;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, v1, Lcom/miui/systemui/analytics/SystemUIStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 68
    invoke-interface {v1, v2}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 73
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 75
    :cond_1
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 80
.end method
