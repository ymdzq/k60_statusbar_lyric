.class Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimStatusPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 283
    invoke-super {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 284
    invoke-static {}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$1;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->-$$Nest$mupdatePhoneNumeberStatus(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;)V

    return-void
.end method
