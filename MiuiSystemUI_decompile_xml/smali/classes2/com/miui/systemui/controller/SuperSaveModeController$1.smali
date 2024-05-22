.class public final Lcom/miui/systemui/controller/SuperSaveModeController$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/controller/SuperSaveModeController;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/SuperSaveModeController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/SuperSaveModeController$1;->this$0:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/controller/SuperSaveModeController$1;->this$0:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 2
    iget-object v0, p1, Lcom/miui/systemui/controller/SuperSaveModeController;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "power_supersave_mode_open"

    .line 10
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    move v2, v1

    .line 20
    :cond_0
    iput-boolean v2, p1, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "onChange: mSuperSaveModeOn = "

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/miui/systemui/controller/SuperSaveModeController$1;->this$0:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 30
    iget-boolean v0, v0, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 32
    const-string v2, "SuperSaveModeController"

    .line 34
    invoke-static {p1, v0, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/miui/systemui/controller/SuperSaveModeController$1;->this$0:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 39
    iget-object p1, p1, Lcom/miui/systemui/controller/SuperSaveModeController;->mMainHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;

    .line 43
    invoke-direct {v0, v1, p0}, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
    .line 51
.end method
