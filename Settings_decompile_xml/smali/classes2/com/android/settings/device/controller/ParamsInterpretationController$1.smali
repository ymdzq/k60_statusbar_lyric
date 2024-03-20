.class Lcom/android/settings/device/controller/ParamsInterpretationController$1;
.super Ljava/lang/Object;
.source "ParamsInterpretationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/controller/ParamsInterpretationController;->syncMifenDeviceInfo(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/controller/ParamsInterpretationController;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/device/controller/ParamsInterpretationController;Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$1;->this$0:Lcom/android/settings/device/controller/ParamsInterpretationController;

    iput-object p2, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$1;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$1;->this$0:Lcom/android/settings/device/controller/ParamsInterpretationController;

    invoke-static {v0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->access$000(Lcom/android/settings/device/controller/ParamsInterpretationController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/device/controller/ParamsInterpretationController;->-$$Nest$mqueryRemoteMifenDeviceInfo(Lcom/android/settings/device/controller/ParamsInterpretationController;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/device/controller/ParamsInterpretationController;->-$$Nest$msaveDeviceInfo(Lcom/android/settings/device/controller/ParamsInterpretationController;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/android/settings/device/controller/ParamsInterpretationController$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/device/controller/ParamsInterpretationController$1$1;-><init>(Lcom/android/settings/device/controller/ParamsInterpretationController$1;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
