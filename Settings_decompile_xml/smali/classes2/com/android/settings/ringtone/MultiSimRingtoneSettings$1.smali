.class Lcom/android/settings/ringtone/MultiSimRingtoneSettings$1;
.super Ljava/lang/Object;
.source "MultiSimRingtoneSettings.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ringtone/MultiSimRingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ringtone/MultiSimRingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ringtone/MultiSimRingtoneSettings;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings$1;->this$0:Lcom/android/settings/ringtone/MultiSimRingtoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/ringtone/MultiSimRingtoneSettings$1;->this$0:Lcom/android/settings/ringtone/MultiSimRingtoneSettings;

    invoke-static {p0}, Lcom/android/settings/ringtone/MultiSimRingtoneSettings;->-$$Nest$mupdateUI(Lcom/android/settings/ringtone/MultiSimRingtoneSettings;)V

    return-void
.end method
