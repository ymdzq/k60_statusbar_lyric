.class public Lcom/android/settings/device/ParseMiShopDataUtils;
.super Ljava/lang/Object;
.source "ParseMiShopDataUtils.java"


# static fields
.field private static BASICINFO_DISPLAY_VALUE:I = 0x1

.field private static CPU_INFO:Ljava/lang/String; = null

.field public static NEED_QUERY_CPU_ICON:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static getAllParamData(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 79
    invoke-static {p0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "data"

    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static getBasicItemsArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 43
    invoke-static {p0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "BasicItems"

    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .locals 1

    .line 98
    sget-object v0, Lcom/android/settings/device/ParseMiShopDataUtils;->CPU_INFO:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataSuccess(Ljava/lang/String;)Z
    .locals 2

    .line 75
    invoke-static {p0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "status"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settings/device/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFrontCameraPixel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-static {p0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "data"

    .line 83
    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "camera"

    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "front_camera"

    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getItemBooleanSummary(Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "Summary"

    const/4 v1, 0x0

    .line 59
    invoke-static {p0, v0, v1}, Lcom/android/settings/device/JSONUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getItemIndex(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "Index"

    const/4 v1, -0x1

    .line 47
    invoke-static {p0, v0, v1}, Lcom/android/settings/device/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getItemSummary(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "Summary"

    .line 55
    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getItemTitle(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "Title"

    .line 51
    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRearCameraPixel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    invoke-static {p0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "data"

    .line 88
    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "camera"

    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v0, "rear_camera"

    invoke-static {p0, v0}, Lcom/android/settings/device/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isCameraPixelEmpty(Ljava/lang/String;)Z
    .locals 1

    .line 93
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EMPTY"

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static setCpuInfo(Ljava/lang/String;)V
    .locals 0

    .line 102
    sput-object p0, Lcom/android/settings/device/ParseMiShopDataUtils;->CPU_INFO:Ljava/lang/String;

    return-void
.end method

.method public static showBasicItems(Ljava/lang/String;)Z
    .locals 2

    .line 38
    invoke-static {p0}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "BasicInfoToggle"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/settings/device/JSONUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p0

    .line 39
    sget v0, Lcom/android/settings/device/ParseMiShopDataUtils;->BASICINFO_DISPLAY_VALUE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
