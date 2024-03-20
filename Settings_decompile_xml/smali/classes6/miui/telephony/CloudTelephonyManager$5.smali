.class Lmiui/telephony/CloudTelephonyManager$5;
.super Landroid/content/BroadcastReceiver;
.source "CloudTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/CloudTelephonyManager;->waitAndGetSimId(Landroid/content/Context;IJ)Lmiui/telephony/CloudTelephonyManager$TypedSimId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

.field final synthetic val$simIndex:I

.field final synthetic val$tm:Lmiui/cloud/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lmiui/telephony/CloudTelephonyManager$AsyncFuture;Lmiui/cloud/telephony/TelephonyManager;I)V
    .locals 0

    .line 401
    iput-object p1, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    iput-object p2, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$tm:Lmiui/cloud/telephony/TelephonyManager;

    iput p3, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$simIndex:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 404
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardConstants_INTENT_VALUE_ICC_IMSI()Ljava/lang/String;

    move-result-object p1

    .line 405
    invoke-static {}, Lmiui/cloud/telephony/TelephonyManager;->getIccCardConstants_INTENT_KEY_ICC_STATE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 404
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 406
    iget-object p1, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$future:Lmiui/telephony/CloudTelephonyManager$AsyncFuture;

    iget-object p2, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$tm:Lmiui/cloud/telephony/TelephonyManager;

    iget p0, p0, Lmiui/telephony/CloudTelephonyManager$5;->val$simIndex:I

    invoke-static {p2, p0}, Lmiui/telephony/CloudTelephonyManager;->access$200(Lmiui/cloud/telephony/TelephonyManager;I)Lmiui/telephony/CloudTelephonyManager$TypedSimId;

    move-result-object p0

    invoke-virtual {p1, p0}, Lmiui/telephony/CloudTelephonyManager$AsyncFuture;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
