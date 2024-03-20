.class public final synthetic Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_5

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 13
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 15
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    .line 21
    move-result-object v3

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 26
    move-result v3

    .line 29
    if-eqz v3, :cond_4

    .line 30
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 32
    move-result v3

    .line 35
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    .line 36
    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 38
    move-result-object v3

    .line 41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 45
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v4

    .line 49
    const/16 v5, -0x2710

    .line 50
    if-eqz v4, :cond_2

    .line 52
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v4

    .line 57
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 58
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 60
    move-result v6

    .line 63
    if-eqz v6, :cond_1

    .line 64
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    move v3, v5

    .line 69
    :goto_0
    if-ne v3, v5, :cond_3

    .line 70
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    .line 73
    move-result-object v3

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 78
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v4

    .line 84
    const-string v5, "device_policy_manager"

    .line 85
    const-string v6, "add-isfinanced-device"

    .line 87
    invoke-static {v5, v6, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 89
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isFinancedDevice()Z

    .line 95
    move-result v1

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 100
    move-result v5

    .line 103
    if-eqz v5, :cond_6

    .line 104
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    .line 106
    move-result-object v5

    .line 109
    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    .line 110
    move-result v5

    .line 113
    if-ne v5, v2, :cond_6

    .line 114
    move v1, v2

    .line 116
    :cond_6
    :goto_3
    if-nez v3, :cond_7

    .line 117
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 119
    move-result-object v0

    .line 122
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda2;

    .line 123
    invoke-direct {v1, v2, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 125
    const-string v2, "SystemUi.KEYGUARD_MANAGEMENT_DISCLOSURE"

    .line 128
    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 133
    goto :goto_4

    .line 134
    :cond_7
    if-eqz v1, :cond_8

    .line 135
    const v0, 0x7f13039d    # @string/do_financed_disclosure_with_name 'This device is provided by %s'

    .line 137
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 143
    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 147
    goto :goto_4

    .line 148
    :cond_8
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 149
    move-result-object v0

    .line 152
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda5;

    .line 153
    invoke-direct {v1, v4, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda5;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;)V

    .line 155
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 158
    move-result-object v2

    .line 161
    const-string v3, "SystemUi.KEYGUARD_NAMED_MANAGEMENT_DISCLOSURE"

    .line 162
    invoke-virtual {v0, v3, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 167
    :goto_4
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda4;

    .line 168
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;)V

    .line 170
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 173
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 175
    invoke-virtual {p0, v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void

    .line 180
    :goto_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    const-class v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 186
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 188
    move-result-object v0

    .line 191
    check-cast v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 192
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpArrow:Landroid/widget/ImageView;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    if-nez v3, :cond_9

    .line 199
    goto :goto_7

    .line 201
    :cond_9
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    .line 202
    const/4 v6, 0x0

    .line 204
    const/4 v7, 0x1

    .line 205
    const/4 v8, 0x0

    .line 206
    const/4 v9, 0x1

    .line 207
    const/high16 v10, 0x40000000    # 2.0f

    .line 208
    const/4 v11, 0x1

    .line 210
    const/4 v12, 0x0

    .line 211
    const/4 v5, 0x1

    .line 212
    move-object v4, v13

    .line 213
    invoke-direct/range {v4 .. v12}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 214
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mContext:Landroid/content/Context;

    .line 217
    const/high16 v4, 0x10a0000    # @android:anim/fade_in

    .line 219
    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    .line 221
    move-result-object v0

    .line 224
    new-instance v4, Landroid/view/animation/AnimationSet;

    .line 225
    invoke-direct {v4, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 227
    invoke-virtual {v4, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 230
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 233
    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    .line 236
    move-result v0

    .line 239
    if-eqz v0, :cond_a

    .line 240
    const v0, 0x3f19999a    # 0.6f

    .line 242
    goto :goto_6

    .line 245
    :cond_a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 246
    :goto_6
    const/high16 v2, 0x43fa0000    # 500.0f

    .line 248
    mul-float/2addr v0, v2

    .line 250
    float-to-long v5, v0

    .line 251
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 252
    const-wide/16 v5, 0x1e

    .line 255
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 257
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 263
    const/16 v0, 0x3e8

    .line 266
    const-wide/16 v1, 0x64

    .line 268
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    .line 270
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 272
    :goto_7
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 276
.end method
