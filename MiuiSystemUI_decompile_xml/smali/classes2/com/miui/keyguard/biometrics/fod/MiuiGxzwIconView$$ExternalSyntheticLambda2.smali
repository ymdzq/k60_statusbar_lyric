.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda2;->f$0:Z

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwIconView$$ExternalSyntheticLambda2;->f$0:Z

    .line 2
    xor-int/lit8 p0, p0, 0x1

    .line 4
    const/16 v0, 0xa

    .line 6
    invoke-static {v0, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->setTouchMode(II)V

    .line 8
    return-void
    .line 11
.end method
