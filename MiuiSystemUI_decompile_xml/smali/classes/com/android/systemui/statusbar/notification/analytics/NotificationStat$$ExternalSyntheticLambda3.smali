.class public final synthetic Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getEntry(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 8
    move-result-object p0

    .line 11
    if-eqz p0, :cond_3

    .line 12
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/analytics/AdTracker;->getJSONTag(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lorg/json/JSONObject;

    .line 14
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    const-string p1, "ex"

    .line 20
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-eqz p0, :cond_2

    .line 28
    const-string/jumbo v0, "viewMonitorUrls"

    .line 30
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 33
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 37
    goto :goto_3

    .line 39
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 42
    move-result v1

    .line 45
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    const/4 v1, 0x0

    .line 49
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 50
    move-result v2

    .line 53
    if-ge v1, v2, :cond_2

    .line 54
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_2

    .line 63
    :catch_0
    move-exception v2

    .line 64
    const-string v3, "adTracker"

    .line 65
    invoke-virtual {v2}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 70
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_1

    .line 76
    :cond_2
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    :cond_3
    return-void
    .line 80
.end method
