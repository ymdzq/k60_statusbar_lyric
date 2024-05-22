.class public final synthetic Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Landroid/animation/Animator;

    .line 10
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    .line 12
    return-void

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 16
    check-cast p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 20
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 22
    move-result-object v0

    .line 25
    new-instance v1, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;

    .line 26
    invoke-direct {v1, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$$ExternalSyntheticLambda6;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    .line 28
    const-string v2, "OUTLINE"

    .line 31
    const-string v3, "PROFILE_SWITCH_ANIMATION"

    .line 33
    const-string v4, "WORK_PROFILE_ICON"

    .line 35
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseThumbnailDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    .line 43
    const-string v1, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    .line 45
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mContext:Landroid/content/Context;

    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mEnterpriseResourceUpdatedReceiver:Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;

    .line 52
    const/4 v3, 0x0

    .line 54
    iget-object v4, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mMainHandler:Landroid/os/Handler;

    .line 55
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 57
    invoke-static {v1, v4}, Lcom/android/internal/policy/TransitionAnimation;->initAttributeCache(Landroid/content/Context;Landroid/os/Handler;)V

    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 63
    move-result-object v0

    .line 66
    const-string v2, "device_provisioned"

    .line 67
    const/4 v3, 0x0

    .line 69
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 70
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_0
    move v0, v3

    .line 78
    :goto_1
    iput-boolean v0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->mProvisioned:Z

    .line 79
    if-nez v0, :cond_1

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 83
    move-result-object v0

    .line 86
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    move-result-object v1

    .line 90
    new-instance v2, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;

    .line 91
    invoke-direct {v2, p0}, Lcom/android/wm/shell/transition/DefaultTransitionHandler$2;-><init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;)V

    .line 93
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    :cond_1
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 100
.end method
