.class public Lmiui/cloud/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/Constants$Analytics;,
        Lmiui/cloud/Constants$Intents;,
        Lmiui/cloud/Constants$UserData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CLOUDSERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.miui.cloudservice"

.field public static final ENABLE_ANALYTICS:Z = true

.field public static final SYNC_WITHOUT_ACTIVATE_SIM_INDEX:I = -0x1

.field public static final XIAOMI_ACCOUNT_TYPE:Ljava/lang/String; = "com.xiaomi"

.field public static final XMSF_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.xmsf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
