.class public Lcom/android/settings/bluetooth/tws/MiuiHeadsetOta;
.super Ljava/lang/Object;
.source "MiuiHeadsetOta.java"


# static fields
.field private static final ids:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "01011406"

    .line 9
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetOta;->ids:[Ljava/lang/String;

    return-void
.end method

.method public static isNewOtaSever(Ljava/lang/String;)Z
    .locals 1

    .line 13
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/tws/MiuiHeadsetOta;->ids:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
