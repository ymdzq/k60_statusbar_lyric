.class public Lcom/android/settings/MiuiSecureFlagUtils;
.super Ljava/lang/Object;
.source "MiuiSecureFlagUtils.java"


# static fields
.field private static final IS_VAB_DEVICE:Z

.field private static final LAST_EXTENSION_PARAMETERS:Ljava/lang/String;

.field private static final LAST_EXTENSION_PARAMETERS_FILE:Ljava/io/File;

.field private static deleteFlag:Z

.field private static final paramsReadMap:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static paramsWriteMap:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.ab_update"

    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/MiuiSecureFlagUtils;->IS_VAB_DEVICE:Z

    if-eqz v0, :cond_0

    const-string v0, "/mnt/rescue/recovery/last_extension_parameters"

    goto :goto_0

    :cond_0
    const-string v0, "/cache/recovery/last_extension_parameters"

    .line 19
    :goto_0
    sput-object v0, Lcom/android/settings/MiuiSecureFlagUtils;->LAST_EXTENSION_PARAMETERS:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/settings/MiuiSecureFlagUtils;->LAST_EXTENSION_PARAMETERS_FILE:Ljava/io/File;

    .line 23
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSecureFlagUtils;->paramsReadMap:Landroid/util/ArraySet;

    .line 24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSecureFlagUtils;->paramsWriteMap:Landroid/util/ArraySet;

    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/android/settings/MiuiSecureFlagUtils;->deleteFlag:Z

    return-void
.end method

.method public static closeSecureFlag()V
    .locals 3

    .line 34
    sget-boolean v0, Lcom/android/settings/MiuiSecureFlagUtils;->deleteFlag:Z

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/android/settings/MiuiSecureFlagUtils;->LAST_EXTENSION_PARAMETERS_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiSecureFlagUtils;->LAST_EXTENSION_PARAMETERS_FILE:Ljava/io/File;

    invoke-static {v0}, Lcom/android/settings/MiuiSecureFlagUtils;->fileToStringSet(Ljava/io/File;)Landroid/util/ArraySet;

    .line 38
    sget-object v1, Lcom/android/settings/MiuiSecureFlagUtils;->paramsReadMap:Landroid/util/ArraySet;

    const-string/jumbo v2, "secure_password=1"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 39
    sput-object v1, Lcom/android/settings/MiuiSecureFlagUtils;->paramsWriteMap:Landroid/util/ArraySet;

    const-string/jumbo v2, "secure_password=0"

    .line 40
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {v0}, Lcom/android/settings/MiuiSecureFlagUtils;->stringSetToFile(Ljava/io/File;)Z

    .line 42
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    :goto_0
    return-void
.end method

.method private static fileToStringSet(Ljava/io/File;)Landroid/util/ArraySet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/android/settings/MiuiSecureFlagUtils;->serFilePermission(Ljava/io/File;)V

    .line 67
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 70
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 71
    sget-object v3, Lcom/android/settings/MiuiSecureFlagUtils;->paramsReadMap:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 73
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 76
    sget-object p0, Lcom/android/settings/MiuiSecureFlagUtils;->paramsReadMap:Landroid/util/ArraySet;

    return-object p0

    :catchall_0
    move-exception v2

    .line 67
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_6
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    return-object v0
.end method

.method public static openSecureFlag()V
    .locals 3

    .line 50
    sget-boolean v0, Lcom/android/settings/MiuiSecureFlagUtils;->deleteFlag:Z

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/android/settings/MiuiSecureFlagUtils;->LAST_EXTENSION_PARAMETERS_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiSecureFlagUtils;->LAST_EXTENSION_PARAMETERS_FILE:Ljava/io/File;

    invoke-static {v0}, Lcom/android/settings/MiuiSecureFlagUtils;->fileToStringSet(Ljava/io/File;)Landroid/util/ArraySet;

    .line 54
    sget-object v1, Lcom/android/settings/MiuiSecureFlagUtils;->paramsReadMap:Landroid/util/ArraySet;

    const-string/jumbo v2, "secure_password=0"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 55
    sput-object v1, Lcom/android/settings/MiuiSecureFlagUtils;->paramsWriteMap:Landroid/util/ArraySet;

    const-string/jumbo v2, "secure_password=1"

    .line 56
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v0}, Lcom/android/settings/MiuiSecureFlagUtils;->stringSetToFile(Ljava/io/File;)Z

    .line 58
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    :goto_0
    return-void
.end method

.method private static serFilePermission(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 107
    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    return-void
.end method

.method private static stringSetToFile(Ljava/io/File;)Z
    .locals 6

    .line 80
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 83
    invoke-static {p0}, Lcom/android/settings/MiuiSecureFlagUtils;->serFilePermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 88
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :try_start_2
    new-instance p0, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {p0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 90
    :try_start_3
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 91
    :try_start_4
    sget-object v3, Lcom/android/settings/MiuiSecureFlagUtils;->paramsWriteMap:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 99
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    return v0

    :cond_1
    move v3, v0

    .line 94
    :goto_1
    :try_start_8
    sget-object v5, Lcom/android/settings/MiuiSecureFlagUtils;->paramsWriteMap:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 95
    sget-object v5, Lcom/android/settings/MiuiSecureFlagUtils;->paramsWriteMap:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 96
    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_2
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    return v4

    :catchall_0
    move-exception v3

    .line 88
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_d
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_e
    invoke-virtual {p0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    :try_start_f
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception p0

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v1

    :try_start_11
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1

    :catch_1
    return v0
.end method
