.class Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;
.super Ljava/lang/Object;
.source "MiuiMasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EsimStatusForDelete"
.end annotation


# instance fields
.field protected errorCode:I

.field protected extraMes:Ljava/lang/String;

.field protected needWifi:Z

.field protected success:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1461
    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->success:Z

    .line 1462
    iput-boolean v0, p0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->needWifi:Z

    return-void
.end method

.method public static errorStatus(ILjava/lang/String;)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;
    .locals 2

    .line 1472
    new-instance v0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    invoke-direct {v0}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;-><init>()V

    const/4 v1, 0x0

    .line 1473
    iput-boolean v1, v0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->success:Z

    .line 1474
    iput p0, v0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->errorCode:I

    .line 1475
    iput-object p1, v0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->extraMes:Ljava/lang/String;

    return-object v0
.end method

.method public static okStatus(Z)Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;
    .locals 2

    .line 1466
    new-instance v0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;

    invoke-direct {v0}, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;-><init>()V

    const/4 v1, 0x1

    .line 1467
    iput-boolean v1, v0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->success:Z

    .line 1468
    iput-boolean p0, v0, Lcom/android/settings/MiuiMasterClear$EsimStatusForDelete;->needWifi:Z

    return-object v0
.end method
