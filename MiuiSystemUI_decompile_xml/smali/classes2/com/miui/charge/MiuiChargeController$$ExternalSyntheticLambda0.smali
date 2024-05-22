.class public final synthetic Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/charge/MiuiChargeController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/MiuiChargeController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/charge/MiuiChargeController;

    .line 5
    iput-object p2, p0, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;->f$0:Lcom/miui/charge/MiuiChargeController;

    .line 2
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->startDismiss(Ljava/lang/String;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
