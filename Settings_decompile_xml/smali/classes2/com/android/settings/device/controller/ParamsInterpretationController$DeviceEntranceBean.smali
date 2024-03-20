.class public Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;
.super Ljava/lang/Object;
.source "ParamsInterpretationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/controller/ParamsInterpretationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceEntranceBean"
.end annotation


# instance fields
.field public h5Url:Ljava/lang/String;

.field public mioUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupport()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->mioUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$DeviceEntranceBean;->h5Url:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

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
