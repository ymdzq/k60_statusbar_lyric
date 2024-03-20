.class public Lcom/miui/maml/util/Utils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static INTENT_BLACK_LIST:Ljava/util/ArrayList; = null

.field private static final INVALID:I = -0x2

.field private static sAcrossUsersFullPermission:I = -0x2

.field private static sAcrossUsersPermission:I = -0x2

.field private static sAppContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 7
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 14
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 21
    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 28
    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 35
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 42
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 49
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 56
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 63
    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 70
    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 77
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 84
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 91
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 98
    const-string v1, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 105
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 112
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 119
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 126
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 133
    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 140
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 142
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 147
    const-string v1, "android.intent.action.PACKAGE_INSTALL"

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 154
    const-string v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 161
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 163
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 168
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 175
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 182
    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    .line 184
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 189
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 191
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 196
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 198
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 203
    const-string v1, "android.intent.action.REBOOT"

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 210
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 217
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 224
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 231
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 238
    const-string v1, "android.intent.action.TIME_TICK"

    .line 240
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 245
    const-string v1, "android.intent.action.UID_REMOVED"

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 252
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
    .line 259
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 2
    iget-wide v2, p1, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 4
    sub-double/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 7
    iget-wide p0, p1, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 9
    sub-double/2addr v2, p0

    .line 11
    if-eqz p2, :cond_0

    .line 12
    mul-double/2addr v0, v0

    .line 14
    mul-double/2addr v2, v2

    .line 15
    add-double/2addr v2, v0

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 17
    move-result-wide p0

    .line 20
    return-wide p0

    .line 21
    :cond_0
    mul-double/2addr v0, v0

    .line 22
    mul-double/2addr v2, v2

    .line 23
    add-double/2addr v2, v0

    .line 24
    return-wide v2
    .line 25
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    .line 4
    invoke-static {p0, v0, p1}, Lcom/miui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static arrContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    aget-object v3, p0, v2

    .line 7
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 9
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    return v1
    .line 20
.end method

