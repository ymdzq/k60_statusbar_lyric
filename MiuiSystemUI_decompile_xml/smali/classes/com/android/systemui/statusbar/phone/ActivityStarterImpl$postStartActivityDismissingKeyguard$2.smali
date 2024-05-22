.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic $intent:Landroid/os/Parcelable;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/os/Parcelable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$intent:Landroid/os/Parcelable;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$animationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 8
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$intent:Landroid/os/Parcelable;

    .line 12
    move-object v2, v0

    .line 14
    check-cast v2, Landroid/app/PendingIntent;

    .line 15
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$animationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 19
    const/4 v6, 0x6

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startPendingIntentDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;I)V

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 26
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityStarterInternal:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$intent:Landroid/os/Parcelable;

    .line 30
    move-object v2, v0

    .line 32
    check-cast v2, Landroid/content/Intent;

    .line 33
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x1

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$postStartActivityDismissingKeyguard$2;->$animationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 40
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/16 v11, 0x1b8

    .line 44
    invoke-static/range {v1 .. v11}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->startActivityDismissingKeyguard$default(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 46
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 50
.end method
