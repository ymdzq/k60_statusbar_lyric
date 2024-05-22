.class public final synthetic Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 13
    new-instance v0, Landroid/view/KeyEvent;

    .line 15
    const/16 v2, 0x119

    .line 17
    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->handleSystemKey(Landroid/view/KeyEvent;)V

    .line 22
    return-void

    .line 25
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/OverviewProxyService$1;->sendEvent(I)V

    .line 28
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/OverviewProxyService$1;->sendEvent(I)V

    .line 32
    return-void

    .line 35
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 38
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 40
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/Optional;

    .line 46
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda10;

    .line 48
    invoke-direct {v0}, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda10;-><init>()V

    .line 50
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 53
    return-void

    .line 56
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    new-instance v0, Landroid/content/Intent;

    .line 62
    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    .line 64
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    const-string v2, "android"

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const v1, 0x10008000

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$1;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyService;->mContext:Landroid/content/Context;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 90
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 94
    move-result-object p0

    .line 97
    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 98
    return-void

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 102
.end method
