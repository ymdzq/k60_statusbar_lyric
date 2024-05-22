.class public abstract Lcom/android/systemui/volume/Util;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final AUDIO_MANAGER_FLAGS:[I

.field public static final AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x9

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    .line 9
    const-string v1, "SHOW_UI"

    .line 11
    const-string v2, "VIBRATE"

    .line 13
    const-string v3, "PLAY_SOUND"

    .line 15
    const-string v4, "ALLOW_RINGER_MODES"

    .line 17
    const-string v5, "REMOVE_SOUND_AND_VIBRATE"

    .line 19
    const-string v6, "SHOW_VIBRATE_HINT"

    .line 21
    const-string v7, "SHOW_SILENT_HINT"

    .line 23
    const-string v8, "FROM_KEY"

    .line 25
    const-string v9, "SHOW_UI_WARNINGS"

    .line 27
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    sput-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    .line 33
    return-void

    .line 35
    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
    .end array-data
    .line 36
.end method

.method public static audioManagerFlagsToString(I)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAGS:[I

    .line 2
    sget-object v1, Lcom/android/systemui/volume/Util;->AUDIO_MANAGER_FLAG_NAMES:[Ljava/lang/String;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, ""

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const/4 v3, 0x0

    .line 16
    :goto_0
    const/16 v4, 0x9

    .line 17
    const/16 v5, 0x2c

    .line 19
    if-ge v3, v4, :cond_3

    .line 21
    aget v4, v0, v3

    .line 23
    and-int/2addr v4, p0

    .line 25
    if-eqz v4, :cond_2

    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 28
    move-result v4

    .line 31
    if-lez v4, :cond_1

    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    :cond_1
    aget-object v4, v1, v3

    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_2
    aget v4, v0, v3

    .line 42
    not-int v4, v4

    .line 44
    and-int/2addr p0, v4

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 48
    :cond_3
    if-eqz p0, :cond_5

    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 51
    move-result v0

    .line 54
    if-lez v0, :cond_4

    .line 55
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_4
    const-string v0, "UNKNOWN_"

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    :goto_1
    return-object p0
    .line 72
.end method

.method public static logTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    const-string/jumbo v0, "vol."

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 13
    move-result v0

    .line 16
    const/16 v1, 0x17

    .line 17
    if-ge v0, v1, :cond_0

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    :goto_0
    return-object p0
    .line 27
.end method

.method public static ringerModeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    const-string v0, "RINGER_MODE_UNKNOWN_"

    .line 10
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string p0, "RINGER_MODE_NORMAL"

    .line 17
    return-object p0

    .line 19
    :cond_1
    const-string p0, "RINGER_MODE_VIBRATE"

    .line 20
    return-object p0

    .line 22
    :cond_2
    const-string p0, "RINGER_MODE_SILENT"

    .line 23
    return-object p0
    .line 25
.end method
