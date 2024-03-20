.class Lcom/android/settings/device/controller/ParamsInterpretationController$1$1;
.super Ljava/lang/Object;
.source "ParamsInterpretationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/controller/ParamsInterpretationController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/device/controller/ParamsInterpretationController$1;


# direct methods
.method constructor <init>(Lcom/android/settings/device/controller/ParamsInterpretationController$1;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$1$1;->this$1:Lcom/android/settings/device/controller/ParamsInterpretationController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$1$1;->this$1:Lcom/android/settings/device/controller/ParamsInterpretationController$1;

    iget-object v0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$1;->this$0:Lcom/android/settings/device/controller/ParamsInterpretationController;

    iget-object p0, p0, Lcom/android/settings/device/controller/ParamsInterpretationController$1;->val$preference:Landroidx/preference/Preference;

    invoke-static {v0, p0}, Lcom/android/settings/device/controller/ParamsInterpretationController;->-$$Nest$mupdateUi(Lcom/android/settings/device/controller/ParamsInterpretationController;Landroidx/preference/Preference;)V

    return-void
.end method
