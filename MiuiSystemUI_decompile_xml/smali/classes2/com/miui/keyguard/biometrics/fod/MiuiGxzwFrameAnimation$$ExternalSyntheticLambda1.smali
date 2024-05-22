.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

.field public final synthetic f$1:[I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda1;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 5
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda1;->f$1:[I

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda1;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 2
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda1;->f$1:[I

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    aget v2, p0, v1

    .line 13
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->decodeBitmap(IZ)Landroid/graphics/Bitmap;

    .line 16
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 20
    iget-object v3, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 27
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method
