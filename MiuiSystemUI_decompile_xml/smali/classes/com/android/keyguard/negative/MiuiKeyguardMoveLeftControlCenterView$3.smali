.class public final Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 4
    iget-object v0, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 10
    const-string v1, "consumer_ir"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/ConsumerIrManager;

    .line 18
    iput-object v0, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 22
    iget-object v0, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mConsumerIrManager:Landroid/hardware/ConsumerIrManager;

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z

    .line 28
    move-result v0

    .line 31
    iput-boolean v0, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mHasIrEmitter:Z

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 34
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 36
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 38
    if-nez v0, :cond_2

    .line 40
    const-string v0, "com.miui.tsmclient"

    .line 42
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 44
    move-result v1

    .line 47
    invoke-static {p1, v0, v1}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 48
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    const/4 p1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 p1, 0x0

    .line 56
    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mSupportTSMClient:Z

    .line 57
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    return-object p0
    .line 61
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 4
    const/4 v0, 0x0

    .line 6
    iput v0, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mItemNums:I

    .line 7
    iget-boolean v1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mHasIrEmitter:Z

    .line 9
    iget-object v2, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mRemoteCenterLinearLayout:Landroid/widget/LinearLayout;

    .line 11
    invoke-static {p1, v1, v2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mupdateItemVisibility(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;ZLandroid/view/View;)V

    .line 13
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 16
    iget-boolean v1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mSupportTSMClient:Z

    .line 18
    iget-object v2, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mMiWalletLinearLayout:Landroid/widget/LinearLayout;

    .line 20
    invoke-static {p1, v1, v2}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mupdateItemVisibility(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;ZLandroid/view/View;)V

    .line 22
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 25
    invoke-virtual {p1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->isSupportShowGoogleWallet()Z

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 34
    invoke-virtual {v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->isSupportShowGooglePay()Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    move v1, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    move v1, v2

    .line 45
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 46
    iget-object v3, v3, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mGoogleWalletLinearLayout:Landroid/widget/LinearLayout;

    .line 48
    invoke-static {p1, v1, v3}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mupdateItemVisibility(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;ZLandroid/view/View;)V

    .line 50
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 53
    iget-boolean v1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mIsInternational:Z

    .line 55
    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 59
    const-string v3, "com.google.android.apps.chromecast.app"

    .line 61
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 63
    move-result v4

    .line 66
    invoke-static {v1, v3, v4}, Lcom/miui/utils/PackageUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    move v1, v2

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v1, v0

    .line 75
    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 76
    iget-object v3, v3, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mGoogleHomeLinearLayout:Landroid/widget/LinearLayout;

    .line 78
    invoke-static {p1, v1, v3}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mupdateItemVisibility(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;ZLandroid/view/View;)V

    .line 80
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 83
    sget-object v1, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 85
    iget-object v1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {v1}, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->isRegionSupportMiHome(Landroid/content/Context;)Z

    .line 89
    move-result v1

    .line 92
    iget-object v3, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 93
    iget-object v3, v3, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mSmartHomeLinearLayout:Landroid/widget/LinearLayout;

    .line 95
    invoke-static {p1, v1, v3}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mupdateItemVisibility(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;ZLandroid/view/View;)V

    .line 97
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    const-class v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 105
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    move-result-object v3

    .line 110
    check-cast v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 111
    iget-boolean v3, v3, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    .line 113
    if-nez v3, :cond_3

    .line 115
    goto :goto_4

    .line 117
    :cond_3
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 118
    if-nez v3, :cond_4

    .line 120
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->NOT_SUPPORT_FASHION_GALLERY_CN:Z

    .line 122
    xor-int/2addr v2, v1

    .line 124
    goto :goto_5

    .line 125
    :cond_4
    const-string/jumbo v3, "ro.miui.region"

    .line 126
    const-string v4, "CN"

    .line 129
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v3

    .line 134
    const-string v4, "IN"

    .line 135
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 137
    move-result v3

    .line 140
    if-eqz v3, :cond_5

    .line 141
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    .line 143
    if-eqz v3, :cond_5

    .line 145
    move v3, v2

    .line 147
    goto :goto_3

    .line 148
    :cond_5
    move v3, v0

    .line 149
    :goto_3
    if-eqz v3, :cond_6

    .line 150
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 152
    move-result-object v1

    .line 155
    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 156
    iget-boolean v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDisableMagazineByGlobalCarousel:Z

    .line 158
    if-nez v1, :cond_6

    .line 160
    goto :goto_5

    .line 162
    :cond_6
    :goto_4
    move v2, v0

    .line 163
    :goto_5
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 164
    iget-object v1, v1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mLockScreenMagazineLinearLayout:Landroid/widget/LinearLayout;

    .line 166
    invoke-static {p1, v2, v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->-$$Nest$mupdateItemVisibility(Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;ZLandroid/view/View;)V

    .line 168
    iget-object p1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 171
    iget-object p1, p1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mAllFourLinearLayout:Landroid/widget/LinearLayout;

    .line 173
    if-eqz p1, :cond_8

    .line 175
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    move-result-object p1

    .line 180
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 183
    iget v2, v1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTwoOrOneItemLeftMargin:I

    .line 185
    iget v3, v1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mItemNums:I

    .line 187
    const/4 v4, 0x2

    .line 189
    if-gt v3, v4, :cond_7

    .line 190
    iget v3, v1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTwoOrOneItemTopMargin:I

    .line 192
    goto :goto_6

    .line 194
    :cond_7
    iget v3, v1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mFourOrThreeItemTopMargin:I

    .line 195
    :goto_6
    iget v1, v1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mTwoOrOneItemRightMargin:I

    .line 197
    invoke-virtual {p1, v2, v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 199
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView$3;->this$0:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;

    .line 202
    iget-object p0, p0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftControlCenterView;->mAllFourLinearLayout:Landroid/widget/LinearLayout;

    .line 204
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_8
    return-void
    .line 209
.end method
