.class public final synthetic Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/charge/MiuiChargeController;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/MiuiChargeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda1;->f$0:Lcom/miui/charge/MiuiChargeController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda1;->f$0:Lcom/miui/charge/MiuiChargeController;

    .line 2
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-boolean p0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    .line 8
    if-nez p0, :cond_0

    .line 10
    const-string p0, "onStartedWakingUp"

    .line 12
    invoke-virtual {v0, p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->removeChargeView(Ljava/lang/String;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