.method public static arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    aget-object v3, p0, v2

    .line 7
    invoke-static {v3, p1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    return v1
    .line 20
.end method

.method public static asserts(Z)V
    .locals 1

    const-string v0, "assert error"

    .line 1
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->asserts(ZLjava/lang/String;)V

    return-void
.end method

.method public static asserts(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Ljava/io/File;

    .line 7
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    sget p1, Lmiuix/core/util/FileUtils;->$r8$clinit:I

    .line 12
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 14
    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    invoke-static {p0, p1}, Lmiuix/core/util/FileUtils;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 22
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 27
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 30
    :catch_0
    :goto_0
    return-void
    .line 31
.end method

.method public static doubleToString(D)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    const-string p1, ".0"

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result p1

    .line 17
    add-int/lit8 p1, p1, -0x2

    .line 18
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    :cond_0
    return-object p0
    .line 25
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_2

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 14
    goto :goto_2

    .line 15
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 16
    :goto_2
    return p0
    .line 17
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    .line 2
    return-object v0
    .line 4
.end method

.method public static getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    :cond_0
    return p2
    .line 17
.end method

.method public static getAttrAsFloatThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)F
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    :cond_0
    return p2
    .line 17
.end method

.method public static getAttrAsIntThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method public static getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-wide p0

    .line 16
    :catch_0
    :cond_0
    return-wide p2
    .line 17
.end method

.method public static getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 6
    move-result-wide p0

    .line 9
    return-wide p0
    .line 10
.end method

.method public static getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object v0

    .line 5
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 6
    move-result-object p0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 11
    move-result v2

    .line 14
    if-ge v1, v2, :cond_2

    .line 15
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 17
    move-result-object v2

    .line 20
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 21
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v3, v4, :cond_1

    .line 26
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 31
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 36
    check-cast v2, Lorg/w3c/dom/Element;

    .line 38
    return-object v2

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    return-object v0
    .line 44
.end method

.method public static getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public static getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 5

    .line 7
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 8
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 9
    invoke-virtual {v3}, Landroid/graphics/PorterDuff$Mode;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    move-object p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 4
    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getDouble()D

    .line 8
    move-result-wide p0

    .line 11
    return-wide p0
    .line 12
.end method

.method public static getVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public static initContextIfNeed(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    .line 2
    if-nez v0, :cond_0

    .line 4
    sput-object p0, Lcom/miui/maml/util/Utils;->sAppContext:Landroid/content/Context;

    .line 6
    :cond_0
    return-void
    .line 8
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
    .line 14
.end method

.method public static isProtectedIntent(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/miui/maml/util/Utils;->INTENT_BLACK_LIST:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public static mixAlpha(II)I
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    if-lt p0, v0, :cond_0

    .line 4
    move p0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-lt p1, v0, :cond_1

    .line 8
    goto :goto_0

    .line 10
    :cond_1
    mul-int/2addr p0, p1

    .line 11
    int-to-float p0, p0

    .line 12
    const/high16 p1, 0x437f0000    # 255.0f

    .line 13
    div-float/2addr p0, p1

    .line 15
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 16
    move-result p0

    .line 19
    :goto_0
    const/4 p1, 0x0

    .line 20
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result p0

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result p0

    .line 28
    return p0
    .line 29
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    const-string v0, ".0"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x2

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    :cond_0
    return-object p0
    .line 25
.end method

.method public static onMuiltDisplayType2()Z
    .locals 3

    .line 1
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/miui/maml/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    move-result v0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    const/4 v1, 0x1

    .line 12
    :cond_0
    return v1
    .line 13
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2

    .line 1
    const-string v0, "+"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-le v0, v1, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 21
    move-result-wide v0

    .line 24
    return-wide v0
    .line 25
.end method

.method public static pointProjectionOnSegment(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)Lcom/miui/maml/util/Utils$Point;
    .locals 7

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/util/Utils$Point;->minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p2, p0}, Lcom/miui/maml/util/Utils$Point;->minus(Lcom/miui/maml/util/Utils$Point;)Lcom/miui/maml/util/Utils$Point;

    .line 6
    move-result-object p2

    .line 9
    iget-wide v1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 10
    iget-wide v3, p2, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 12
    mul-double/2addr v1, v3

    .line 14
    iget-wide v3, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 15
    iget-wide v5, p2, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 17
    mul-double/2addr v3, v5

    .line 19
    add-double/2addr v3, v1

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/Utils;->Dist(Lcom/miui/maml/util/Utils$Point;Lcom/miui/maml/util/Utils$Point;Z)D

    .line 22
    move-result-wide v1

    .line 25
    div-double/2addr v3, v1

    .line 26
    const-wide/16 v1, 0x0

    .line 27
    cmpg-double p2, v3, v1

    .line 29
    if-ltz p2, :cond_1

    .line 31
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 33
    cmpl-double v1, v3, v1

    .line 35
    if-lez v1, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    iget-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 40
    mul-double/2addr p1, v3

    .line 42
    iput-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->x:D

    .line 43
    iget-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 45
    mul-double/2addr p1, v3

    .line 47
    iput-wide p1, v0, Lcom/miui/maml/util/Utils$Point;->y:D

    .line 48
    invoke-virtual {v0, p0}, Lcom/miui/maml/util/Utils$Point;->Offset(Lcom/miui/maml/util/Utils$Point;)V

    .line 50
    return-object v0

    .line 53
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    .line 54
    const/4 p0, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    if-gez p2, :cond_3

    .line 58
    goto :goto_1

    .line 60
    :cond_3
    move-object p0, p1

    .line 61
    :goto_1
    return-object p0
    .line 62
.end method

.method public static putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;D)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/Double;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    return-void
.end method

.method public static putVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public static removeFile(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/maml/util/Utils;->rm(Ljava/lang/String;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static rm(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 10
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 15
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    array-length v2, p0

    .line 27
    if-lez v2, :cond_1

    .line 28
    array-length v2, p0

    .line 30
    :goto_0
    if-ge v1, v2, :cond_1

    .line 31
    aget-object v3, p0, v1

    .line 33
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 38
    invoke-static {v3}, Lcom/miui/maml/util/Utils;->rm(Ljava/lang/String;)Z

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 45
    move-result p0

    .line 48
    return p0
    .line 49
.end method

.method public static sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 2
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 12
    sput v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 13
    :cond_0
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method public static splitByteArray(Ljava/lang/String;)[B
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->splitByteArray(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static splitByteArray(Ljava/lang/String;I)[B
    .locals 4

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    .line 5
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static splitDoubleArray(Ljava/lang/String;)[D
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    const-string v0, ","

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    array-length v0, p0

    .line 16
    new-array v1, v0, [D

    .line 17
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_1

    .line 20
    :try_start_0
    aget-object v3, p0, v2

    .line 22
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 24
    move-result-wide v3

    .line 27
    aput-wide v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return-object v1
    .line 33
.end method

.method public static splitIntArray(Ljava/lang/String;)[I
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-static {p0, v0}, Lcom/miui/maml/util/Utils;->splitIntArray(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public static splitIntArray(Ljava/lang/String;I)[I
    .locals 4

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v0, p0

    .line 5
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static splitStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "com.android.systemui"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    sget v1, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    .line 14
    const/4 v2, -0x2

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 21
    move-result v1

    .line 24
    sput v1, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    .line 25
    :cond_0
    if-eqz v0, :cond_1

    .line 27
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersFullPermission:I

    .line 29
    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {p0, p1, p2, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 41
    :goto_0
    return-void
    .line 44
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 2
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 9
    move-result v0

    .line 12
    sput v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 13
    :cond_0
    sget v0, Lcom/miui/maml/util/Utils;->sAcrossUsersPermission:I

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->UserHandle_CURRENT()Landroid/os/UserHandle;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {p0, p1, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Context_startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method public static stringToDouble(Ljava/lang/String;D)D
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    return-wide p1

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 5
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-wide p0

    .line 9
    :catch_0
    return-wide p1
    .line 10
.end method

.method public static traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 7
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 17
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 29
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    :cond_0
    check-cast v1, Lorg/w3c/dom/Element;

    .line 36
    invoke-interface {p2, v1}, Lcom/miui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    return-void
    .line 44
.end method

.method public static traverseXmlElementChildrenTags(Lorg/w3c/dom/Element;[Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 7
    move-result v1

    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 20
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 21
    move-result v3

    .line 24
    const/4 v4, 0x1

    .line 25
    if-ne v3, v4, :cond_1

    .line 26
    if-eqz p1, :cond_0

    .line 28
    invoke-static {p1, v2}, Lcom/miui/maml/util/Utils;->arrContains([Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    :cond_0
    check-cast v1, Lorg/w3c/dom/Element;

    .line 36
    invoke-interface {p2, v1}, Lcom/miui/maml/util/Utils$XmlTraverseListener;->onChild(Lorg/w3c/dom/Element;)V

    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    return-void
    .line 44
.end method

.method public static triggerGC()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 13
    return-void
    .line 16
.end method

.method public static writeDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    :try_start_0
    sget v0, Lmiuix/core/util/FileUtils;->$r8$clinit:I

    .line 9
    new-instance v0, Ljava/io/FileWriter;

    .line 11
    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 19
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 24
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 29
    :goto_0
    return-void
    .line 32
.end method
