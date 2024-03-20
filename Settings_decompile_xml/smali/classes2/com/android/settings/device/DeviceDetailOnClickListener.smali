.class public Lcom/android/settings/device/DeviceDetailOnClickListener;
.super Ljava/lang/Object;
.source "DeviceDetailOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHits:[J

.field private mKernelHitCountdown:I

.field private mLastHitKey:Ljava/lang/String;

.field private mLastKernelHitTime:J

.field private mLastMemoryHitTime:J

.field private mLastPrefHitTime:J

.field private mMemoryHitCountdown:I

.field private mPrefHitCountdown:I

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/device/DeviceDetailOnClickListener;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 45
    iput v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mPrefHitCountdown:I

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastPrefHitTime:J

    const/4 v3, 0x3

    new-array v3, v3, [J

    .line 61
    iput-object v3, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mHits:[J

    .line 67
    iput v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mKernelHitCountdown:I

    .line 69
    iput-wide v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastKernelHitTime:J

    .line 73
    iput v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mMemoryHitCountdown:I

    .line 75
    iput-wide v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastMemoryHitTime:J

    .line 77
    new-instance v0, Lcom/android/settings/device/DeviceDetailOnClickListener$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/device/DeviceDetailOnClickListener$1;-><init>(Lcom/android/settings/device/DeviceDetailOnClickListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mUm:Landroid/os/UserManager;

    .line 90
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "no_debugging_features"

    .line 90
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 92
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 92
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mDebuggingFeaturesDisallowedBySystem:Z

    .line 94
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    iput p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mDevHitCountdown:I

    .line 95
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string/jumbo v1, "no_fun"

    .line 95
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 97
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 97
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mFunDisallowedBySystem:Z

    return-void
.end method

.method private dealCpuClick(Ljava/lang/String;)V
    .locals 6

    const-string v0, "cpu_item"

    .line 115
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastHitKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastPrefHitTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    .line 117
    iget p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mPrefHitCountdown:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mPrefHitCountdown:I

    if-lez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$plurals;->show_rep_countdown:I

    iget v3, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mPrefHitCountdown:I

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 119
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 123
    :cond_0
    iget p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mPrefHitCountdown:I

    if-gtz p1, :cond_3

    .line 124
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1234

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_1

    .line 126
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 128
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android_secret_code://284"

    .line 129
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {p1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x1000000

    .line 130
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x20

    .line 131
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    iput v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mPrefHitCountdown:I

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastPrefHitTime:J

    .line 135
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 139
    :cond_2
    iput v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mPrefHitCountdown:I

    :cond_3
    :goto_0
    return-void
.end method

.method private dealFirmwareVersion(Ljava/lang/String;)V
    .locals 6

    const-string v0, "firmware_version"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mHits:[J

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mHits:[J

    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v0

    .line 210
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mHits:[J

    aget-wide v0, p1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    .line 211
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mUm:Landroid/os/UserManager;

    const-string/jumbo v0, "no_fun"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "DeviceDetailOnClickListener"

    if-eqz p1, :cond_2

    .line 212
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mFunDisallowedBySystem:Z

    if-nez v1, :cond_1

    .line 213
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    const-string p0, "Sorry, no fun for you!"

    .line 215
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 218
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    .line 220
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 222
    :cond_3
    const-class v1, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start activity "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private dealKernelVersion(Ljava/lang/String;)V
    .locals 6

    const-string v0, "kernel_version"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->supportCit()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastHitKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastKernelHitTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long p1, v2, v4

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 238
    iget p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mKernelHitCountdown:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mKernelHitCountdown:I

    if-lez p1, :cond_1

    .line 240
    sget p1, Lcom/android/settings/R$plurals;->show_cit_countdown:I

    .line 241
    iget-object v2, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mKernelHitCountdown:I

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 241
    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 244
    :cond_1
    iget p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mKernelHitCountdown:I

    if-gtz p1, :cond_4

    .line 245
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android_secret_code://6484"

    .line 246
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000000

    .line 247
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 249
    iget-object v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    iput v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mKernelHitCountdown:I

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastKernelHitTime:J

    goto :goto_0

    .line 254
    :cond_2
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->launching_cit:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 257
    :cond_3
    iput v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mKernelHitCountdown:I

    :cond_4
    :goto_0
    return-void
.end method

.method private dealMemoryClick(Ljava/lang/String;)V
    .locals 6

    const-string v0, "device_internal_memory"

    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->supportCit()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastHitKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastMemoryHitTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long p1, v2, v4

    const/4 v0, 0x0

    if-lez p1, :cond_2

    .line 268
    iget p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mMemoryHitCountdown:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mMemoryHitCountdown:I

    if-lez p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$plurals;->show_pho_countdown:I

    iget v4, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mMemoryHitCountdown:I

    .line 271
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 270
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 274
    :cond_1
    iget p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mMemoryHitCountdown:I

    if-gtz p1, :cond_4

    .line 275
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android_secret_code://4636"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.telephony.action.SECRET_CODE"

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000000

    .line 276
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v0, 0x20

    .line 277
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    iget-object v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    iput v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mMemoryHitCountdown:I

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastMemoryHitTime:J

    goto :goto_0

    .line 283
    :cond_2
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->launching_pho:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 286
    :cond_3
    iput v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mMemoryHitCountdown:I

    :cond_4
    :goto_0
    return-void
.end method

.method private dealMiuiVersionClick(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "miui_version"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->isSecondSpace(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 156
    :cond_2
    invoke-static {}, Lmiui/enterprise/DeviceHelperStub;->getInstance()Lmiui/enterprise/IDeviceHelper;

    move-result-object p1

    invoke-interface {p1}, Lmiui/enterprise/IDeviceHelper;->isDeveloperOptionsDisable()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "DeviceDetailOnClickListener"

    const-string p1, " Device is in enterprise mode, DeveloperOptions is restricted by enterprise!"

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mUm:Landroid/os/UserManager;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 162
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mUm:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isDemoUser()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 164
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 167
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    .line 168
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 169
    iget-object v1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 172
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 177
    :cond_4
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v0, :cond_5

    .line 178
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_5
    return-void

    .line 183
    :cond_6
    iget p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mDevHitCountdown:I

    const/4 v1, 0x1

    if-lez p1, :cond_8

    sub-int/2addr p1, v1

    .line 184
    iput p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mDevHitCountdown:I

    if-nez p1, :cond_7

    .line 186
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 187
    iget-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->show_dev_on:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    .line 189
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings.action.DEV_OPEN"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "show"

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    if-lez p1, :cond_9

    const/4 v1, 0x5

    if-ge p1, v1, :cond_9

    .line 195
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->show_dev_countdown:I

    invoke-static {p0, p1, v1}, Lcom/android/settingslib/utils/StringUtil;->getIcuPluralsString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_8
    if-gez p1, :cond_9

    .line 200
    iget-object p0, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->show_dev_already:I

    invoke-static {p0, p1, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    :cond_9
    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    instance-of v0, p1, Lcom/android/settings/device/BaseDeviceCardItem;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lcom/android/settings/device/BaseDeviceCardItem;

    invoke-virtual {p1}, Lcom/android/settings/device/BaseDeviceCardItem;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;->dealCpuClick(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;->dealMiuiVersionClick(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;->dealFirmwareVersion(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;->dealKernelVersion(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/device/DeviceDetailOnClickListener;->dealMemoryClick(Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/android/settings/device/DeviceDetailOnClickListener;->mLastHitKey:Ljava/lang/String;

    :cond_0
    return-void
.end method
