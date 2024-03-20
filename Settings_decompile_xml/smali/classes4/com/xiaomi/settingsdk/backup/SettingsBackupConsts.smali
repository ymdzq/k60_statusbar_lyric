.class public Lcom/xiaomi/settingsdk/backup/SettingsBackupConsts;
.super Ljava/lang/Object;
.source "SettingsBackupConsts.java"


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final SETTINGS_BACKUP_AUTHORITY:Ljava/lang/String; = "settings_backup"

.field public static final TAG:Ljava/lang/String; = "SettingsBackup"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
