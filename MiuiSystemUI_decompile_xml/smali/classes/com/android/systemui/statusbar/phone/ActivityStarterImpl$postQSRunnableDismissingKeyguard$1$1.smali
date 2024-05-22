.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $runnable:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/os/Parcelable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$runnable:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$runnable:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$runnable:Ljava/lang/Object;

    .line 12
    move-object v2, p0

    .line 14
    check-cast v2, Landroid/app/PendingIntent;

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0xe

    .line 20
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    .line 22
    return-void

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$runnable:Ljava/lang/Object;

    .line 26
    check-cast v0, Ljava/lang/Runnable;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 32
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    .line 35
    :cond_0
    return-void

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 39
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 41
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postQSRunnableDismissingKeyguard$1$1;->$runnable:Ljava/lang/Object;

    .line 43
    move-object v2, p0

    .line 45
    check-cast v2, Landroid/content/Intent;

    .line 46
    const/4 v3, 0x1

    .line 48
    const/4 v4, 0x1

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    const/4 v9, 0x0

    .line 54
    const/4 v10, 0x0

    .line 55
    const/16 v11, 0x1f8

    .line 56
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 58
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 62
.end method
