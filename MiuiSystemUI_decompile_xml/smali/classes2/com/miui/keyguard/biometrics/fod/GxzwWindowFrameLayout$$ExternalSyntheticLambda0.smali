.class public final synthetic Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;

    .line 8
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mAdded:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->addViewToWindow()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mAdded:Z

    .line 24
    if-nez v0, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->removeViewFromWindow()V

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 37
    :goto_1
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;

    .line 38
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mAdded:Z

    .line 40
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 44
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->addViewToWindow()V

    .line 50
    goto :goto_2

    .line 53
    :cond_2
    iget-boolean v0, p0, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->mAdded:Z

    .line 54
    if-nez v0, :cond_3

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 58
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/miui/keyguard/biometrics/fod/GxzwWindowFrameLayout;->removeViewFromWindow()V

    .line 64
    :cond_3
    :goto_2
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 68
.end method
