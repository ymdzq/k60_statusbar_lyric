.class Lcom/android/settings/MiuiMasterClearApplyActivity$1;
.super Landroid/os/Handler;
.source "MiuiMasterClearApplyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiMasterClearApplyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiMasterClearApplyActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiMasterClearApplyActivity;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity$1;->this$0:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity$1;->this$0:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClearApplyActivity;->-$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result p1

    if-lez p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/settings/MiuiMasterClearApplyActivity$1;->this$0:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {p1}, Lcom/android/settings/MiuiMasterClearApplyActivity;->-$$Nest$fgetmAutoNextStepTime(Lcom/android/settings/MiuiMasterClearApplyActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->-$$Nest$fputmAutoNextStepTime(Lcom/android/settings/MiuiMasterClearApplyActivity;I)V

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiMasterClearApplyActivity$1;->this$0:Lcom/android/settings/MiuiMasterClearApplyActivity;

    invoke-static {p0}, Lcom/android/settings/MiuiMasterClearApplyActivity;->-$$Nest$mupdateAcceptButtonStatus(Lcom/android/settings/MiuiMasterClearApplyActivity;)V

    return-void
.end method
