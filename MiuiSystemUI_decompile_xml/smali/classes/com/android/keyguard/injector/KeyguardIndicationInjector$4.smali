.class public final Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;
.super Landroid/os/AsyncTask;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

.field public final synthetic val$batteryLevel:I

.field public final synthetic val$powerPluggedIn:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardIndicationInjector;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 2
    iput-boolean p2, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->val$powerPluggedIn:Z

    .line 4
    iput p3, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->val$batteryLevel:I

    .line 6
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 4
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mContext:Landroid/content/Context;

    .line 6
    iget-boolean v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->val$powerPluggedIn:Z

    .line 8
    iget p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->val$batteryLevel:I

    .line 10
    invoke-static {p0, v0, p1}, Lcom/miui/charge/ChargeUtils;->getChargingHintText(IZLandroid/content/Context;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    return-object p0
    .line 16
.end method

.method public final onCancelled()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeAsyncTask:Landroid/os/AsyncTask;

    .line 5
    return-void
    .line 7
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 4
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 6
    iput-object p1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mComputePowerIndication:Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector$4;->this$0:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 14
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mChargeAsyncTask:Landroid/os/AsyncTask;

    .line 17
    return-void
    .line 19
.end method

.method public final onPreExecute()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
