.class public final Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContentObserver:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mCustomCarrier:[Ljava/lang/String;

.field public final mMainHandler:Landroid/os/Handler;

.field public volatile mPhoneCount:I

.field public final mUserChangedCallback:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$1;-><init>(Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mUserChangedCallback:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$1;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mMainHandler:Landroid/os/Handler;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mBgHandler:Landroid/os/Handler;

    .line 23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 25
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 29
    move-result p2

    .line 32
    iput p2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mPhoneCount:I

    .line 33
    iget p2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mPhoneCount:I

    .line 35
    new-array p2, p2, [Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCustomCarrier:[Ljava/lang/String;

    .line 39
    check-cast p5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 41
    invoke-virtual {p5, v0, p4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 43
    invoke-virtual {p5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 46
    move-result p2

    .line 49
    iput p2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCurrentUserId:I

    .line 50
    new-instance p2, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

    .line 52
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;-><init>(Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;Landroid/os/Handler;)V

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mContentObserver:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

    .line 57
    const/4 p2, 0x0

    .line 59
    move p3, p2

    .line 60
    :goto_0
    iget p4, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mPhoneCount:I

    .line 61
    if-ge p3, p4, :cond_0

    .line 63
    iget-object p4, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCustomCarrier:[Ljava/lang/String;

    .line 65
    const-string p5, ""

    .line 67
    aput-object p5, p4, p3

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 71
    move-result-object p4

    .line 74
    new-instance p5, Ljava/lang/StringBuilder;

    .line 75
    const-string/jumbo v0, "status_bar_custom_carrier"

    .line 77
    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object p5

    .line 89
    invoke-static {p5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 90
    move-result-object p5

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mContentObserver:Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$2;

    .line 94
    const/4 v1, -0x1

    .line 96
    invoke-virtual {p4, p5, p2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 97
    add-int/lit8 p3, p3, 0x1

    .line 100
    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mBgHandler:Landroid/os/Handler;

    .line 103
    new-instance p2, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$$ExternalSyntheticLambda0;

    .line 105
    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;)V

    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
    .line 113
.end method
