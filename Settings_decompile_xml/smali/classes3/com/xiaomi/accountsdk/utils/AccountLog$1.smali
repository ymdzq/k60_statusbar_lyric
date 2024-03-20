.class final Lcom/xiaomi/accountsdk/utils/AccountLog$1;
.super Lcom/xiaomi/accountsdk/utils/AccountLog;
.source "AccountLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/AccountLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;-><init>()V

    return-void
.end method


# virtual methods
.method public logD(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 45
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public logE(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 80
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public logI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 55
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public logV(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 35
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public logW(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 65
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
