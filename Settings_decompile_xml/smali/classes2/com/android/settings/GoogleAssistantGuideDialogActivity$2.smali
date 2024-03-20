.class Lcom/android/settings/GoogleAssistantGuideDialogActivity$2;
.super Ljava/lang/Object;
.source "GoogleAssistantGuideDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GoogleAssistantGuideDialogActivity;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GoogleAssistantGuideDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/GoogleAssistantGuideDialogActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/GoogleAssistantGuideDialogActivity$2;->this$0:Lcom/android/settings/GoogleAssistantGuideDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/GoogleAssistantGuideDialogActivity$2;->this$0:Lcom/android/settings/GoogleAssistantGuideDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
