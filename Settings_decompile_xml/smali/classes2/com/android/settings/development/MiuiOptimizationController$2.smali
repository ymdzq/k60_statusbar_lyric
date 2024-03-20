.class Lcom/android/settings/development/MiuiOptimizationController$2;
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

    .line 142
    iput-object p1, p0, Lcom/android/settings/development/MiuiOptimizationController$2;->this$0:Lcom/android/settings/development/MiuiOptimizationController;

    iput-object p2, p0, Lcom/android/settings/development/MiuiOptimizationController$2;->val$value:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/android/settings/development/MiuiOptimizationController$2;->this$0:Lcom/android/settings/development/MiuiOptimizationController;

    iget-object p2, p0, Lcom/android/settings/development/MiuiOptimizationController$2;->val$value:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lcom/android/settings/development/MiuiOptimizationController;->-$$Nest$mpositiveClick(Lcom/android/settings/development/MiuiOptimizationController;Ljava/lang/Boolean;)V

    .line 146
    iget-object p0, p0, Lcom/android/settings/development/MiuiOptimizationController$2;->this$0:Lcom/android/settings/development/MiuiOptimizationController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/development/MiuiOptimizationController;->-$$Nest$fputmLastStatus(Lcom/android/settings/development/MiuiOptimizationController;Z)V

    return-void
.end method
