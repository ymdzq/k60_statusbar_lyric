.class public final Lcom/android/keyguard/magazine/LockScreenMagazinePreView$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$7;->val$intent:Landroid/content/Intent;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 2
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazinePreView$OnPreViewClickListener;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$7;->val$intent:Landroid/content/Intent;

    .line 8
    check-cast p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    .line 10
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 17
    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    .line 23
    const/4 v0, 0x1

    .line 25
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 26
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance p1, Ljava/util/HashMap;

    .line 36
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v0, "action"

    .line 41
    const-string v1, "click_settings"

    .line 43
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "lock_screen_magazine_action"

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 50
    :cond_0
    return-void
    .line 53
.end method
