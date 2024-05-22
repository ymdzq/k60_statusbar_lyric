.class public abstract Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final getStringOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public static final readTileFromString(Ljava/lang/String;)Landroid/service/quicksettings/Tile;
    .locals 2

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Landroid/service/quicksettings/Tile;

    .line 7
    invoke-direct {p0}, Landroid/service/quicksettings/Tile;-><init>()V

    .line 9
    const-string/jumbo v1, "state"

    .line 12
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 15
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 19
    const-string v1, "label"

    .line 22
    invoke-static {v1, v0}, Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;->getStringOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 27
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 28
    const-string/jumbo v1, "subtitle"

    .line 31
    invoke-static {v1, v0}, Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;->getStringOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 38
    const-string v1, "content_description"

    .line 41
    invoke-static {v1, v0}, Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;->getStringOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 46
    invoke-virtual {p0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    const-string/jumbo v1, "state_description"

    .line 50
    invoke-static {v1, v0}, Lcom/android/systemui/qs/external/CustomTileStatePersisterKt;->getStringOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Landroid/service/quicksettings/Tile;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 57
    return-object p0
    .line 60
.end method

.method public static final writeToString(Landroid/service/quicksettings/Tile;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string/jumbo v1, "state"

    .line 7
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getState()I

    .line 10
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "label"

    .line 18
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    move-result-object v0

    .line 27
    const-string/jumbo v1, "subtitle"

    .line 28
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    .line 31
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    move-result-object v0

    .line 38
    const-string v1, "content_description"

    .line 39
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    .line 41
    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    move-result-object v0

    .line 48
    const-string/jumbo v1, "state_description"

    .line 49
    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    return-object p0
    .line 64
.end method
