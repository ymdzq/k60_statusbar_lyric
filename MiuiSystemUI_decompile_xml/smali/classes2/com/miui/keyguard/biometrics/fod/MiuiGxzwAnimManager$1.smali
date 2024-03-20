.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    .line 1
    sget-boolean p1, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    const/16 p1, 0x8

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x6

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 10
    iget-object v0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mAnimItemMap:Ljava/util/Map;

    .line 12
    check-cast v0, Ljava/util/HashMap;

    .line 14
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 20
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v1

    .line 27
    const-string v2, "fod_animation_type"

    .line 28
    const/4 v3, 0x0

    .line 30
    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 31
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 38
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    goto :goto_1

    .line 45
    :cond_1
    move p1, v1

    .line 46
    :goto_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;

    .line 47
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 49
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const-string p1, "MiuiGxzwFrameAnimation"

    .line 56
    const-string v0, "clearRecognizingAnim"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 65
    return-void
    .line 68
.end method
