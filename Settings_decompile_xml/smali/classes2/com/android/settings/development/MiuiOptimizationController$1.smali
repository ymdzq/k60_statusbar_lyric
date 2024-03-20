.class Lcom/android/settings/development/MiuiOptimizationController$1;
.super Ljava/lang/Object;
.source "MiuiOptimizationController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/MiuiOptimizationController;->writeMiuiOptimizationOptions(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/MiuiOptimizationController;

.field final synthetic val$value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/android/settings/development/MiuiOptimizationController;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/android/settings/development/MiuiOptimizationController$1;->this$0:Lcom/android/settings/development/MiuiOptimizationController;

    iput-object p2, p0, Lcom/android/settings/development/MiuiOptimizationController$1;->val$value:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/android/settings/development/MiuiOptimizationController$1;->this$0:Lcom/android/settings/development/MiuiOptimizationController;

    iget-object p0, p0, Lcom/android/settings/development/MiuiOptimizationController$1;->val$value:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/settings/development/MiuiOptimizationController;->setChecked(Z)V

    return-void
.end method
