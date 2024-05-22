.class public final synthetic Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/TunerServiceImpl;Lcom/android/systemui/tuner/TunerFragment$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p2, Landroid/content/Intent;

    .line 9
    const-string v0, "com.android.systemui.action.CLEAR_TUNER"

    .line 11
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v0, p1, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    iget-object p2, p1, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 21
    check-cast p2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 23
    invoke-virtual {p2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    .line 25
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    move-result-object p2

    .line 32
    iget-object p1, p1, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunerComponent:Landroid/content/ComponentName;

    .line 33
    const/4 v1, 0x1

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {p2, p1, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object p1

    .line 43
    const-string/jumbo p2, "seen_tuner_warning"

    .line 44
    const/4 v0, 0x0

    .line 47
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    if-eqz p0, :cond_0

    .line 51
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_0
    return-void
    .line 56
.end method
