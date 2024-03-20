.class Lcom/android/settings/network/telephony/BackupCallingPreferenceController$2;
.super Landroid/database/ContentObserver;
.source "BackupCallingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->registerCrossSimObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmCrossSimUri(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BackupCallingPrefCtrl"

    const-string p2, "CIWLAN UI preference changed"

    .line 160
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$2;->this$0:Lcom/android/settings/network/telephony/BackupCallingPreferenceController;

    invoke-static {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->-$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
