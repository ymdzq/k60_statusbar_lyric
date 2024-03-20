.class public Lcom/android/settings/backup/Customization;
.super Ljava/lang/Object;
.source "Customization.java"


# static fields
.field public static final DATA_SYSTEM_PARTITION:[Lcom/android/settings/backup/SystemData;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 14
    new-instance v0, Lcom/android/settings/backup/SystemData;

    const-string v1, ""

    const-string v2, "gesture.key"

    const-string v3, "/data/system/gesture.key"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/android/settings/backup/SystemData;

    const-string/jumbo v3, "password.key"

    const-string v5, "/data/system/password.key"

    invoke-direct {v2, v1, v3, v5, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v6, Lcom/android/settings/backup/SystemData;

    invoke-direct {v6, v1, v3, v5, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Lcom/android/settings/backup/SystemData;

    const-string/jumbo v5, "netpolicy.xml"

    const-string v7, "/data/system/netpolicy.xml"

    invoke-direct {v3, v1, v5, v7, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Lcom/android/settings/backup/SystemData;

    const-string/jumbo v7, "netstats.bin"

    const-string v8, "/data/system/netstats.bin"

    invoke-direct {v5, v1, v7, v8, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v7, Lcom/android/settings/backup/SystemData;

    const-string/jumbo v8, "netstats_uid.bin"

    const-string v9, "/data/system/netstats_uid.bin"

    invoke-direct {v7, v1, v8, v9, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v8, Lcom/android/settings/backup/SystemData;

    const-string/jumbo v9, "netstats_xt.bin"

    const-string v10, "/data/system/netstats_xt.bin"

    invoke-direct {v8, v1, v9, v10, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v9, Lcom/android/settings/backup/SystemData;

    const-string v10, "access_control.key"

    const-string v11, "/data/system/access_control.key"

    invoke-direct {v9, v1, v10, v11, v4}, Lcom/android/settings/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    move-object v2, v6

    move-object v4, v5

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    filled-new-array/range {v0 .. v7}, [Lcom/android/settings/backup/SystemData;

    move-result-object v0

    sput-object v0, Lcom/android/settings/backup/Customization;->DATA_SYSTEM_PARTITION:[Lcom/android/settings/backup/SystemData;

    return-void
.end method
