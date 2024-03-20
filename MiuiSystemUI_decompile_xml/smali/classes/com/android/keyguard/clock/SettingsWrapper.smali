.class public final Lcom/android/keyguard/clock/SettingsWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/keyguard/clock/SettingsWrapper$Migration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public decode(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "clock"

    .line 2
    const-string v1, "ClockFaceSettings"

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-object p1

    .line 8
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string p1, "JSON object does not contain clock field."

    .line 20
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :catch_1
    move-exception v2

    .line 27
    const-string v3, "Settings value is not valid JSON"

    .line 28
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    iget-object p0, p0, Lcom/android/keyguard/clock/SettingsWrapper;->mMigration:Lcom/android/keyguard/clock/SettingsWrapper$Migration;

    .line 33
    check-cast p0, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    .line 40
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 42
    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object p0, p0, Lcom/android/keyguard/clock/SettingsWrapper$Migrator;->mContentResolver:Landroid/content/ContentResolver;

    .line 48
    const-string v0, "lock_screen_custom_clock_face"

    .line 50
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 55
    invoke-static {p0, v0, v2, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 56
    goto :goto_0

    .line 59
    :catch_2
    move-exception p0

    .line 60
    const-string p2, "Failed migrating settings value to JSON format"

    .line 61
    invoke-static {v1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :goto_0
    return-object p1
    .line 66
.end method
