.class public Lmiuix/os/Environment;
.super Landroid/os/Environment;
.source "Environment.java"


# static fields
.field private static EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

.field private static final MIUI_APP_DIRECTORY:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

.field private static final MIUI_DATA_DIRECTORY:Ljava/io/File;

.field private static final MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

.field private static sCpuCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_APP_DIRECTORY:Ljava/io/File;

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "preset_apps"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_PRESET_APP_DIRECTORY:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiuix/os/Environment;->getMiuiDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "current"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->MIUI_CUSTOMIZED_DIRECTORY:Ljava/io/File;

    const/4 v0, 0x0

    .line 80
    sput v0, Lmiuix/os/Environment;->sCpuCount:I

    return-void
.end method

.method public static getExternalStorageMiuiDirectory()Ljava/io/File;
    .locals 3

    .line 38
    :try_start_0
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/File;

    .line 40
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "MIUI"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 52
    :cond_1
    sget-object v0, Lmiuix/os/Environment;->EXTERNAL_STORAGE_MIUI_DIRECTORY:Ljava/io/File;

    return-object v0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMiuiDataDirectory()Ljava/io/File;
    .locals 1

    .line 57
    sget-object v0, Lmiuix/os/Environment;->MIUI_DATA_DIRECTORY:Ljava/io/File;

    return-object v0
.end method
