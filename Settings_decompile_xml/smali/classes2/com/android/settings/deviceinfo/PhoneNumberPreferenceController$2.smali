.class Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$2;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "PhoneNumberPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$2;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .line 335
    invoke-super {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 336
    invoke-static {}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$2;->this$0:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->-$$Nest$mupdatePhoneNumeberStatus(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)V

    return-void
.end method
